/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverResult;
import org.gravy.report.InfeasibleReport;
import org.gravy.report.Report;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.util.Statistics;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.JodTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 * 
 */
public class JodChecker extends AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public JodChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);

		System.err.println("prune unreachable");

		// p.toDot("./"+p.getProcedureName()+".dot");

		p.pruneUnreachableBlocks();

		// p.toDot("./"+p.getProcedureName()+".dot");

		System.err.println("remove calls");

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		System.err.println("unwind loops");
		AbstractLoopUnwinding.unwindeLoops(p);
		p.pruneUnreachableBlocks();

		System.err.println("ssa");
//		 p.toFile("./"+p.getProcedureName()+".bpl");

		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.computeSSA(p);

		System.err.println("prune again");
		p.pruneUnreachableBlocks();

		System.err.println("done");

//		p.toFile("./"+p.getProcedureName()+".bpl");
//		p.toDot("./"+p.getProcedureName()+"_lf.dot");
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org
	 * .gravy.prover.Prover,
	 * org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public Report checkSat(Prover prover, AbstractTransitionRelation atr) {
		JodTransitionRelation tr = (JodTransitionRelation) atr;

		Statistics.HACK_effectualSetSize = tr.getEffectualSet().size();

		HashSet<BasicBlock> allBlocks = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());

		// now exclude all feasible paths that may violate the postcondition
		// compute the feasible path cover under the given postcondition
		try {
			feasibleBlocks = new HashSet<BasicBlock>(computeJodCover(prover, tr, allBlocks));
		} catch (Throwable e) {
			e.printStackTrace();
			throw e;
		}
		allBlocks.removeAll(feasibleBlocks);

		// this set is empty for infeasible code detection.
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>();

		infeasibleBlocks = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());
		infeasibleBlocks.removeAll(feasibleBlocks);

		return new InfeasibleReport(this.cff, atr, this.feasibleBlocks, this.infeasibleBlocks);
	}

	/**
	 * This is the main loop that uses our Joins-on-Demand algorithm to cover
	 * the CFG
	 * 
	 * @param prover
	 *            : instance of the prover
	 * @param tr
	 *            : the transition relation object containing the ProverExpr for
	 *            all BasicBlocks
	 * @param allBlocks
	 *            : all reachable BasicBlocks in the procedure.
	 * @return The set of all BasicBlocks that occur on feasible paths
	 */
	protected Collection<BasicBlock> computeJodCover(Prover prover, JodTransitionRelation tr, HashSet<BasicBlock> allBlocks) {

		HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>();

		// add the basic prelude stuff that is needed for every check.
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		prover.addAssertion(tr.getRequires());
		prover.addAssertion(tr.getEnsures());

		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		todo.addAll(allBlocks);

		while (!todo.isEmpty()) {

			// The node to cover next
			System.err.println("Total blocks to cover: " + todo.size());

			// Try to cover onemore block
			HashSet<BasicBlock> satPath = getFeasiblePath(prover, tr, allBlocks);

			if (satPath != null) {
				System.err.println("Found path of length " + satPath.size());

				// Remove from todos
				todo.removeAll(satPath);
				// Add to coverede
				coveredBlocks.addAll(satPath);

				// Add a blocking clause
				ProverExpr[] conjuncts = new ProverExpr[satPath.size()];
				int i = 0;
				for (BasicBlock n : satPath) {
					conjuncts[i++] = tr.getReachabilityVariables().get(n);
				}
				ProverExpr blockingClause = prover.mkNot(prover.mkAnd(conjuncts));
				System.err.println("Blocking " + blockingClause);
				prover.addAssertion(blockingClause);
			} else {
				// No more feasible paths
			    todo.clear();
			}

		}
		
		return coveredBlocks;
	}

	/**
	 * Tries to find one more feasible path. Returns a path if there is one, or null otherwise.
	 * @allPaths all possible paths
	 */
	private HashSet<BasicBlock> getFeasiblePath(Prover prover, JodTransitionRelation tr, HashSet<BasicBlock> allPaths) {

		ProverResult res = null;
		HashSet<BasicBlock> paths = new HashSet<BasicBlock>();
		
		// Try abstract paths in succession until one is found
		while (true) {

			// Check the abstraction path
			prover.push();
			assertPaths(prover, tr, paths, allPaths);
			System.err.println("checking abstraction");
			res = prover.checkSat(true);
			System.err.println("abstraction: " + res);

			if (res == ProverResult.Sat) {
				// The extension path
				HashSet<BasicBlock> satPath = getPathFromModel(prover, tr, allPaths);
				// Pop the prover
				prover.pop();
				// Add the concrete
				paths.addAll(satPath);
			} else if (res == ProverResult.Unsat){
				// Pop the solver
				prover.pop();
				// Done, infeasible
				return null;
			} else {
				// God knows what happened
				throw new RuntimeException("Prover failed with " + res);
			}
			
			// Check the current path
			prover.push();
			assertPaths(prover, tr, paths, paths);
			System.err.println("checking concrete");
			res = prover.checkSat(true);
			System.err.println("concrete: " + res);
			
			if (res == ProverResult.Sat) {
				// Satisfiable -> concrete path				
				HashSet<BasicBlock> satPath = getPathFromModel(prover, tr, paths);
				// Pop the solver
				prover.pop();
				// Return
				return satPath;
			} else if (res == ProverResult.Unsat) {
				// Pop the solver
				prover.pop();
				// Unsatisfiable -> try extending, unless it's already full
				if (paths.contains(allPaths)) {
					return null;
				}
			} else {
				// God knows what happened
				throw new RuntimeException("Prover failed with " + res);
			}
		}
	}

	/**
	 * Creates the assertions for princess. It assumes that all blocks in paths
	 * are connected.
	 * 
	 * @param prover
	 * @param tr
	 * @param paths
	 */
	private void assertPaths(Prover prover, JodTransitionRelation tr,
			HashSet<BasicBlock> paths, HashSet<BasicBlock> allPaths) {

		// Encode each block
		for (BasicBlock block : allPaths) {
			
			// Get the successors of the block
			LinkedList<BasicBlock> successors = new LinkedList<BasicBlock>();
			for (BasicBlock succ : block.getSuccessors()) {
				if (allPaths.contains(succ)) {
					successors.add(succ);
				} 
			}
			
			// Construct the disjunction of the successors
			ProverExpr next;
			if (successors.size() == 0) {
				next = prover.mkLiteral(true);
			} else if (successors.size() == 1) {
				next = tr.getReachabilityVariables().get(successors.getFirst());
			} else {
				ProverExpr[] disj = new ProverExpr[successors.size()];
				int i = 0;
				for (BasicBlock n : successors) {
					disj[i++] = tr.getReachabilityVariables().get(n);
				}
				next = prover.mkOr(disj);
			}
			
			// Make the assertion
			ProverExpr assertion = null;
			if (paths.contains(block)) {
				assertion = prover.mkImplies(
						tr.getReachabilityVariables().get(block), 
						prover.mkAnd(tr.blockTransitionReleations.get(block), next)
					);
			} else {
				assertion = prover.mkImplies(tr.getReachabilityVariables().get(block), next);	
			}
			
			// Assert it
			prover.addAssertion(assertion);
		}
		prover.addAssertion(tr.getReachabilityVariables().get(tr.getProcedure().getRootNode()));
	}


	/**
	 * Get a complete and feasible path from the model produced by princes.
	 * 
	 * @param prover
	 * @param tr
	 * @return
	 */
	private HashSet<BasicBlock> getPathFromModel(Prover prover,
			JodTransitionRelation tr, HashSet<BasicBlock> currentPaths) {
		LinkedList<BasicBlock> path = new LinkedList<BasicBlock>();

		HashSet<BasicBlock> blocksInModel = new HashSet<BasicBlock>();

		for (BasicBlock b : currentPaths) {
			final ProverExpr pe = tr.getReachabilityVariables().get(b);
			if (prover.evaluate(pe).getBooleanLiteralValue()) {
				blocksInModel.add(b);
			}
		}

		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		todo.add(tr.getProcedure().getRootNode());
		BasicBlock current = null;
		while (!todo.isEmpty()) {
			current = todo.pop();
			if (blocksInModel.contains(current)) {
				path.add(current);
				for (BasicBlock b : current.getSuccessors()) {
					if (!done.contains(b) && !todo.contains(b)
							&& blocksInModel.contains(b)) {
						todo.push(b);
						break;
					}
				}
			} else {
				throw new RuntimeException("Bug! " + current.getLabel());
			}
		}
		// sanity check the the path is a complete path
		if (current != tr.getProcedure().getExitNode()) {
			throw new RuntimeException(
					"Model does not contain a complete path!");
		}
		return new HashSet<BasicBlock>(path);
	}

}
