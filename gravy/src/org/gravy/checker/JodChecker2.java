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

//		toDot("./color"+tr.getProcedureName()+".dot", tr);
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
		coveredBlocks.addAll(foo(prover, tr, poRoot));
		

		return coveredBlocks;
	}
	
	/**
	 * Check subprogram
	 * @param prover
	 * @param tr
	 * @param node
	 * @return
	 */
	protected HashSet<BasicBlock> foo(Prover prover, JodTransitionRelation tr, PartialBlockOrderNode node) {
		//to subprogram that we want to check.
		HashSet<BasicBlock> toCheck = new HashSet<BasicBlock>();
		HashSet<BasicBlock> covered = new HashSet<BasicBlock>();
		for (PartialBlockOrderNode child : node.getSuccessors()) {
			//if the child node is feasible include his 
			//elements in the set of blocks that need to be
			//checked.
			
			toCheck.addAll(foo(prover, tr, child));
		}
		

		System.err.println("checking subprog depths "+node.getHeight());
		
		//if all successor nodes are infeasible
		//then this node is infeasible as well
		//and we do not need to check it.
		if (toCheck.isEmpty() && node.getSuccessors().size()>0) {
			System.err.println("infeasible, because all children are.");
			return covered;
		}

		//add all basic blocks in this equivalence class 
		toCheck.addAll(node.getElements());
		System.err.print("checking: ");
		for (BasicBlock b : toCheck) {
			System.err.print(b.getLabel()+", ");
		}
		System.err.println();
		
		prover.push();
		assertPaths(prover, tr, toCheck);
		
		ProverResult res = prover.checkSat(true);
		
		HashSet<BasicBlock> todo = new HashSet<BasicBlock>(toCheck);
		while (true) {
			if (res == ProverResult.Sat) {
				System.err.println("SAT");
				HashSet<BasicBlock> feasiblePath = getPathFromModel(prover, tr, toCheck);
				
				System.err.print("path: ");
				for (BasicBlock b : feasiblePath) {
					System.err.print(b.getLabel()+", ");
				}
				System.err.println();
				
				
				System.err.println("covered "+covered.size() + " of "+toCheck.size());
				covered.addAll(feasiblePath);
				todo.removeAll(feasiblePath);
				//now add a blocking clause.

				ProverExpr[] blocking = new ProverExpr[feasiblePath.size()];
				int i=0;
				for (BasicBlock b : feasiblePath) {
					blocking[i++] = tr.getReachabilityVariables().get(b);
				}				
				prover.addAssertion(prover.mkNot(prover.mkAnd(blocking)));			
			
			} else if (res == ProverResult.Unsat){
				System.err.println("UNSAT");
				break;
			} else {
				// God knows what happened
				throw new RuntimeException("Prover failed with " + res);
			}
			System.err.println("checking subprog again");
			res = prover.checkSat(true);
		}
		prover.pop();
		return covered;
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
			
			// Make the assertion
			ProverExpr assertion = prover.mkImplies(
					tr.getReachabilityVariables().get(block), 
					prover.mkAnd(tr.blockTransitionReleations.get(block), mkDisjunction(tr, successors))
				);
			
			// Assert it
			prover.addAssertion(assertion);
			
			//now assert fwd
			LinkedList<BasicBlock> predecessors = new LinkedList<BasicBlock>();
			for (BasicBlock succ : block.getPredecessors()) {
				if (blocks.contains(succ)) {
					predecessors.add(succ);
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
		System.err.println("Entries "+count);
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