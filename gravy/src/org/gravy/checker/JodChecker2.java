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
import boogie.controlflow.util.PartialBlockOrderNode;

/**
 * @author schaef
 * 
 */
public class JodChecker2 extends AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public JodChecker2(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);

		//System.err.println("prune unreachable");

		// p.toDot("./"+p.getProcedureName()+".dot");

		p.pruneUnreachableBlocks();

		// p.toDot("./"+p.getProcedureName()+".dot");

		//System.err.println("remove calls");

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		//System.err.println("unwind loops");
		AbstractLoopUnwinding.unwindeLoops(p);
		p.pruneUnreachableBlocks();

		//System.err.println("ssa");
//		 p.toFile("./"+p.getProcedureName()+".bpl");

		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.computeSSA(p);

		//System.err.println("prune again");
		p.pruneUnreachableBlocks();

		//System.err.println("done");

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

		HashSet<BasicBlock> blocks2cover = new HashSet<BasicBlock>(tr
				.getReachabilityVariables().keySet());

		// now exclude all feasible paths that may violate the postcondition
		// compute the feasible path cover under the given postcondition
		try {
			feasibleBlocks = new HashSet<BasicBlock>(computeJodCover(prover,
					tr, blocks2cover));
		} catch (Throwable e) {
			e.printStackTrace();
			throw e;
		}
		blocks2cover.removeAll(feasibleBlocks);

		// this set is empty for infeasible code detection.
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>();

		infeasibleBlocks = new HashSet<BasicBlock>(tr
				.getReachabilityVariables().keySet());
		infeasibleBlocks.removeAll(feasibleBlocks);

//		 return new InterpolationInfeasibleReport(this.cff, atr,
//		 this.feasibleBlocks, this.infeasibleBlocks);
		return new InfeasibleReport(this.cff, atr, this.feasibleBlocks,
				this.infeasibleBlocks);
	}


	protected Collection<BasicBlock> computeJodCover(Prover prover,
			JodTransitionRelation tr, HashSet<BasicBlock> blocks2cover) {

		HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>();

		// add the basic prelude stuff that is needed for every check.
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms()
				.entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		prover.addAssertion(tr.getRequires());
		prover.addAssertion(tr.getEnsures());

		PartialBlockOrderNode poRoot = tr.getHasseDiagram().getRoot();
		coveredBlocks.addAll(foo(prover, tr, poRoot, 0));
		

		return coveredBlocks;
	}
	
	/**
	 * Check subprogram
	 * @param prover
	 * @param tr
	 * @param node
	 * @return
	 */
	protected HashSet<BasicBlock> foo(Prover prover, JodTransitionRelation tr, PartialBlockOrderNode node, int depth) {
		//to subprogram that we want to check.
		HashSet<BasicBlock> toCheck = new HashSet<BasicBlock>();
		HashSet<BasicBlock> covered = new HashSet<BasicBlock>();
		for (PartialBlockOrderNode child : node.getSuccessors()) {
			//if the child node is feasible include his 
			//elements in the set of blocks that need to be
			//checked.
			
			toCheck.addAll(foo(prover, tr, child, depth+1));
		}
		toCheck.addAll(node.getElements());
		prover.push();
		assertPaths(prover, tr, toCheck);
		//System.err.println("checking subprog depths "+depth);
		ProverResult res = prover.checkSat(true);
		
		while (true) {
			if (res == ProverResult.Sat) {
				//System.err.println("SAT");
				HashSet<BasicBlock> feasiblePath = getPathFromModel(prover, tr, toCheck);
				//System.err.println("covered "+feasiblePath.size() + " of "+toCheck.size());
				covered.addAll(feasiblePath);
				//now add a blocking clause.
				ProverExpr[] blocking = new ProverExpr[feasiblePath.size()];
				int i=0;
				for (BasicBlock b : feasiblePath) {
					blocking[i++] = tr.getReachabilityVariables().get(b);
				}				
				prover.addAssertion(prover.mkNot(prover.mkAnd(blocking)));				
			} else if (res == ProverResult.Unsat){
				//System.err.println("UNSAT");
				break;
			} else {
				// God knows what happened
				throw new RuntimeException("Prover failed with " + res);
			}
			//System.err.println("checking subprog again");
			res = prover.checkSat(true);
		}
		prover.pop();
		return covered;
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
			HashSet<BasicBlock> blocks) {

		// Encode each block
		for (BasicBlock block : blocks) {
			
			// Get the successors of the block
			LinkedList<BasicBlock> successors = new LinkedList<BasicBlock>();
			for (BasicBlock succ : block.getSuccessors()) {
				if (blocks.contains(succ)) {
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
			ProverExpr assertion = prover.mkEq(
					tr.getReachabilityVariables().get(block), 
					prover.mkAnd(tr.blockTransitionReleations.get(block), next)
				);
			
			// Assert it
			prover.addAssertion(assertion);
		}

		//find all entry points to the subprogram and assert that their  
		//block var needs to be true
		int count=0;
		for (BasicBlock block : blocks) {
			boolean hasPreInBlocks = false;
			for (BasicBlock pre : block.getPredecessors()) {
				if (blocks.contains(pre)) {
					hasPreInBlocks = true; break;
				}
			}
			if (!hasPreInBlocks) {
				count++;
				prover.addAssertion(tr.getReachabilityVariables().get(block));
			}
		}
		//System.err.println("Entries "+count);
	}



	/**
	 * Get a complete and feasible path from the model produced by princes.
	 * 
	 * @param prover
	 * @param tr
	 * @return
	 */
	protected HashSet<BasicBlock> getPathFromModel(Prover prover,
			JodTransitionRelation tr, HashSet<BasicBlock> currentPaths) {
		LinkedList<BasicBlock> path = new LinkedList<BasicBlock>();

		HashSet<BasicBlock> blocksInModel = new HashSet<BasicBlock>();

		for (BasicBlock b : currentPaths) {
			final ProverExpr pe = tr.getReachabilityVariables().get(b);
			if (prover.evaluate(pe).getBooleanLiteralValue()) {
				blocksInModel.add(b);
			}
		}

		
		for (BasicBlock block : currentPaths) {
			boolean hasPreInBlocks = false;
			for (BasicBlock pre : block.getPredecessors()) {
				if (currentPaths.contains(pre)) {
					hasPreInBlocks = true; break;
				}
			}
			if (!hasPreInBlocks) {
				LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
				HashSet<BasicBlock> done = new HashSet<BasicBlock>();

				todo.add(block);
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
//						throw new RuntimeException("Bug! " + current.getLabel());
					}
				}				
			}
		}		
		


		return new HashSet<BasicBlock>(path);
	}

}