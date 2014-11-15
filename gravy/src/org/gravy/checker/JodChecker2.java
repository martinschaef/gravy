/**
 * 
 */
package org.gravy.checker;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;

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
import boogie.controlflow.util.HasseDiagram;
import boogie.controlflow.util.PartialBlockOrderNode;

/**
 * @author schaef
 * 
 */
public class JodChecker2 extends AbstractChecker {

	public JodChecker2(AbstractControlFlowFactory cff, CfgProcedure p, Prover prover) {
		super(cff, p);
		this.prover = prover;
	}
	
	/**
	 * @param cff
	 * @param p
	 */
	public JodChecker2(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);

		System.err.println("prune unreachable");

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

		// now exclude all feasible paths that may violate the postcondition
		// compute the feasible path cover under the given postcondition
		try {
			feasibleBlocks = new HashSet<BasicBlock>(computeJodCover(prover,
					tr, new HashSet<BasicBlock>()));
		} catch (Throwable e) {
			e.printStackTrace();
			throw e;
		}
		

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


	public Collection<BasicBlock> computeJodCover(Prover prover,
			JodTransitionRelation tr, Set<BasicBlock> alreadyCovered) {

		HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>(alreadyCovered);

		// add the basic prelude stuff that is needed for every check.
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms()
				.entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		prover.addAssertion(tr.getRequires());
		prover.addAssertion(tr.getEnsures());

		PartialBlockOrderNode poRoot = tr.getHasseDiagram().getRoot();
				
		System.err.println("Searching for feasible paths...");
		coveredBlocks.addAll(findFeasibleBlocks(prover, tr, poRoot, new HashSet<BasicBlock>(alreadyCovered)));
		

		return coveredBlocks;
	}	
	
	HashSet<PartialBlockOrderNode> knownInfeasibleNodes = new HashSet<PartialBlockOrderNode>(); 

	//TODO: keep track of everything that has been proved infeasible
	//to make sure that we don't do the same work twice.
	Set<Set<BasicBlock>> infeasibleSubprograms = new HashSet<Set<BasicBlock>>(); 

	private int TIMEOUT1 = 8000;
//	private int TIMEOUT2 = 10000;
	private int TIMEOUT2 = 5000;
	/**
	 * Check subprogram
	 * @param prover
	 * @param tr
	 * @param node
	 * @return
	 */
	private HashSet<BasicBlock> findFeasibleBlocks(Prover prover, JodTransitionRelation tr, PartialBlockOrderNode node, Set<BasicBlock> alreadyCovered) {
		HashSet<BasicBlock> result = new HashSet<BasicBlock>(alreadyCovered);
			
		//the set of node that we want to cover.
		Set<BasicBlock> toCheck = new HashSet<BasicBlock>(node.getElements());
		toCheck.removeAll(alreadyCovered);
		if (!toCheck.isEmpty()) {			
			//make a stack of subprograms.
			//the first is always the current, and we add splits if the current one 
			//is not sat.
			Set<BasicBlock> subprog = getSubprogContainingAll(toCheck);
			if (!subprog.contains(tr.getProcedure().getRootNode()) || !subprog.contains(tr.getProcedure().getRootNode())) {
				System.err.println("subprog is infeasible by construction. Skipping");
				return result;				
			}
			
			if (isInfeasibleSubprogram(subprog)) {
				System.err.println("subprog known to be infeasible. Skipping");
				return result;
			}

						
			System.err.println("checking node with "+node.getSuccessors().size()+ " children, subprog size: "+subprog.size() + " timeout: "+TIMEOUT1/1000+"s");
			
			prover.push();
			assertPaths(prover, tr, subprog);
			
			ProverResult proverResult;
			
			//Wait for the solver.
			if (TIMEOUT1>0) {				
				prover.checkSat(false);			
				proverResult = prover.getResult(TIMEOUT1); 
			} else {
				proverResult = prover.checkSat(true);
			}
			if (proverResult == ProverResult.Sat) {
				System.err.println("SAT");
				HashSet<BasicBlock> feasiblePath = getPathFromModel(prover, tr, subprog, toCheck);
				prover.pop();
				if (!feasiblePath.containsAll(toCheck)) {
					throw new RuntimeException("This is all wrong");
				}
				result.addAll(feasiblePath);
				System.err.println("Covered so far: "+result.size());
			} else if (proverResult == ProverResult.Unsat){
				System.err.println("UNSAT");
				prover.pop();
				infeasibleSubprograms.add(subprog); //make sure that we never check this subprog again.
				return result;
				//do nothing
			} else if (proverResult == ProverResult.Running){
				System.err.println("TIMEOUT");
				prover.stop();
				prover.pop();				
				if (node.getSuccessors().isEmpty()) {	
					//TODO: try to find a local proof first.
					//if this fails, enumerate all paths.
					if (isInfeasibleInAbstraction(prover, tr, node, node.getElements(), 30000, 0)) {
						infeasibleSubprograms.add(subprog); //make sure that we never check this subprog again.
						return result;						
					} else {
						result.addAll(findFeasibleBlocksRecursively(prover, tr, subprog, TIMEOUT1, toCheck));
					}
				}			
			} else {
				// God knows what happened
				prover.pop();
				throw new RuntimeException("Prover failed with " + proverResult);
			}				
		} else {	
			System.out.println("already covered.");
		}		
		if (node.getSuccessors()!=null) {
			for (PartialBlockOrderNode child : node.getSuccessors()) {
				result.addAll(findFeasibleBlocks(prover, tr, child, result));
			}				
		}		
		return result;	
	}
	
	private boolean isInfeasibleInAbstraction(Prover prover, JodTransitionRelation tr, PartialBlockOrderNode node, Set<BasicBlock> toCheck, int timeout, int iterations) {
		System.err.print("Building abstraction ... ");
		Set<BasicBlock> subprog = findSubProgramForNode(node, toCheck);
		System.err.println("done.");
		
		prover.push();
		assertPaths(prover, tr, subprog);		
		ProverResult proverResult;		
		
		System.err.println("Checking abstraction with timeout "+(timeout/1000)+"s");
		if (timeout>0) {				
			prover.checkSat(false);			
			proverResult = prover.getResult(timeout); 
		} else {
			proverResult = prover.checkSat(true);
		}
		if (proverResult == ProverResult.Sat) {
			if (node.getParent()!=null) {
				prover.pop();
				System.err.println("SAT in abstraction, refining.");
				return isInfeasibleInAbstraction(prover, tr, node.getParent(), toCheck, timeout, iterations+1);
			} else {
//				if (this.getSubprogContainingAll(node.getElements()).size()!=subprog.size()) {
//					throw new RuntimeException("Bug");
//				}
//				HashSet<BasicBlock> feasiblePath = getPathFromModel(prover, tr, subprog, toCheck);
				prover.pop();
				System.err.println("Went all the way to root ... can't show infeasibility in abstraction");
				return false;
			}
		} else if (proverResult == ProverResult.Unsat){
			System.err.println("UNSAT in abstract after "+iterations+" iterations");
			prover.pop();			
			return true;
			//do nothing
		} else if (proverResult == ProverResult.Running){
			System.err.println("TIMEOUT");
			prover.stop();
			prover.pop();				
			return false;
		} else {
			// God knows what happened
			prover.pop();
			throw new RuntimeException("Prover failed with " + proverResult);
		}				
	}
	
	private Set<BasicBlock> findSubProgramForNode(PartialBlockOrderNode node, Set<BasicBlock> toCheck) {
		Set<BasicBlock> allPathThroughToCheck = this.getSubprogContainingAll(toCheck);
		
		Set<BasicBlock> fragment = new HashSet<BasicBlock>();
		LinkedList<PartialBlockOrderNode> todoNodes = new LinkedList<PartialBlockOrderNode>();
		Set<PartialBlockOrderNode> doneNodes = new HashSet<PartialBlockOrderNode>();
		System.err.print("finding all nodes");
		todoNodes.add(node);
		//find all nodes in this equivalence class or in its children.
		while (!todoNodes.isEmpty()) {
			PartialBlockOrderNode current = todoNodes.pop();
			fragment.addAll(current.getElements());
			for (PartialBlockOrderNode child : current.getSuccessors()) {
				if (!todoNodes.contains(child) && !doneNodes.contains(child)) {
					todoNodes.add(child);
				}
			}
		}
		System.err.println("... done");
		//find all nodes in the parent that are connected to the child via a single path.
		if (node.getParent()!=null) {
			PartialBlockOrderNode parent = node.getParent();
			LinkedList<BasicBlock> todoBlocks1 = new LinkedList<BasicBlock>(fragment);
			LinkedList<BasicBlock> todoBlocks2 = new LinkedList<BasicBlock>(fragment);
			Set<BasicBlock> doneBlocks = new HashSet<BasicBlock>();
			while (!todoBlocks1.isEmpty()) {
				BasicBlock current = todoBlocks1.pop();
				doneBlocks.add(current);
				for (BasicBlock b : current.getPredecessors()) {
					if (!todoBlocks1.contains(b) && !doneBlocks.contains(b) && parent.getElements().contains(b)) {
						fragment.add(b);
						todoBlocks1.add(b);
					}
				}
			}
			todoBlocks2.addAll(fragment);
			doneBlocks.clear();
			while (!todoBlocks2.isEmpty()) {
				BasicBlock current = todoBlocks2.pop();
				doneBlocks.add(current);
				for (BasicBlock b : current.getSuccessors()) {
					if (!todoBlocks2.contains(b) && !doneBlocks.contains(b) && parent.getElements().contains(b)) {
						fragment.add(b);
						todoBlocks2.add(b);
					}
				}			
			}
		}
		//now remove everything that is not on paths into toCheck	
		fragment.removeAll(allPathThroughToCheck);
		return fragment;
	}
	
	
	private Set<BasicBlock> findFeasibleBlocksRecursively(Prover prover, JodTransitionRelation tr, Set<BasicBlock> subprog, int timeout, Set<BasicBlock> toCheck) {
		Set<BasicBlock> result = new HashSet<BasicBlock>();
		System.err.println("Checking subprog of size "+subprog.size()+ " with timeout "+(timeout/1000)+"s");
		if (isInfeasibleSubprogram(subprog)) {
			System.err.println("subprog known to be infeasible. Skipping");
			return result;
		}
		
		prover.push();
		assertPaths(prover, tr, subprog);
		
		ProverResult proverResult;
		
		//Wait for the solver.
		if (timeout>0) {				
			prover.checkSat(false);			
			proverResult = prover.getResult(timeout); 
		} else {
			proverResult = prover.checkSat(true);
		}
		if (proverResult == ProverResult.Sat) {
			System.err.println("SAT");
			HashSet<BasicBlock> feasiblePath = getPathFromModel(prover, tr, subprog, toCheck);
			prover.pop();
			if (!feasiblePath.containsAll(toCheck)) {
				throw new RuntimeException("This is all wrong");
			}
			result.addAll(feasiblePath);
			return result;
		} else if (proverResult == ProverResult.Unsat){
			System.err.println("UNSAT");
			prover.pop();
			infeasibleSubprograms.add(subprog); //make sure that we never check this subprog again.
			return result;
		} else if (proverResult == ProverResult.Running){
			System.err.println("TIMEOUT");
			prover.stop();
			prover.pop();
			
			LinkedList<Set<BasicBlock>> splits = new LinkedList<Set<BasicBlock>>(splitNTimes(tr,splitInHalf(tr, subprog), 1));
		
			if (splits.size()==1) {
				System.err.println("Cannot split the problem further ... ");
				result.addAll(findFeasibleBlocksRecursively(prover, tr, splits.getFirst(), 0, toCheck));
			} else {
				System.err.println("Created "+splits.size()+" new splits");
				for (Set<BasicBlock> split : splits) {
					result.addAll(findFeasibleBlocksRecursively(prover, tr, split, TIMEOUT2, toCheck));
					if (!result.isEmpty()) {
						return result;
					}
				}
			}			
			if (result.isEmpty()) {
				infeasibleSubprograms.add(subprog);
			}
		} else {
			// God knows what happened
			prover.pop();
			throw new RuntimeException("Prover failed with " + proverResult);
		}				
	
		
		return result;
	}
	
	
	private Set<Set<BasicBlock>> splitNTimes(JodTransitionRelation tr, Set<Set<BasicBlock>> splits, int n) {
		if (n<=0) return splits;
		HashSet<Set<BasicBlock>> result = new HashSet<Set<BasicBlock>>();
		for (Set<BasicBlock> x : splits) {
			result.addAll(splitInHalf(tr, x));
		}
		return splitNTimes(tr, result, n-1);
	}
	
	
	private Set<BasicBlock> findSplitPoints(JodTransitionRelation tr, Set<BasicBlock> subprog) {
		Set<BasicBlock> result = new HashSet<BasicBlock>();
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		if (!subprog.contains(tr.getProcedure().getRootNode())) {
			throw new RuntimeException("Bug");
		}
		todo.add(tr.getProcedure().getRootNode());
		while (!todo.isEmpty()) {	
			BasicBlock b = todo.pop();
			done.add(b);
			result.clear();
			for (BasicBlock s : b.getSuccessors()) {
				if (subprog.contains(s)) {
					result.add(s);
				}				
				if (!todo.contains(s) && !done.contains(s)) {
					todo.add(s);
				}
			}
			if (result.size()>1) return result;
		}
		result.clear();
		return result;
	}
	
	private Set<Set<BasicBlock>> splitInHalf(JodTransitionRelation tr, Set<BasicBlock> subprog) {
		HashSet<Set<BasicBlock>> result = new HashSet<Set<BasicBlock>>();
		
		Set<BasicBlock> splitPoints = findSplitPoints(tr, subprog);
		if (splitPoints.isEmpty()) {
			System.err.println("No Split found");
			result.add(subprog);
			return result;
		}
		for (BasicBlock b : splitPoints) { 
			Set<BasicBlock> sp = getSubgraphContaining(subprog, b);
			if (!sp.contains(tr.getProcedure().getRootNode()) || !sp.contains(tr.getProcedure().getExitNode())) {
				System.err.println("Subprogram must pass an infeasible node ... skipping");
			} else {
				result.add(sp);
			}
		}
	
		return result;	
	}
	
	private boolean isInfeasibleSubprogram(Set<BasicBlock> subprog) {
		for (Set<BasicBlock> sp : infeasibleSubprograms) {
			if (sp.size()>=subprog.size() && sp.containsAll(subprog)) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * returns the set of blocks that can reach any of the blocks in blocks
	 * @param blocks
	 * @return
	 */
	private Set<BasicBlock> getSubprogContainingAll(Set<BasicBlock> blocks) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>(blocks);
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			Set<BasicBlock> subprog = getSubprogContaining(current);
//			todo.removeAll(subprog);
			done.addAll(subprog);
		}
		return done;
	}

	/**
	 * returns all nodes that occur on paths through b
	 * @param b
	 * @return
	 */
	private Set<BasicBlock> getSubprogContaining(BasicBlock b) {
		Set<BasicBlock> knownInfeasibleBlocks = getKnownInfeasibleBlocks();
		
		
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		
		for (PartialBlockOrderNode node : this.knownInfeasibleNodes) {
			done.addAll(node.getElements());
		}
		
		todo.add(b);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			done.add(current);
			for (BasicBlock x : current.getPredecessors()) {
				if (!todo.contains(x) && !done.contains(x) && !knownInfeasibleBlocks.contains(x)) {
					todo.add(x);
				}
			}
		}
		//now the other direction
		todo.add(b);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			done.add(current);
			for (BasicBlock x : current.getSuccessors()) {
				if (!todo.contains(x) && !done.contains(x) && !knownInfeasibleBlocks.contains(x)) {
					todo.add(x);
				}
			}
		}
		return done;
	}
	

	
//	private Set<BasicBlock> getSubgraphContainingAll(Set<BasicBlock> nodes, Set<BasicBlock> blocks) {
//		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>(blocks);
//		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
//		while (!todo.isEmpty()) {
//			BasicBlock current = todo.pop();
//			Set<BasicBlock> subprog = getSubgraphContaining(nodes, current);
//			done.addAll(subprog);
//		}
//		return done;
//	}
	
	private Set<BasicBlock> getKnownInfeasibleBlocks() {
		Set<BasicBlock> infeasibleBlocks = new HashSet<BasicBlock>();
//		for (PartialBlockOrderNode po : this.knownInfeasibleNodes) {
//			infeasibleBlocks.addAll(po.getElements());
//		}
		return infeasibleBlocks;
	}
	
	/**
	 * returns all nodes that occur on paths through b in nodes
	 * @param b
	 * @return
	 */
	private Set<BasicBlock> getSubgraphContaining(Set<BasicBlock> nodes, BasicBlock b) {
		Set<BasicBlock> knownInfeasibleBlocks = getKnownInfeasibleBlocks();
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		todo.add(b);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			done.add(current);
			for (BasicBlock x : current.getPredecessors()) {
				if (!todo.contains(x) && !done.contains(x) && nodes.contains(x) && !knownInfeasibleBlocks.contains(x)) {					
					todo.add(x);
				}
			}
		}
		//now the other direction
		todo.add(b);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			done.add(current);
			for (BasicBlock x : current.getSuccessors()) {
				if (!todo.contains(x) && !done.contains(x) && nodes.contains(x) && !knownInfeasibleBlocks.contains(x)) {
					todo.add(x);
				}
			}
		}
		return done;
	}
	
	

	private ProverExpr mkDisjunction(JodTransitionRelation tr, Collection<BasicBlock> blocks) {
		ProverExpr next;
		if (blocks.size() == 0) {
			next = prover.mkLiteral(true);
		} else if (blocks.size() == 1) {
			next = tr.getReachabilityVariables().get(blocks.iterator().next());
		} else {
			ProverExpr[] disj = new ProverExpr[blocks.size()];
			int i = 0;
			for (BasicBlock n : blocks) {
				disj[i++] = tr.getReachabilityVariables().get(n);
			}
			next = prover.mkOr(disj);
		}
		return next;
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
			Set<BasicBlock> blocks) {

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
			
			// Make the assertion
			ProverExpr assertion = prover.mkImplies(
					tr.getReachabilityVariables().get(block), 
					prover.mkAnd(tr.blockTransitionReleations.get(block), mkDisjunction(tr, successors))
				);
			
			// Assert it
			prover.addAssertion(assertion);
			
			//now assert fwd
			LinkedList<BasicBlock> predecessors = new LinkedList<BasicBlock>();
			for (BasicBlock pred : block.getPredecessors()) {
				if (blocks.contains(pred)) {
					predecessors.add(pred);
				} 
			}
			
			assertion = prover.mkImplies(
					tr.getReachabilityVariables().get(block), 
					mkDisjunction(tr, predecessors)
				);
			
			// Assert it
			prover.addAssertion(assertion);
			
			
		}

		//find all entry points to the subprogram and assert that their  
		//block var needs to be true
		for (BasicBlock block : blocks) {
			boolean hasPreInBlocks = false;
			for (BasicBlock pre : block.getPredecessors()) {
				if (blocks.contains(pre)) {
					hasPreInBlocks = true; break;
				}
			}
			if (!hasPreInBlocks) {
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
	 * @param necessaryNodes one of these nodes needs to be in the path
	 * @return
	 */
	private HashSet<BasicBlock> getPathFromModel(Prover prover, JodTransitionRelation tr, Set<BasicBlock> allBlocks, Set<BasicBlock> necessaryNodes) {
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
				LinkedList<BasicBlock> blockToExit = new LinkedList<BasicBlock>();
				BasicBlock current = block;
				while (current!=null) {
					blockToExit.add(current);
					BasicBlock _current = null;
					for (BasicBlock next : current.getSuccessors()) {
						if (enabledBlocks.contains(next)) {
							_current = next; break;
						}
					}
					current = _current;
				}
						
				if (blockToExit != null) {
					// Get the path from root to the block
					LinkedList<BasicBlock> rootToBlock = new LinkedList<BasicBlock>();
					current = block;
					while (current!=null) {
						blockToExit.add(current);
						BasicBlock _current = null;
						for (BasicBlock next : current.getPredecessors()) {
							if (enabledBlocks.contains(next)) {
								_current = next; break;
							}
						}
						current = _current;
					}

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
			
		// Screwed
		toDot("path_error.dot", new HashSet<BasicBlock>(allBlocks), new HashSet<BasicBlock>(enabledBlocks), new HashSet<BasicBlock>(necessaryNodes));
		throw new RuntimeException("Could not find a path");
	}


	
	
	private void makeColors(PartialBlockOrderNode node, int startColor, int endColor, HashMap<PartialBlockOrderNode, Integer> node2color) {

		int range = (endColor-startColor)/2;
		int midcolor = startColor + range;
		
		node2color.put(node, midcolor );
		
		int previous_color = startColor;
		int colordelta = (int) ( (1.0)/((double)node.getSuccessors().size())*range );
		
		for (PartialBlockOrderNode child : node.getSuccessors()) {			
			makeColors(child, previous_color, previous_color+colordelta, node2color);
			previous_color += colordelta;
		}

	}
	
	public void toDot(String filename, JodTransitionRelation tr) {
		HasseDiagram hd = tr.getHasseDiagram();
//		HashSet<PartialBlockOrderNode> poNodes = getPoNodes(hd.getRoot());
		HashMap<PartialBlockOrderNode, Integer> node2color = new HashMap<PartialBlockOrderNode, Integer>();

		makeColors(hd.getRoot(), 0x101010, 0xffffff, node2color);
//		int i=1;
//		for (PartialBlockOrderNode node : poNodes) {
//			double color = ((double)(i++))/((double)poNodes.size()+1) * ((double)0xffffff);
//			node2color.put(node, (int)color );
//		}
		
		File fpw = new File(filename);		
		try {
			PrintWriter pw = new PrintWriter(fpw);
			pw.println("digraph dot {");
			LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
			HashSet<BasicBlock> done = new HashSet<BasicBlock>();
			todo.add(tr.getProcedure().getRootNode());
			StringBuffer sb = new StringBuffer();
			while (!todo.isEmpty()) {
				BasicBlock current = todo.pop();
				done.add(current);
//				 for (BasicBlock prev : current.getPredecessors()) {
//				 pw.println(" \""+ current.getLabel()
//				 +"\" -> \""+prev.getLabel()+"\" [style=dotted]");
//					if (!todo.contains(prev) && !done.contains(prev)) {
//						todo.add(prev);
//					}
//
//				 }
				for (BasicBlock next : current.getSuccessors()) {
					sb.append(" \"" + current.getLabel() + "\" -> \""
							+ next.getLabel() + "\" \n");
					if (!todo.contains(next) && !done.contains(next)) {
						todo.add(next);
					}
				}
			}
			
			for (BasicBlock b : done ) {
				StringBuilder sb_ = new StringBuilder();
				sb_.append(Integer.toHexString(node2color.get(hd.findNode(b))));
				while (sb_.length() < 6) {
					sb_.insert(0, '0'); // pad with leading zero if needed
				}
				String colorHex = sb_.toString();
				pw.println("\""+b.getLabel()+"\" " + "[label=\""+ b.getLabel()+"\",style=filled, fillcolor=\"#"+colorHex+"\"];\n" );
			}
			pw.println(sb.toString());

			pw.println("}");
			pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
	
	
	
	public void hasseToDot(String filename, JodTransitionRelation tr) {
		HasseDiagram hd = tr.getHasseDiagram();
		
		File fpw = new File(filename);		
		try {
			PrintWriter pw = new PrintWriter(fpw);
			pw.println("digraph dot {");
			LinkedList<PartialBlockOrderNode> todo = new LinkedList<PartialBlockOrderNode>();
			HashSet<PartialBlockOrderNode> done = new HashSet<PartialBlockOrderNode>();
			todo.add(hd.getRoot());
			StringBuffer sb = new StringBuffer();
			while (!todo.isEmpty()) {
				PartialBlockOrderNode current = todo.pop();
				done.add(current);
//				 for (BasicBlock prev : current.getPredecessors()) {
//				 pw.println(" \""+ current.getLabel()
//				 +"\" -> \""+prev.getLabel()+"\" [style=dotted]");
//					if (!todo.contains(prev) && !done.contains(prev)) {
//						todo.add(prev);
//					}
//
//				 }
				for (PartialBlockOrderNode next : current.getSuccessors()) {
					sb.append(" \"" + current.hashCode() + "\" -> \""
							+ next.hashCode() + "\" \n");
					if (!todo.contains(next) && !done.contains(next)) {
						todo.add(next);
					}
				}
			}
			
			for (PartialBlockOrderNode node : done ) {
				StringBuilder _sb = new StringBuilder();
				for (BasicBlock b : node.getElements()) {
					_sb.append(b.getLabel()+"\n");
				}	

				pw.println("\""+node.hashCode()+"\" " + "[label=\""+ _sb.toString()+"\"];\n" );
			}
			pw.println(sb.toString());

			pw.println("}");
			pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
	
}