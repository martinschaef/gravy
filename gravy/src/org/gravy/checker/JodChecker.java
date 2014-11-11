/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
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
import org.gravy.util.Log;
import org.gravy.util.Statistics;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.JodTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.CfgVariable;
import boogie.controlflow.expression.CfgIdentifierExpression;
import boogie.controlflow.statement.CfgAssignStatement;
import boogie.controlflow.statement.CfgAssumeStatement;
import boogie.controlflow.statement.CfgStatement;
import boogie.controlflow.util.PartialBlockOrderNode;

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

	/**
	 * This is the main loop that uses our Joins-on-Demand algorithm to cover
	 * the CFG
	 * 
	 * @param prover
	 *            : instance of the prover
	 * @param tr
	 *            : the transition relation object containing the ProverExpr for
	 *            all BasicBlocks
	 * @param blocks2cover
	 *            : all reachable BasicBlocks in the procedure.
	 * @return The set of all BasicBlocks that occur on feasible paths
	 */
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

		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		todo.addAll(blocks2cover);

		while (!todo.isEmpty()) {

			// push a frame for the actual check.

			BasicBlock target = pickBlockToCover(todo);


			System.err.println("Total blocks to cover: " + todo.size()
					+ "  ... checking " + target.getLabel());

			// LinkedList<BasicBlock> sat_path = checkPaths(prover, tr, path,
			// target);

			HashSet<BasicBlock> sat_path = checkBlock(prover, tr, target);

			if (sat_path != null) {
				todo.removeAll(sat_path);
				coveredBlocks.addAll(sat_path);
				
//				ProverExpr[] conj = new ProverExpr[sat_path.size()];
//				int i=0;
//				for (BasicBlock b : sat_path) {
//					conj[i++] = tr.getReachabilityVariables().get(b);
//				}
//				prover.addAssertion(prover.mkNot(prover.mkAnd(conj)));
//				
			} else {
				// remove all nodes in the same equivalence class;
				// ...also remove all equiv classes below
				LinkedList<PartialBlockOrderNode> todo_nodes = new LinkedList<PartialBlockOrderNode>();
				todo_nodes.add(tr.getHasseDiagram().findNode(target));
				HashSet<PartialBlockOrderNode> done_nodes = new HashSet<PartialBlockOrderNode>();
				while (!todo_nodes.isEmpty()) {
					PartialBlockOrderNode current = todo_nodes.pop();
					todo.removeAll(current.getElements());
					done_nodes.add(current);
					for (PartialBlockOrderNode suc : current.getSuccessors()) {
						if (!todo_nodes.contains(suc) && !done_nodes.contains(suc)) {
							todo_nodes.add(suc);
						}
					}
				}
			}

		}
		return coveredBlocks;
	}

	/**
	 * Tries to cover target. Returns a path if there is one, or null otherwise.
	 * 
	 * @param prover
	 * @param tr
	 * @param target
	 * @return path or null.
	 */
	private HashSet<BasicBlock> checkBlock(Prover prover, JodTransitionRelation tr, BasicBlock target) {

		HashSet<BasicBlock> paths = new HashSet<BasicBlock>();
		HashSet<BasicBlock> allPaths = pickAllPath(tr, target);

		ProverResult res = null;
		
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
				HashSet<BasicBlock> sat_path = getPathFromModel(prover, tr, allPaths);
				// Pop the prover
				prover.pop();
				// Add the concrete
				paths.addAll(sat_path);
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
				HashSet<BasicBlock> sat_path = getPathFromModel(prover, tr, paths);
				// Pop the solver
				prover.pop();
				// Return
				return sat_path;
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
	
	private HashMap<BasicBlock, HashMap<CfgVariable, Integer>> findMaxIncarnationPerBlock(BasicBlock root) {
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		
		HashMap<BasicBlock, HashMap<CfgVariable, Integer>> globalIncarnation = new HashMap<BasicBlock, HashMap<CfgVariable,Integer>>();
		
		todo.add(root);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.removeFirst();
			
			if (!globalIncarnation.containsKey(current)) {
				globalIncarnation.put(current, new HashMap<CfgVariable, Integer>(current.getLocalIncarnationMap()));				
			}
			
			boolean allPreVisited = true;
			for (BasicBlock pre : current.getPredecessors()) {
				if (!done.contains(pre)) {
					allPreVisited = false; break;
				}
				for (Entry<CfgVariable, Integer> entry : globalIncarnation.get(pre).entrySet()) {
					if (!globalIncarnation.get(current).containsKey(entry.getKey())) {
						globalIncarnation.get(current).put(entry.getKey(), entry.getValue());
					} else {
						if (globalIncarnation.get(current).get(entry.getKey()) < entry.getValue()) {
							globalIncarnation.get(current).put(entry.getKey(), entry.getValue());
						} else if (globalIncarnation.get(current).get(entry.getKey()) > entry.getValue()) {
//							System.err.println(entry.getKey().getVarname() + " from "+ entry.getValue() + " to "+globalIncarnation.get(current).get(entry.getKey()) );
						}
					}
				}
			}
			if (!allPreVisited) {
				todo.addLast(current);
				continue;
			}
			done.add(current);
			for (BasicBlock b : current.getSuccessors()) {
				if (!todo.contains(b) && !done.contains(b)) {
					todo.addLast(b);
				}
			}
		}
		return globalIncarnation;
	}

	/**
	 * Find all variables that can be modified on paths between start and end.
	 * @param start
	 * @param end
	 * @return
	 */
	private HashSet<CfgVariable> findModifiedBetween(BasicBlock start, BasicBlock end) {
		HashSet<CfgVariable> result = new HashSet<CfgVariable>();
		HashSet<BasicBlock> blocks = new HashSet<BasicBlock>();
		if (findAllPathBetween(start, end, blocks)) {
			blocks.add(end); //include the last block.
			for (BasicBlock b : blocks) {
				for (Entry<CfgVariable, Integer> entry : b.localIncarnationMap.entrySet()) {
					if (entry.getValue()>0) {
						result.add(entry.getKey());
//						System.err.println(entry.getKey().getVarname() + " : "+ entry.getValue());
					}
				}
			}
		}
		return result;
	}
	
	/**
	 * find the set of all blocks that are on paths between start and end.
	 * @param start
	 * @param end
	 * @param visited
	 * @return
	 */
	private boolean findAllPathBetween(BasicBlock start, BasicBlock end, HashSet<BasicBlock> visited) {
		if (start==end) return true;
		boolean found = false;
		for (BasicBlock suc : start.getSuccessors()) {
			if (findAllPathBetween(suc, end, visited)) {
				visited.add(start);
				found = true;
			}
		}		
		return found;
	}
	
	
	/**
	 * Find path between start and end excluding end. 
	 * @param start
	 * @param end
	 * @param visited
	 * @param forbiddenBlocks 
	 * @return
	 */
	private boolean findPathBetween(BasicBlock start, BasicBlock end, LinkedList<BasicBlock> visited, HashSet<BasicBlock> forbiddenBlocks) {
		if (start==end) return true;
		for (BasicBlock suc : start.getSuccessors()) {
			if (forbiddenBlocks.contains(suc)) continue;
			if (findPathBetween(suc, end, visited, forbiddenBlocks)) {
				visited.add(start);
				return true;
			}
		}		
		return false;
	}

	/**
	 * Find all variables that are modified on any path in blocks between start and end, excluding end.
	 * @param start
	 * @param end
	 * @param blocks
	 * @return
	 */
	private HashSet<CfgVariable> findModifiedVariablesBetween(BasicBlock start, BasicBlock end, HashSet<BasicBlock> blocks) {
		HashSet<CfgVariable> result = new HashSet<CfgVariable>();
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		todo.add(start);		
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();		
			for (Entry<CfgVariable, Integer> entry : current.getLocalIncarnationMap().entrySet()) {
				if (entry.getValue()>0) {
					result.add(entry.getKey());
				}
			}
			done.add(current);
			for (BasicBlock next : current.getSuccessors()) {				
				if (next!=end && blocks.contains(next) && !done.contains(next) && !todo.contains(next)) {
					todo.add(next);
				}
			}
		}
		return result;
	}
	
	/**
	 * Returns the set of all blocks reachable from start that are not in paths but 
	 * have at least one successor in paths.
	 * @param start
	 * @param paths
	 * @param all_paths
	 * @return
	 */
	private HashSet<BasicBlock> findBlockThatJoinIntoPaths(BasicBlock start, HashSet<BasicBlock> paths, HashSet<BasicBlock> all_paths) {
			
		HashSet<BasicBlock> result = new HashSet<BasicBlock>();
		
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		todo.add(start);		
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		done.addAll(start.getPredecessors());
				
		while (!todo.isEmpty()) {
			BasicBlock current = todo.removeFirst();
			done.add(current);		
			for (BasicBlock s : current.getSuccessors()) {
				if (!todo.contains(s) && !done.contains(s)) {
					if (paths.contains(s)) {
						result.add(current);
					} else {
						//make sure that we do not add anything
						//that can bypass the block that we are analyzing.
						if (all_paths.contains(s)) todo.add(s);
					}					
				}
			}
		}
		return result;
	}

	/**
	 * Find the first assume statement in the block b.
	 * @param b
	 * @return first assume statement or null if none exists
	 */
	private CfgStatement findFirstAssume(BasicBlock b) {
		for (CfgStatement s : b.getStatements()) {
			if (s instanceof CfgAssumeStatement)
				return s;
		}
		return null;
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
				assertion = prover.mkEq(
						tr.getReachabilityVariables().get(block), 
						prover.mkAnd(tr.blockTransitionReleations.get(block), next)
					);
			} else {
				assertion = prover.mkEq(tr.getReachabilityVariables().get(block), next);
				
			}
			
			// Assert it
			prover.addAssertion(assertion);
		}
//		if (paths.size() > 0) {
			// assert that the path is feasible by saying that the first block
			// must have an execution.
			prover.addAssertion(tr.getReachabilityVariables().get(tr.getProcedure().getRootNode()));
//		}
	}

	/**
	 * Pick the next block that we want to cover from notCovered
	 * 
	 * @param notCovered
	 * @return
	 */
	private BasicBlock pickBlockToCover(List<BasicBlock> notCovered) {
		// pick one node that we want to cover.
		BasicBlock toCover = notCovered.get(0);
		return toCover;
	}

	/**
	 * Pick a random path through the block toCover that we want to cover.
	 * 
	 * @param tr
	 * @param toCover
	 * @return
	 */
	private HashSet<BasicBlock> pickCompletePath(JodTransitionRelation tr,
			BasicBlock toCover) {
		LinkedList<BasicBlock> path = new LinkedList<BasicBlock>();
		Random rand = new Random();
		path.add(toCover);
		// collect a random prefix
		BasicBlock current = toCover;
		while (current != tr.getProcedure().getRootNode()) {
			int rnd = rand.nextInt(current.getPredecessors().size());
			int i = 0;
			for (BasicBlock b : current.getPredecessors()) {
				if (rnd == i++) {
					current = b;
					path.addFirst(current);
					break;
				}
			}
		}
		// collect a random suffix
		current = toCover;
		while (current != tr.getProcedure().getExitNode()) {
			int rnd = rand.nextInt(current.getSuccessors().size());
			int i = 0;
			for (BasicBlock b : current.getSuccessors()) {
				if (rnd == i++) {
					current = b;
					path.add(current);
					break;
				}
			}
		}

		return new HashSet<BasicBlock>(path);
	}

	/**
	 * Collects all paths that must go through toCover
	 * 
	 * @param tr
	 * @param toCover
	 * @return
	 */
	private HashSet<BasicBlock> pickAllPath(JodTransitionRelation tr,
			BasicBlock toCover) {
		HashSet<BasicBlock> path = new HashSet<BasicBlock>();

		path.add(toCover);
		// collect a random prefix

		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();

		todo.addAll(toCover.getPredecessors());
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			path.add(current);
			for (BasicBlock pre : current.getPredecessors()) {
				if (!todo.contains(pre) && !path.contains(pre)) {
					todo.add(pre);
				}
			}
		}
		// collect a random suffix

		todo.addAll(toCover.getSuccessors());
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			path.add(current);
			for (BasicBlock suc : current.getSuccessors()) {
				if (!todo.contains(suc) && !path.contains(suc)) {
					todo.add(suc);
				}
			}
		}

		return path;
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

		// for (Entry<BasicBlock, ProverExpr> entry :
		// tr.getReachabilityVariables().entrySet()) {
		// final ProverExpr pe = entry.getValue();
		// if (prover.evaluate(pe).getBooleanLiteralValue()) {
		// blocksInModel.add(entry.getKey());
		// }
		// }

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