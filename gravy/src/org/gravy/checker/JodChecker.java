/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashMap;
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
//     	p.toDot("./"+p.getProcedureName()+"_lf.dot");
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
			feasibleBlocks = new HashSet<BasicBlock>(computeJodCover(tr, allBlocks));
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
	 * Make a disjunction out of the given blocks.
	 * @param tr the transition relation
	 * @param blocks the blocks 
	 * @return disjunction
	 */
	protected ProverExpr mkDisjunction(JodTransitionRelation tr, Collection<BasicBlock> blocks) {
		ProverExpr[] disjuncts = new ProverExpr[blocks.size()];
		int i = 0;
		for (BasicBlock n : blocks) {
			disjuncts[i++] = tr.getReachabilityVariables().get(n);
		}
		if (disjuncts.length == 1) {
			return disjuncts[0];
		} else {
			return prover.mkOr(disjuncts);
		}
	}

	/**
	 * Make a conjunction out of the given blocks.
	 * @param tr the transition relation
	 * @param blocks the blocks 
	 * @return disjunction
	 */
	protected ProverExpr mkConjunction(JodTransitionRelation tr, Collection<BasicBlock> blocks) {
		ProverExpr[] conjuncts = new ProverExpr[blocks.size()];
		int i = 0;
		for (BasicBlock n : blocks) {
			conjuncts[i++] = tr.getReachabilityVariables().get(n);
		}
		if (conjuncts.length == 1) {
			return conjuncts[0];
		} else {
			return prover.mkAnd(conjuncts);
		}
	}

	/**
	 * Make a conjunction out of the given blocks.
	 * @param tr the transition relation
	 * @param blocks the blocks 
	 * @return disjunction
	 */
	protected ProverExpr mkConjunction(Collection<ProverExpr> input) {
		ProverExpr[] conjuncts = new ProverExpr[input.size()];
		conjuncts = input.toArray(conjuncts);
		if (conjuncts.length == 1) {
			return conjuncts[0];
		} else {  
			return prover.mkAnd(conjuncts);
		}
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
	protected Collection<BasicBlock> computeJodCover(JodTransitionRelation tr, HashSet<BasicBlock> allBlocks) {

		HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>();

		// add the basic prelude stuff that is needed for every check.
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		prover.addAssertion(tr.getRequires());
		prover.addAssertion(tr.getEnsures());

		HashSet<BasicBlock> todo = new HashSet<BasicBlock>();
		todo.addAll(allBlocks);

		// We check in chunks of 10
		while (!todo.isEmpty()) {

			System.err.println("Total blocks to cover: " + todo.size());

			// Try to cover one more block
			HashSet<BasicBlock> satPath = getFeasiblePath(tr, allBlocks, todo);
			
			if (satPath != null) {
				System.err.println("Found path of length " + satPath.size());

				// Remove from todos
				int oldSize = todo.size();
				todo.removeAll(satPath);
				if (oldSize == todo.size()) {
					throw new RuntimeException("New path did not eliminate a block");
				}
				
				// Add to covered
				coveredBlocks.addAll(satPath);
			} else {
				// No feasible paths in chunk
			    todo.clear();
			}

		}
		
		return coveredBlocks;
	}

	/**
	 * Tries to find one more feasible path. Returns a path if there is one, or null otherwise.
	 * @allPaths all possible paths
	 */
	private HashSet<BasicBlock> getFeasiblePath(JodTransitionRelation tr, HashSet<BasicBlock> allBlocks, HashSet<BasicBlock> blocksToCover) {
		
		ProverResult res = null;
		HashSet<BasicBlock> paths = new HashSet<BasicBlock>();
				
		// Try abstract paths in succession until one is found
		while (true) {

			// Check the abstraction path
			prover.push();
			assertPaths(prover, tr, paths, allBlocks, blocksToCover);
			System.err.println("checking abstraction");
			res = prover.checkSat(true);
			System.err.println("abstraction: " + res);

			if (res == ProverResult.Sat) {
				// The extension path
				HashSet<BasicBlock> satPath = getPathFromModel(prover, tr, allBlocks, blocksToCover);
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
			
			// Check the current concrete paths
			prover.push();
			assertPaths(prover, tr, paths, paths, blocksToCover);
			System.err.println("checking concrete");
			res = prover.checkSat(true);
			System.err.println("concrete: " + res);
			
			if (res == ProverResult.Sat) {
				// Satisfiable -> concrete path				
				HashSet<BasicBlock> satPath = getPathFromModel(prover, tr, paths, blocksToCover);
				// Pop the solver
				prover.pop();
				// Return
				return satPath;
			} else if (res == ProverResult.Unsat) {
				// Pop the solver
				prover.pop();
				// Unsatisfiable -> try extending, unless it's already full
				if (paths.contains(allBlocks)) {
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
	 * @param concreteBlocks
	 */
	private void assertPaths(Prover prover, JodTransitionRelation tr, HashSet<BasicBlock> concreteBlocks, HashSet<BasicBlock> allBlocks, HashSet<BasicBlock> necessaryBlocks) {

		// Encode each block
		for (BasicBlock block : allBlocks) {
			
			// Expression for the block
			ProverExpr blockVar = tr.getReachabilityVariables().get(block);
			
			// Constrain path to go through successors
			HashSet<BasicBlock> successors = new HashSet<BasicBlock>(block.getSuccessors());
			successors.retainAll(allBlocks);
			if (successors.size() > 0) {
				prover.addAssertion(prover.mkImplies(blockVar, mkDisjunction(tr, successors)));
			}
			
			// Constrain path to go through predecessors
			HashSet<BasicBlock> predecessors = new HashSet<BasicBlock>(block.getPredecessors());
			predecessors.retainAll(allBlocks);
			if (predecessors.size() > 0) {
				prover.addAssertion(prover.mkImplies(blockVar, mkDisjunction(tr, predecessors)));				
			}
			
			// Make the body
			if (concreteBlocks.contains(block)) {
				prover.addAssertion(prover.mkImplies(blockVar, tr.blockTransitionReleations.get(block)));
			} 
		}

		if (necessaryBlocks != null) {
			HashSet<BasicBlock> selection = new HashSet<BasicBlock>(necessaryBlocks);
			selection.retainAll(allBlocks);
			prover.addAssertion(mkDisjunction(tr, selection));
		}
		
		// Start from the root node
		prover.addAssertion(tr.getReachabilityVariables().get(tr.getProcedure().getRootNode()));
	}

	/**
	 * Get a path from node to node, through successors.
	 */
	private LinkedList<BasicBlock> getPath(JodTransitionRelation tr, BasicBlock start, BasicBlock end, HashSet<BasicBlock> vertices) {

		if (!vertices.contains(start)) {
			throw new RuntimeException("Don't mess with me!");
		}

		if (!vertices.contains(end)) {
			throw new RuntimeException("Don't mess with me!");
		}

		// Result list 
		LinkedList<BasicBlock> result = new LinkedList<BasicBlock>();

		// Trivial case
		if (start == end) {
			result.push(start);
			return result;
		}
		
		// Map from nodes to their predecessors in the paths
		HashMap<BasicBlock, BasicBlock> pathMap = new HashMap<BasicBlock, BasicBlock>();
				
		// Compute the paths
		LinkedList<BasicBlock> queue = new LinkedList<BasicBlock>();
		queue.addFirst(start);
		boolean done = false;
		while (!done && !queue.isEmpty()) {
			BasicBlock current = queue.removeFirst();
			for (BasicBlock succ : current.getSuccessors()) {
				if (vertices.contains(succ) && !pathMap.containsKey(succ)) {
					pathMap.put(succ, current);
					queue.addLast(succ);
					if (succ == end) {
						done = true;
						break;
					}
				}
			}
		}
		
		// Construct the one path from start to end
		if (pathMap.containsKey(end)) {
			BasicBlock current = end;
			result.push(current);
			while (pathMap.containsKey(current)) {
				current = pathMap.get(current);
				result.push(current);
			}
			return result;		
		} else {
			return null;
		}
	}
	
	/**
	 * Get a complete and feasible path from the model produced by princes.
	 * 
	 * @param prover
	 * @param tr
	 * @param necessaryNodes one of these nodes needs to be in the path
	 * @return
	 */
	private HashSet<BasicBlock> getPathFromModel(Prover prover, JodTransitionRelation tr, HashSet<BasicBlock> allBlocks, HashSet<BasicBlock> necessaryNodes) {
		
		// Blocks selected by the model 
		HashSet<BasicBlock> enabledBlocks = new HashSet<BasicBlock>();
		for (BasicBlock b : allBlocks) {
			final ProverExpr pe = tr.getReachabilityVariables().get(b);
			if (prover.evaluate(pe).getBooleanLiteralValue()) {
				enabledBlocks.add(b);
			}
		}

		for (BasicBlock block : necessaryNodes) {
			if (enabledBlocks.contains(block)) {
				// Get the path from block to the exit
				LinkedList<BasicBlock> blockToExit = getPath(tr, block, tr.getProcedure().getExitNode(), enabledBlocks);
				if (blockToExit != null) {
					// Get the path from root to the block
					LinkedList<BasicBlock> rootToBlock = getPath(tr, tr.getProcedure().getRootNode(), block, enabledBlocks);
					if (rootToBlock != null) {
						// We got a full path
						HashSet<BasicBlock> result = new HashSet<BasicBlock>();
						result.addAll(rootToBlock);
						result.addAll(blockToExit);
						return result;
					}
				}
			}
		}
		
		System.err.println("Necessary");
		for (BasicBlock block : necessaryNodes) {
			System.err.println(block.getLabel());
		}
		
		// Screwed
		toDot("path_error.dot", allBlocks, enabledBlocks, necessaryNodes);
		throw new RuntimeException("Could not find a path");
	}
	
}
