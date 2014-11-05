/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Random;

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
public class JodChecker extends
		AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public JodChecker(AbstractControlFlowFactory cff,
			CfgProcedure p) {
		super(cff, p);
		
		System.err.println("prune unreachable");
		
//		p.toDot("./"+p.getProcedureName()+".dot");
		
		p.pruneUnreachableBlocks();
		
//		p.toDot("./"+p.getProcedureName()+".dot");
		
		System.err.println("remove calls");
		
		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);	
		
		System.err.println("unwind loops");
		AbstractLoopUnwinding.unwindeLoops(p);
		p.pruneUnreachableBlocks();

		System.err.println("ssa");
//		p.toFile("./"+p.getProcedureName()+".bpl");
				
		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.computeSSA(p);

		System.err.println("prune again");
		p.pruneUnreachableBlocks();
		
		System.err.println("done");
		
//		p.toFile("./"+p.getProcedureName()+".bpl");
//		p.toDot("./"+p.getProcedureName()+"_lf.dot");
	}


	/* (non-Javadoc)
	 * @see org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org.gravy.prover.Prover, org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public Report checkSat(Prover prover,
			AbstractTransitionRelation atr) {
		JodTransitionRelation tr = (JodTransitionRelation) atr;
		
		Statistics.HACK_effectualSetSize = tr.getEffectualSet().size();
		

		HashSet<BasicBlock> blocks2cover = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet()); 
		
		// now exclude all feasible paths that may violate the postcondition
		//compute the feasible path cover under the given postcondition
		feasibleBlocks = new HashSet<BasicBlock>(computeJodCover(prover, tr, blocks2cover));
		blocks2cover.removeAll(feasibleBlocks);
		
		//this set is empty for infeasible code detection.
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>();
		
		infeasibleBlocks = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());
		infeasibleBlocks.removeAll(feasibleBlocks);
		
//		return new InterpolationInfeasibleReport(this.cff, atr, this.feasibleBlocks, this.infeasibleBlocks);
		return new InfeasibleReport(this.cff, atr, this.feasibleBlocks, this.infeasibleBlocks);
	}
		
	/**
	 * This is the main loop that uses our Joins-on-Demand algorithm to cover the CFG
	 * @param prover : instance of the prover
	 * @param tr : the transition relation object containing the ProverExpr for all BasicBlocks
	 * @param blocks2cover : all reachable BasicBlocks in the procedure.
	 * @return The set of all BasicBlocks that occur on feasible paths
	 */
	protected Collection<BasicBlock> computeJodCover(Prover prover, JodTransitionRelation tr, HashSet<BasicBlock> blocks2cover) {
		
		HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>();
		
		//add the basic prelude stuff that is needed for every check.
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}	
		prover.addAssertion(tr.getRequires());
		prover.addAssertion(tr.getEnsures());
				
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		todo.addAll(blocks2cover);
		
		while(!todo.isEmpty()) {

			//push a frame for the actual check.
			prover.push();
			BasicBlock target = pickBlockToCover(todo);
			LinkedList<BasicBlock> path = pickCompletePath(tr, target);
			
			System.err.println("Total blocks to cover: " + todo.size() + "  ... checking "+ target.getLabel());
			
			assertPath(prover, tr, path);
			
			ProverResult res = prover.checkSat(true);
			if (res == ProverResult.Sat) {
				LinkedList<BasicBlock> sat_path = getPathFromModel(prover, tr, path);
				System.err.println("\tSat path len " + sat_path.size() );
				
//				for (BasicBlock x : sat_path) System.err.print(x.getLabel()+ ", ");
//				System.err.println();
				
				todo.removeAll(sat_path);
				coveredBlocks.addAll(sat_path);
			} else if (res == ProverResult.Unsat) {
				System.err.println("\tUNSAT - Not implemented. This is where we do the refinement");
				//TODO: do the actual refinement here
				todo.remove(target);					
			} else {
				throw new RuntimeException("Prover failed with "+res);
			}
			
			prover.pop();
		}
		
			
		return coveredBlocks;
	}
	
	private void assertPath(Prover prover, JodTransitionRelation tr, List<BasicBlock> path) {
		for (int i=0; i<path.size(); i++) {
			BasicBlock b = path.get(i);
			ProverExpr next = (i+1==path.size()) ? prover.mkLiteral(true) : tr.getReachabilityVariables().get(path.get(i+1));					
			prover.addAssertion(prover.mkImplies(tr.getReachabilityVariables().get(b), 
					prover.mkAnd(tr.blockTransitionReleations.get(b), next)));
		}
		if (path.size()>0) {
			//assert that the path is feasible by saying that the first block must have an execution.
			prover.addAssertion(tr.getReachabilityVariables().get(path.get(0)));
		}
	}
	
	
	/**
	 * Pick the next block that we want to cover from notCovered
	 * @param notCovered
	 * @return
	 */
	private BasicBlock pickBlockToCover(List<BasicBlock> notCovered) {
		Random rand = new Random();
		//pick one node that we want to cover.
		BasicBlock toCover = notCovered.get(rand.nextInt(notCovered.size()));		
		return toCover;
	}
	

	/**
	 * Pick a random path through the block toCover that we want to cover.
	 * @param tr
	 * @param toCover
	 * @return
	 */
	private LinkedList<BasicBlock> pickCompletePath(JodTransitionRelation tr, BasicBlock toCover) {
		LinkedList<BasicBlock> path = new LinkedList<BasicBlock>();
		Random rand = new Random();
		path.add(toCover);
		//collect a random prefix
		BasicBlock current = toCover;
		while (current!=tr.getProcedure().getRootNode()) {
			int rnd = rand.nextInt(current.getPredecessors().size());
			int i=0;
			for (BasicBlock b : current.getPredecessors()) {
				if (rnd==i++) {
					current = b;
					path.addFirst(current);
					break;
				}
			}			
		}
		//collect a random suffix
		current = toCover;
		while (current!=tr.getProcedure().getExitNode()) {
			int rnd = rand.nextInt(current.getSuccessors().size());
			int i=0;
			for (BasicBlock b : current.getSuccessors()) {
				if (rnd==i++) {
					current = b;
					path.add(current);
					break;
				}
			}			
		}
		
		return path;
	}
	
	/**
	 * Get a complete and feasible path from the model produced by princes.
	 * @param prover
	 * @param tr
	 * @return
	 */
	private LinkedList<BasicBlock> getPathFromModel(Prover prover, JodTransitionRelation tr, List<BasicBlock> currentPaths) {
		LinkedList<BasicBlock> path = new LinkedList<BasicBlock>();
		
		HashSet<BasicBlock> blocksInModel = new HashSet<BasicBlock>(); 
		
		for (BasicBlock b : currentPaths) {
			final ProverExpr pe = tr.getReachabilityVariables().get(b);
			if (prover.evaluate(pe).getBooleanLiteralValue()) {
				blocksInModel.add(b);
			}
			
		}
		
//		for (Entry<BasicBlock, ProverExpr> entry : tr.getReachabilityVariables().entrySet()) {
//			final ProverExpr pe = entry.getValue();
//			if (prover.evaluate(pe).getBooleanLiteralValue()) {
//				blocksInModel.add(entry.getKey());
//			}
//		}
		
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		todo.add(tr.getProcedure().getRootNode());
		BasicBlock current = null;
		while (!todo.isEmpty()) {
			current = todo.pop();
			if (blocksInModel.contains(current)) {
				path.add(current);
				for (BasicBlock b : current.getSuccessors()) {
					if (!done.contains(b) && !todo.contains(b) && blocksInModel.contains(b)) {
						todo.push(b);
						break;
					}
				}
			} else {
				throw new RuntimeException("Bug!");
			}
		}		
		//sanity check the the path is a complete path
		if (current!=tr.getProcedure().getExitNode()) {
			throw new RuntimeException("Model does not contain a complete path!");
		}
		return path;
	}
	
	
}