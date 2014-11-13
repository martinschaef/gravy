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
		coveredBlocks.addAll(foo(prover, tr, poRoot, new HashSet<BasicBlock>()));
		

		return coveredBlocks;
	}	
	
	HashSet<BasicBlock> _covered = new HashSet<BasicBlock>(); 
	
	/**
	 * Check subprogram
	 * @param prover
	 * @param tr
	 * @param node
	 * @return
	 */
	protected HashSet<BasicBlock> foo(Prover prover, JodTransitionRelation tr, PartialBlockOrderNode node, Set<BasicBlock> alreadyCovered) {
		HashSet<BasicBlock> result = new HashSet<BasicBlock>(alreadyCovered);
		
		//the set of node that we want to cover.
		Set<BasicBlock> toCheck = new HashSet<BasicBlock>(node.getElements());
		toCheck.removeAll(alreadyCovered);
		if (toCheck.isEmpty()) {
			System.out.println("already covered, descending");
			if (node.getSuccessors()!=null) {
				for (PartialBlockOrderNode child : node.getSuccessors()) {
					result.addAll(foo(prover, tr, child, alreadyCovered));
				}
				return result;
			}
		}
		
		
		//remove all blocks that we covered already
		
		//find the subprogram contain all
		//path going through nodes in the
		//equivalence class node
		
		System.err.println("Compute new Subprogram...");
		Set<BasicBlock> subprog = getSubprogContainingAll(toCheck);
		
		System.err.println("checking node with "+node.getSuccessors().size()+ " children, subprog size: "+subprog.size());
		if (node.getSuccessors().size()==0) {
			System.err.print("Nodes in class: ");
			for (BasicBlock b : node.getElements()) System.err.print(b.getLabel()+", ");
			System.err.print("\n");
		}
		
		prover.push();
		assertPaths(prover, tr, subprog);
		ProverResult res = prover.checkSat(true);
		
		
		if (res == ProverResult.Sat) {
			System.err.println("SAT");
			HashSet<BasicBlock> feasiblePath = getPathFromModel(prover, tr, subprog, toCheck);
			
//			System.err.print("To Check: ");
//			for (BasicBlock b : toCheck) System.err.print(b.getLabel()+", ");
//			System.err.print("\n\n");
//
//			System.err.print("Path: ");
//			for (BasicBlock b : feasiblePath) System.err.print(b.getLabel()+", ");
//			System.err.print("\n\n");
			
			if (!feasiblePath.containsAll(toCheck)) {
				throw new RuntimeException("This is all wrong");
			}
			result.addAll(feasiblePath);
			HashSet<BasicBlock> covered = new HashSet<BasicBlock>(result); //make a copy of result for usage in the loop.
			if (node.getSuccessors()!=null) {
				for (PartialBlockOrderNode child : node.getSuccessors()) {
					System.err.println("descending");
					result.addAll(foo(prover, tr, child, covered));
				}				
			}
		} else if (res == ProverResult.Unsat){
			System.err.println("UNSAT");
			//do nothing
		} else {
			// God knows what happened
			prover.pop();
			throw new RuntimeException("Prover failed with " + res);
		}
		
		prover.pop();
		_covered.addAll(result);
		System.err.println("Covered "+ _covered.size());
		return result;
	}

	private BasicBlock findSplitPoint(Set<BasicBlock> subprog) {
		BasicBlock result = null;
		for (BasicBlock b : subprog) {
			int succsInSubprog = 0;
			for (BasicBlock s : b.getSuccessors()) {
				if (subprog.contains(s)) {
					succsInSubprog++;
					result = s;
				}
				if (succsInSubprog>1) return result;
			}
		}
		return null;
	}
	
	private Set<Set<BasicBlock>> splitInHalf(Set<BasicBlock> subprog) {
		HashSet<Set<BasicBlock>> result = new HashSet<Set<BasicBlock>>();
		
		HashSet<BasicBlock> split = new HashSet<BasicBlock>();
		BasicBlock splitPoint = findSplitPoint(subprog);
		if (splitPoint==null) {
			result.add(subprog);
			return result;
		}
		split.add(splitPoint);
		HashSet<BasicBlock> out1 = new HashSet<BasicBlock>();
		out1.addAll(getSubprogContainingAll(split));
		
		
		HashSet<BasicBlock> othersplit = new HashSet<BasicBlock>(subprog);		
		othersplit.removeAll(out1);
		HashSet<BasicBlock> out2 = new HashSet<BasicBlock>();
		out2.addAll(getSubprogContainingAll(othersplit));
		
		result.add(out1);
		result.add(out2);
		return result;	
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



//	/**
//	 * Get a complete and feasible path from the model produced by princes.
//	 * 
//	 * @param prover
//	 * @param tr
//	 * @return
//	 */
//	protected HashSet<BasicBlock> getPathFromModel(Prover prover,
//			JodTransitionRelation tr, HashSet<BasicBlock> currentPaths) {
//		LinkedList<BasicBlock> path = new LinkedList<BasicBlock>();
//
//		HashSet<BasicBlock> blocksInModel = new HashSet<BasicBlock>();
//
//		for (BasicBlock b : currentPaths) {
//			final ProverExpr pe = tr.getReachabilityVariables().get(b);
//			if (prover.evaluate(pe).getBooleanLiteralValue()) {
//				blocksInModel.add(b);
//			}
//		}
//
//		
//		for (BasicBlock block : currentPaths) {
//			boolean hasPreInBlocks = false;
//			for (BasicBlock pre : block.getPredecessors()) {
//				if (currentPaths.contains(pre)) {
//					hasPreInBlocks = true; break;
//				}
//			}
//			if (!hasPreInBlocks) {
//				LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
//				HashSet<BasicBlock> done = new HashSet<BasicBlock>();
//
//				todo.add(block);
//				BasicBlock current = null;
//				while (!todo.isEmpty()) {
//					current = todo.pop();
//					if (blocksInModel.contains(current)) {
//						path.add(current);
//						boolean found = false;
//						for (BasicBlock b : current.getSuccessors()) {
//							if (!done.contains(b) && !todo.contains(b)
//									&& blocksInModel.contains(b)) {
//								todo.push(b);
//								if (!found) {
//									found = true;
//								} else {
//									throw new RuntimeException("more than one path in model");
//								}
//
//							}
//						}
//					} else {
////						throw new RuntimeException("Bug! " + current.getLabel());
//					}
//				}				
//			}
//		}		
//		
//
//
//		return new HashSet<BasicBlock>(path);
//	}
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
//		toDot("path_error.dot", allBlocks, enabledBlocks, necessaryNodes);
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