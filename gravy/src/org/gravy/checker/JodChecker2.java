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

		toDot("./color"+tr.getProcedureName()+".dot", tr);
		hasseToDot("H-"+tr.getProcedureName()+".dot", tr);
		
		
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
		
		//approximate the feasible blocks - and at the 
		//same time, collect the ones that are guaranteed
		//to be infeasible.
		System.err.println("Try to find local contradictions first.");
		approximateFeasibleBlocks(prover, tr);
		System.err.println("Found "+ this.knownInfeasibleNodes.size() + " nodes that are locally infeasible.");
		
		System.err.println("Searching for feasible paths...");
		coveredBlocks.addAll(findFeasibleBlocks(prover, tr, poRoot, new HashSet<BasicBlock>()));
		

		return coveredBlocks;
	}	
	
	HashSet<PartialBlockOrderNode> knownInfeasibleNodes = new HashSet<PartialBlockOrderNode>(); 
	
	protected Set<PartialBlockOrderNode> collectPoLeafNodes(PartialBlockOrderNode node) {
		Set<PartialBlockOrderNode> result = new HashSet<PartialBlockOrderNode>();
		if (node.getSuccessors().size()>0) {
			for (PartialBlockOrderNode child : node.getSuccessors()) {
				result.addAll(collectPoLeafNodes(child));
			}
		} else {
			result.add(node);
		}	
		return result;
	}
	
	protected void propagateInfeasibility(PartialBlockOrderNode node) {
		if (node.getSuccessors().size()>0) {
			for (PartialBlockOrderNode child : node.getSuccessors()) {
				propagateInfeasibility(child);
			}
			if (knownInfeasibleNodes.containsAll(node.getSuccessors())) {
				knownInfeasibleNodes.add(node);
			}
		}
	}
	
	
	/**
	 * for each leaf node in the partial order, check if it is feasible. If so, add the blocks
	 * in its parent equivalence class, if not report it, if timeout ignore it.
	 * @param prover
	 * @param tr
	 * @return
	 */
	protected void approximateFeasibleBlocks(Prover prover, JodTransitionRelation tr) {
		int TIMEOUT_MS = 10000; //millisecs		
		Set<PartialBlockOrderNode> leafs = collectPoLeafNodes(tr.getHasseDiagram().getRoot());
		for (PartialBlockOrderNode node : leafs) {
			PartialBlockOrderNode current = node;
			Set<BasicBlock> blocks = new HashSet<BasicBlock>();
			boolean infeasible = false;
			while (current!=null) {
				blocks.addAll(current.getElements());				
				prover.push();
				assertPaths(prover, tr, blocks);				
				prover.checkSat(false);			
				ProverResult proverResult = prover.getResult(TIMEOUT_MS);				
				if (proverResult == ProverResult.Sat) {
					prover.pop();
				} else if (proverResult == ProverResult.Unsat){
					prover.pop();
					infeasible = true;
				} else if (proverResult == ProverResult.Running){
					System.err.println("Timeout...");
					prover.stop();
					prover.pop();
					break;
				} else {
					prover.pop();
					throw new RuntimeException("prover error");
				}					
				current = current.getParent();
			}	
			if (infeasible) {
				System.err.println("Local Proof!");
				knownInfeasibleNodes.add(node);
			}
		}
		propagateInfeasibility(tr.getHasseDiagram().getRoot());
	}

	//TODO: keep track of everything that has been proved infeasible
	//to make sure that we don't do the same work twice.
	Set<Set<BasicBlock>> infeasibleSubprograms = new HashSet<Set<BasicBlock>>(); 

	/**
	 * Check subprogram
	 * @param prover
	 * @param tr
	 * @param node
	 * @return
	 */
	protected HashSet<BasicBlock> findFeasibleBlocks(Prover prover, JodTransitionRelation tr, PartialBlockOrderNode node, Set<BasicBlock> alreadyCovered) {
		HashSet<BasicBlock> result = new HashSet<BasicBlock>(alreadyCovered);
		
		if (knownInfeasibleNodes.contains(node)) {
			System.err.println("LOCAL PROOF - no need to check.");
			return result;
		}
		
		//the set of node that we want to cover.
		Set<BasicBlock> toCheck = new HashSet<BasicBlock>(node.getElements());
		toCheck.removeAll(alreadyCovered);
		if (!toCheck.isEmpty()) {			
			//make a stack of subprograms.
			//the first is always the current, and we add splits if the current one 
			//is not sat.
			Set<BasicBlock> subprog = getSubprogContainingAll(toCheck);
			if (isInfeasibleSubprogram(subprog)) {
				System.err.println("subprog known to be infeasible. Skipping");
				return result;
			}

			int timeout = 10000;			
			System.err.println("checking node with "+node.getSuccessors().size()+ " children, subprog size: "+subprog.size() + " timeout: "+timeout/1000+"s");
			
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
			} else if (proverResult == ProverResult.Unsat){
				System.err.println("UNSAT");
				prover.pop();
				return result;
				//do nothing
			} else if (proverResult == ProverResult.Running){
				System.err.println("TIMEOUT");
				prover.stop();
				prover.pop();
				
				//if there is no successor that we could check,
				//subdivide the current node and add it to the list.
				if (node.getSuccessors().isEmpty()) {	
					LinkedList<Set<BasicBlock>> splits = new LinkedList<Set<BasicBlock>>(splitNTimes(tr,splitInHalf(tr, subprog), 2));				
					if (splits.size()==1) {
						System.err.println("Cannot split the problem further ... ");
						result.addAll(findFeasibleBlocksRecursively(prover, tr, splits.getFirst(), 0, toCheck));
					} else {
						System.err.println("Created "+splits.size()+" new splits");
						for (Set<BasicBlock> split : splits) {
							result.addAll(findFeasibleBlocksRecursively(prover, tr, split, timeout*2, toCheck));
						}
					}			
					
					
					result.addAll(findFeasibleBlocksRecursively(prover, tr, subprog, timeout, toCheck));
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
		
		System.err.println("Covered so far: "+result.size());
		
		return result;	
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
			
			LinkedList<Set<BasicBlock>> splits = new LinkedList<Set<BasicBlock>>(splitNTimes(tr,splitInHalf(tr, subprog), 2));
		
			if (splits.size()==1) {
				System.err.println("Cannot split the problem further ... ");
				return findFeasibleBlocksRecursively(prover, tr, splits.getFirst(), 0, toCheck);
			} else {
				int max_timeout = 30000;
				timeout = timeout*2;
				timeout = (timeout>max_timeout) ? max_timeout : timeout;
				System.err.println("Created "+splits.size()+" new splits");
				for (Set<BasicBlock> split : splits) {
					result.addAll(findFeasibleBlocksRecursively(prover, tr, split, timeout*2, toCheck));
				}
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
			result.add(getSubgraphContaining(subprog, b));
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
				if (!todo.contains(x) && !done.contains(x)) {
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
				if (!todo.contains(x) && !done.contains(x)) {
					todo.add(x);
				}
			}
		}
		return done;
	}
	

	
	private Set<BasicBlock> getSubgraphContainingAll(Set<BasicBlock> nodes, Set<BasicBlock> blocks) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>(blocks);
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			Set<BasicBlock> subprog = getSubgraphContaining(nodes, current);
			done.addAll(subprog);
		}
		return done;
	}
	
	/**
	 * returns all nodes that occur on paths through b in nodes
	 * @param b
	 * @return
	 */
	private Set<BasicBlock> getSubgraphContaining(Set<BasicBlock> nodes, BasicBlock b) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		todo.add(b);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			done.add(current);
			for (BasicBlock x : current.getPredecessors()) {
				if (!todo.contains(x) && !done.contains(x) && nodes.contains(x)) {
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
				if (!todo.contains(x) && !done.contains(x) && nodes.contains(x)) {
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