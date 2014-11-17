/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;

import javax.management.RuntimeErrorException;

import org.gravy.Options;
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

/**
 * @author schaef
 * 
 */
public class JodChecker extends AbstractChecker {

	/** Debug output */ 
	boolean debugOutput = false;
	
	/**
	 * @param cff
	 * @param p
	 */
	public JodChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);

		// Set debug output 
		debugOutput = Options.v().getDebugMode();

		p.pruneUnreachableBlocks();

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		AbstractLoopUnwinding.unwindeLoops(p);
		p.pruneUnreachableBlocks();

		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.computeSSA(p);

		p.pruneUnreachableBlocks();
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
		if (blocks.size() == 0) {
			return prover.mkLiteral(false);
		}
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
		if (blocks.size() == 0) {
			return prover.mkLiteral(true);
		}
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
		if (input.size() == 0) {
			return prover.mkLiteral(true);
		}
		ProverExpr[] conjuncts = new ProverExpr[input.size()];
		conjuncts = input.toArray(conjuncts);
		if (conjuncts.length == 1) {
			return conjuncts[0];
		} else {  
			return prover.mkAnd(conjuncts);
		}
	}

	/**
	 * Add the axioms of the transition relation to the prover.
	 * @param tr
	 */
	protected void addAxioms(JodTransitionRelation tr) {
		// Basic prelude stuff 
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		// Pre- and post- conditions
		prover.addAssertion(tr.getRequires());
		prover.addAssertion(tr.getEnsures());		
	}
	
	HashSet<BasicBlock> getFirstClosure(JodTransitionRelation tr, HashSet<BasicBlock> allBlocks, HashSet<BasicBlock> toCover) {
		HashSet<BasicBlock> current = new HashSet<BasicBlock>();
		current.add(toCover.iterator().next());
		
		// Keep adding stuff until fixpoint
		while (true) {
			int oldSize = current.size();
			
			// Get nodes reachable from the current set
			HashSet<BasicBlock> reachable = new HashSet<BasicBlock>();
			reachable.addAll(getReachable(tr, current, allBlocks, ReachabilityType.FORWARD));
			reachable.addAll(getReachable(tr, current, allBlocks, ReachabilityType.BACKWARD));
			
			// Add all reachable nodes to current
			reachable.retainAll(toCover);
			current.addAll(reachable);
			
			// If no new added, we're done
			if (oldSize == current.size()) {
				break;
			}
		}
		
		return current;
	}
	
	private HashSet<BasicBlock> getMinimalClosedSet(JodTransitionRelation tr, HashSet<BasicBlock> allBlocks, HashSet<BasicBlock> todo) {
		HashSet<BasicBlock> toCover = getFirstClosure(tr, allBlocks, todo);
		HashSet<BasicBlock> otherToCover = new HashSet<BasicBlock>(todo);
		otherToCover.removeAll(toCover);
		if (otherToCover.size() > 0) {
			otherToCover = getMinimalClosedSet(tr, allBlocks, otherToCover);
			if (otherToCover.size() < toCover.size()) {
				return otherToCover;
			} else {
				return toCover;
			}
		} else {
			return toCover;
		}
		
	}

	/** How many infeasible result per procedure */
	private int infeasibleCount = 0;
	
	/** A path */
	public class Path extends LinkedList<BasicBlock> {
		private static final long serialVersionUID = 1L;
	}
	
	/** A set of paths */
	public class PathSet extends HashSet<Path> {
		private static final long serialVersionUID = 1L;
	}
	
	protected HashSet<BasicBlock> computeJodCoverDirect(JodTransitionRelation tr, HashSet<BasicBlock> allBlocks) {

		// Result: all nodes we managed to cover
		HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>();

		// Queue of block to process
		LinkedList<BasicBlock> blockQueue = new LinkedList<BasicBlock>();

		// Map from block to the feasible paths that end in the block
		HashMap<BasicBlock, PathSet> blockPaths = new HashMap<BasicBlock, PathSet>();
				
		// Map from block to their in-degrees (of unprocessed nodes)
		HashMap<BasicBlock, Integer> blockDegree = new HashMap<BasicBlock, Integer>();
		for (BasicBlock block : allBlocks) {
			int degree = block.getPredecessors().size();
			blockDegree.put(block, degree);
			if (degree == 0) {
				blockQueue.addFirst(block);
				Path path = new Path();
				path.addLast(block);
				PathSet pathSet = new PathSet();
				pathSet.add(path);
				blockPaths.put(block, pathSet);
			}
		}
			
		Log.info("To cover: " + allBlocks.size());
		
		HashSet<BasicBlock> processed = new HashSet<BasicBlock>();
		
		// Process the nodes 
		while (!blockQueue.isEmpty()) {

			// Get the next block to process
			BasicBlock block = blockQueue.removeFirst();
			processed.add(block);
			
			if (blockPaths.containsKey(block)) {
				
				// The paths leading into block
				PathSet paths = blockPaths.get(block);
	
				Log.info("paths: " + paths.size());
				
				// Extend all the paths
				for (Path path : paths) {

					// Extend this path for each successor
					for (BasicBlock succ : block.getSuccessors()) {

						// The new path
						Path succPath = new Path();
						succPath.addAll(path);
						succPath.addLast(succ);
					
						// Existing paths 
						PathSet succExistingPaths = null;
						if (blockPaths.containsKey(succ)) {
							succExistingPaths = blockPaths.get(succ);
						} else {
							succExistingPaths = new PathSet();
						}

						// Check the path
						if (isFeasibleAndNew(tr, succPath, succExistingPaths)) {
							succExistingPaths.add(succPath);
							blockPaths.put(succ, succExistingPaths);
						} 
					}
				}
			}

			// Extend this path for each successor
			for (BasicBlock succ : block.getSuccessors()) {
				// Done with this edge
				int succDegree = blockDegree.get(succ) - 1;
				blockDegree.put(succ, succDegree);
				if (succDegree == 0) {
					blockQueue.addLast(succ);
				}
			}

			if (block != tr.getProcedure().getExitNode()) {
				blockPaths.remove(block);
			}
			
			Log.info("processed: " + processed.size());
		}
		
		// Get the paths of the exit node
		BasicBlock exit = tr.getProcedure().getExitNode();
	
		if (blockPaths.containsKey(exit)) {
			PathSet paths = blockPaths.get(exit);
			for (Path path : paths) {
				coveredBlocks.addAll(path);
			}
		}

		Log.info("covered: " + coveredBlocks.size());

		// Return the covered blocks
		return coveredBlocks;
	}
	
	private ProverExpr getPathFormula(JodTransitionRelation tr, Path path) {
		if (path.size() == 0) {
			return prover.mkLiteral(true);
		}
		ProverExpr[] conjuncts = new ProverExpr[path.size()];
		int i = 0;
		for (BasicBlock block : path) {
			conjuncts[i] = tr.blockTransitionReleations.get(block);
			i ++;
		}
		if (conjuncts.length == 1) {
			return conjuncts[0];
		} else {
			return prover.mkAnd(conjuncts);
		}
	}
	
	private boolean isFeasibleAndNew(JodTransitionRelation tr, Path path, PathSet existingPaths) {

		// Something different from existing paths
		if (existingPaths != null) {
			HashSet<BasicBlock> covered = new HashSet<BasicBlock>();
			for (Path existingPath : existingPaths) {
				covered.addAll(existingPath);
			}
			int size = covered.size();
			covered.addAll(path);
			if (size == covered.size()) {
				return false;
			}
		}

		prover.push();
		
		// Current path to check
		prover.addAssertion(getPathFormula(tr, path));
				
		ProverResult res = prover.checkSat(true);
		switch (res) {
			case Sat:
			case Unsat:
				break;
			default:
				throw new RuntimeException("Hella problems!");
		}
		
		prover.pop();
				
		return res == ProverResult.Sat;
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

		// Reset the counter
		infeasibleCount = 0;
		
		// Add the initial non-changing stuff to the prover
		addAxioms(tr);

		// Result: all nodes we managed to cover
		HashSet<BasicBlock> coveredBlocks = computeJodCoverDirect(tr, allBlocks);

		// The nodes we need to cover
		HashSet<BasicBlock> todo = new HashSet<BasicBlock>(allBlocks);
		todo.removeAll(coveredBlocks);
				
		while (!todo.isEmpty()) {

			// Compute a self contained group of nodes to cover
			HashSet<BasicBlock> toCover = getFirstClosure(tr, allBlocks, todo);
			Log.info("Number of remaining blocks " + todo.size() + " (" + toCover.size() + ")");

			// Remove from allBlocks the blocks that have no paths to or from 
			// blocks still in need of a cover		
			HashSet<BasicBlock> reachable = new HashSet<BasicBlock>();
			reachable.addAll(getReachable(tr, toCover, allBlocks, ReachabilityType.FORWARD));
			reachable.addAll(getReachable(tr, toCover, allBlocks, ReachabilityType.BACKWARD));
			

			// Check the abstraction path
			prover.push();
			assertPaths(prover, tr, reachable, reachable, toCover);
			ProverResult res = prover.checkSat(true);
			
			// The path, if satisfiable
			LinkedList<BasicBlock> satPath = null;

			switch (res) {
			case Sat: 
				// The concretization path
				satPath = getPathFromModel(prover, tr, reachable, toCover);
				// Pop the prover
				prover.pop();
				break;
			case Unsat:
				// Pop the solver
				prover.pop();
				// Done, infeasible
				satPath = null;
				break;
			default:
				// God knows what happened
				throw new RuntimeException("Prover failed with " + res);						
			}

			if (satPath != null) {
				if (debugOutput) System.err.println("Found path of length " + satPath.size());

				// Remove from todos
				int oldSize = todo.size();
				todo.removeAll(satPath);
				if (oldSize == todo.size()) {
					throw new RuntimeException("New path did not eliminate a block");
				}
				
				coveredBlocks.addAll(satPath);
				// Add to covered
			} else {
				// No feasible paths in chunk
			    todo.removeAll(toCover);
			    allBlocks.removeAll(toCover);
			    infeasibleCount ++;
			}
		}
		
		return coveredBlocks;
	}

	/**
	 * Take a concrete path and remove block from front and back wile keeping 
	 * infeasibility.
	 */
	private HashSet<BasicBlock> minimizeInfeasiblePath(JodTransitionRelation tr, LinkedList<BasicBlock> originalPath, Collection<BasicBlock> keep) {

		HashSet<BasicBlock> path = new HashSet<BasicBlock>(originalPath);
		
		if (debugOutput) System.err.println("\t full : " + path.size());
		
		// Minimize from the front
		for (BasicBlock block : originalPath) {

			// Always keep nodes in the keep set
			if (keep != null && keep.contains(block)) {
				continue;
			}
			
			path.remove(block);
			
			prover.push();
			assertPaths(prover, tr, path, originalPath, null);
			ProverResult res = prover.checkSat(true);
			prover.pop();
			
			if (res == ProverResult.Sat) {
				// Feasible without this one, add it back
				path.add(block);				
			}			
		}

		if (debugOutput) System.err.println("\t minimal : " + path.size());
		
		return path;
	}
	
	/**
	 * Tries to find one more feasible path. Returns a path if there is one, or null otherwise.
	 * @allPaths all possible paths
	 */
	private LinkedList<BasicBlock> getFeasiblePath(JodTransitionRelation tr, HashSet<BasicBlock> allBlocks, HashSet<BasicBlock> blocksToCover) {
		
		ProverResult res = null;
		LinkedList<BasicBlock> satPath = null;
		HashSet<BasicBlock> concreteBlocks = new HashSet<BasicBlock>(allBlocks);

		try {
						
			// Try abstract paths in succession until one is found
			while (true) {

				// Let us see what was the haps
				if (debugOutput) {
					toDot("getFeasiblePath" + infeasibleCount + ".dot", allBlocks, concreteBlocks, blocksToCover);
				}
				
				// Check the abstraction path
				prover.push();
				assertPaths(prover, tr, concreteBlocks, allBlocks, blocksToCover);
				if (debugOutput) System.err.print("abstraction [" + concreteBlocks.size() + "/" + allBlocks.size() + "] : ");
				res = prover.checkSat(true);
				if (debugOutput) System.err.println(res);

				switch (res) {
				case Sat: 
					// The concretization path
					satPath = getPathFromModel(prover, tr, allBlocks, blocksToCover);
					// Pop the prover
					prover.pop();
					break;
				case Unsat:
					// Pop the solver
					prover.pop();
					// Done, infeasible
					return null;
				default:
					// God knows what happened
					throw new RuntimeException("Prover failed with " + res);						
				}
								
				// Check the current concrete path
				prover.push();
				assertPaths(prover, tr, satPath, satPath, null);
				if (debugOutput) System.err.print("concrete   : ");
				res = prover.checkSat(true);
				if (debugOutput) System.err.println(res);
				
				switch (res) {
				case Sat:
					// Pop the solver
					prover.pop();
					// Return
					return satPath;
				case Unsat:
					// Pop the solver
					prover.pop();
					// Concretize the infeasible path into the abstraction
					concreteBlocks.addAll(minimizeInfeasiblePath(tr, satPath, null));
					break;
				default:
					// God knows what happened
					throw new RuntimeException("Prover failed with " + res);						
				}
			}
		} catch (Exception e) {
			// Let us see what was the haps
			toDot("findPath.dot", allBlocks, concreteBlocks, blocksToCover);
			throw e;
		}
	}

	private void spanConcretization(JodTransitionRelation tr, HashSet<BasicBlock> allBlocks, HashSet<BasicBlock> concreteBlocks) {
		HashSet<BasicBlock> concreteBlocksCopy = new HashSet<BasicBlock>(concreteBlocks);
		for (BasicBlock block : concreteBlocksCopy) {
			concreteBlocks.addAll(block.getSuccessors());
			concreteBlocks.addAll(block.getPredecessors());
		}
		concreteBlocks.retainAll(allBlocks);
	}

	/**
	 * Creates the assertions for princess. It assumes that all blocks in paths
	 * are connected.
	 * 
	 * @param prover
	 * @param tr
	 * @param concreteBlocks
	 */
	private void assertPaths(Prover prover, JodTransitionRelation tr, Collection<BasicBlock> concreteBlocks, Collection<BasicBlock> allBlocks, Collection<BasicBlock> necessaryBlocks) {

		boolean concretizeSucc = true;
		boolean concretizePred = true;

		HashSet<BasicBlock> toConcretize = new HashSet<BasicBlock>(concreteBlocks);
		
		// Encode each block
		for (BasicBlock block : allBlocks) {
			
			// Expression for the block
			ProverExpr blockVar = tr.getReachabilityVariables().get(block);
			
			// Constrain path to go through successors
			if (block != tr.getProcedure().getExitNode()) {
				HashSet<BasicBlock> successors = new HashSet<BasicBlock>(block.getSuccessors());
				successors.retainAll(allBlocks);
				prover.addAssertion(prover.mkImplies(blockVar, mkDisjunction(tr, successors)));				
				if (concretizeSucc && concreteBlocks.contains(block)) {
					toConcretize.addAll(successors);
				}
			}
			
			// Constrain path to go through predecessors
			if (block != tr.getProcedure().getRootNode()) {
				HashSet<BasicBlock> predecessors = new HashSet<BasicBlock>(block.getPredecessors());
				predecessors.retainAll(allBlocks);
				prover.addAssertion(prover.mkImplies(blockVar, mkDisjunction(tr, predecessors)));
				if (concretizePred && concreteBlocks.contains(block)) {
					toConcretize.addAll(predecessors);
				}			 
			}
		}

		// Concretize
		for (BasicBlock block : allBlocks) {
			ProverExpr blockVar = tr.getReachabilityVariables().get(block);			
			if (toConcretize.contains(block)) {
				prover.addAssertion(prover.mkImplies(blockVar, tr.blockTransitionReleations.get(block)));		
			} else {
				prover.addAssertion(prover.mkImplies(blockVar, tr.abstractTransitionReleations.get(block)));
			}
		}
		
		if (necessaryBlocks != null) {
			HashSet<BasicBlock> selection = new HashSet<BasicBlock>(necessaryBlocks);
			selection.retainAll(allBlocks);
			prover.addAssertion(mkDisjunction(tr, selection));
		}

	
		// Get the necessary block to form a path
		HashSet<BasicBlock> allBlocksCopy = new HashSet<BasicBlock>(allBlocks);
		for (BasicBlock block : allBlocks) {
			allBlocksCopy.remove(block);
			if (getPath(tr, tr.getProcedure().getRootNode(), tr.getProcedure().getExitNode(), allBlocksCopy) == null) {
				// We need this one
		     	prover.addAssertion(tr.getReachabilityVariables().get(block));			
			}
			allBlocksCopy.add(block);
		}
		
	}

	enum ReachabilityType {
		FORWARD,
		BACKWARD,
	};
	
	/** 
	 * Get the paths from start.
	 */
	private HashSet<BasicBlock> getReachable(JodTransitionRelation tr, HashSet<BasicBlock> start, HashSet<BasicBlock> vertices, ReachabilityType type) {

		// The reachable set
		HashSet<BasicBlock> reachable = new HashSet<BasicBlock>();
		reachable.addAll(start);
		
		// Compute the paths
		LinkedList<BasicBlock> queue = new LinkedList<BasicBlock>();
		queue.addAll(start);
		while (!queue.isEmpty()) {
			BasicBlock current = queue.removeFirst();
			if (type == ReachabilityType.FORWARD) {
				for (BasicBlock succ : current.getSuccessors()) {
					if (vertices.contains(succ) && !reachable.contains(succ)) {
						reachable.add(succ);
						queue.addLast(succ);
					}
				}
			}
			if (type == ReachabilityType.BACKWARD) {
				for (BasicBlock pred : current.getPredecessors()) {
					if (vertices.contains(pred) && !reachable.contains(pred)) {
						reachable.add(pred);
						queue.addLast(pred);
					}
				}				
			}
		}
		
		return reachable;
	}
	
	/**
	 * Get a path from node to node, through successors.
	 */
	private LinkedList<BasicBlock> getPath(JodTransitionRelation tr, BasicBlock start, BasicBlock end, Collection<BasicBlock> vertices) {

		if (!vertices.contains(start)) {
			return null;
		}

		if (!vertices.contains(end)) {
			return null;
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
	private LinkedList<BasicBlock> getPathFromModel(Prover prover, JodTransitionRelation tr, Collection<BasicBlock> allBlocks, Collection<BasicBlock> necessaryNodes) {
		
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
						blockToExit.removeFirst();
						rootToBlock.addAll(blockToExit);
						return rootToBlock;
					}
				}
			}
		}
		
		// Screwed
		toDot("path_error.dot", allBlocks, enabledBlocks, necessaryNodes);
		throw new RuntimeException("Could not find a path");
	}
	
}
