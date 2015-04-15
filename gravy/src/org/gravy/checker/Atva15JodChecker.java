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
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;

import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverResult;
import org.gravy.prover.princess.PrincessProver;
import org.gravy.report.InfeasibleReport;
import org.gravy.report.Report;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.util.Log;
import org.gravy.util.Statistics;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.Atva15TransitionRelation;
import org.joogie.cfgPlugin.Util.Dag;

import ap.parser.IFormula;
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
public class Atva15JodChecker extends AbstractChecker {

	public Atva15JodChecker(AbstractControlFlowFactory cff, CfgProcedure p, Prover prover) {
		super(cff, p);
		this.prover = prover;
	}
	
	/**
	 * @param cff
	 * @param p
	 */
	public Atva15JodChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);

		p.pruneUnreachableBlocks();

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		//System.err.println("unwind loops");
		AbstractLoopUnwinding.unwindeLoops(p);
		p.pruneUnreachableBlocks();

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
		Atva15TransitionRelation tr = (Atva15TransitionRelation) atr;

		
		
		Statistics.HACK_effectualSetSize = tr.getEffectualSet().size();

		// now exclude all feasible paths that may violate the postcondition
		// compute the feasible path cover under the given postcondition
		try {
			feasibleBlocks = new HashSet<BasicBlock>(computeJodCover(prover,
					tr, new HashSet<BasicBlock>(), 0));
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

	Atva15TransitionRelation transRel;
	int phase;
	
	//hacky hack
	public HashSet<BasicBlock> dangerousBlocks = new HashSet<BasicBlock>();
	public HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>();
	
	public Collection<BasicBlock> computeJodCover(Prover prover,
			Atva15TransitionRelation tr, Set<BasicBlock> alreadyCovered, int phase) {

		this.transRel = tr;
		this.phase = phase;
		this.coveredBlocks = new HashSet<BasicBlock>(alreadyCovered);
	
		// add the basic prelude stuff that is needed for every check.
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms()
				.entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		prover.addAssertion(tr.getRequires());
		prover.addAssertion(tr.getEnsures());

		PartialBlockOrderNode poRoot = tr.getHasseDiagram().getRoot();
				
		while (this.phase < 2) {
			if (this.phase == 0) {
				coveredBlocks.addAll(findFeasibleBlocks2(prover, tr, poRoot, new HashSet<BasicBlock>(coveredBlocks)));
			} else if (this.phase == 1) {
				//we have to clear a bunch of fields because they might no longer be true. This will cost us some performance.
				//TODO:
				this.knownInfeasibleNodes = new HashSet<PartialBlockOrderNode>();
				//we also throw away the learned conflicts ... which might be a bit aggressive.
				learnedConflicts = new HashSet<Set<BasicBlock>>();
				
				dangerousBlocks.addAll(findFeasibleBlocks2(prover, tr, poRoot, new HashSet<BasicBlock>(coveredBlocks)));				
			}
			this.phase ++;
		}

		dangerousBlocks.removeAll(coveredBlocks);
		
		return coveredBlocks;
	}	
	
	HashSet<PartialBlockOrderNode> knownInfeasibleNodes = new HashSet<PartialBlockOrderNode>(); 

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
	private HashSet<BasicBlock> findFeasibleBlocks2(Prover prover, Atva15TransitionRelation tr, PartialBlockOrderNode node, Set<BasicBlock> alreadyCovered) {
		if (node.getSuccessors().size()>0) {
			boolean allChildrenInfeasible = true;
			HashSet<BasicBlock> result = new HashSet<BasicBlock>();
			for (PartialBlockOrderNode child : node.getSuccessors()) {
				Set<BasicBlock> res = findFeasibleBlocks2(prover, tr, child, alreadyCovered);
				result.addAll(res);
				if (!res.isEmpty()) allChildrenInfeasible = false;
				//check if we have proved this node to be infeasible
				if (knownInfeasibleNodes.contains(node)) return new HashSet<BasicBlock>();
			}
			if (allChildrenInfeasible) knownInfeasibleNodes.add(node);
			return result;			
		} else {
			HashSet<BasicBlock> result = new HashSet<BasicBlock>(alreadyCovered);
			if (alreadyCovered.contains(node.getElements())) return result;
			result.addAll(tryToFindConflictInPO(prover, tr, node, 0));
			return result;
		}
	}

	


	
/*
 * ---------------------------- Plan B --------------------------------
 */
	
	private Set<BasicBlock> tryToFindConflictInPO(Prover prover, Atva15TransitionRelation tr, PartialBlockOrderNode node, int timeout) {	
		//pick any
		learnedConflicts.clear();
		BasicBlock current = node.getElements().iterator().next();
		try {
			Set<BasicBlock> res = null;
			//find the first one cheap.
			Set<BasicBlock> path = up(current, current, new HashSet<BasicBlock>());
			
			while (path!=null) {
				if (checkPath(current, path)) {
					return path;
				}
				path = findNextPath(current);
			}
			
//			Set<BasicBlock> res = up(current, current, new HashSet<BasicBlock>());
			if (path==null) {
				Log.debug("Cool ... learned stuff from conflict.");
				res = new HashSet<BasicBlock>();
			}
			return res;
		} catch (HackInfeasibleException e){
			this.knownInfeasibleNodes.add(node);
			Log.debug("YEAH");
		}
		return new HashSet<BasicBlock>();
	}
	
	private Set<BasicBlock> up(BasicBlock b, BasicBlock source, Set<BasicBlock> path) throws HackInfeasibleException {		
		Set<BasicBlock> path_ = new HashSet<BasicBlock>(path);
		path_.add(b);
		if (isInLearnedConflicts(path_)) return null;
		if (b!= this.procedure.getRootNode()) {
			for (BasicBlock x : b.getPredecessors()) {
				Set<BasicBlock> result = up(x, source, path_);
				if (result!=null) return result;
			}
		} else {
			Set<BasicBlock> result = down(source, source, path_);
			if (result!=null) return result;
		}
		return null;
	}

	private Set<BasicBlock> down(BasicBlock b, BasicBlock source, Set<BasicBlock> path) throws HackInfeasibleException {
		Set<BasicBlock> path_ = new HashSet<BasicBlock>(path);		
		path_.add(b);
		if (isInLearnedConflicts(path_)) return null;
		if (b!= this.procedure.getExitNode()) {
			for (BasicBlock x : b.getSuccessors()) {
				Set<BasicBlock> result = down(x, source, path_);
				if (result!=null) return result;
			}
		} else {
			//ignore paths that are already known conflicts.
			if (isInLearnedConflicts(path_)) return null;
			
//			if (checkPath(source, path_)) {
				return path_;
//			}
		}
		return null;
	}
	
	private boolean isInLearnedConflicts(Set<BasicBlock> path) {		
		for (Set<BasicBlock> conflict : learnedConflicts) {
			if (conflict.size()>0 && path.size()>conflict.size() && path.containsAll(conflict) ) {
//				System.err.print("Skipping path with known conflict: ");
//				for (BasicBlock b : conflict) {
//					System.err.print(b.getLabel()+", ");
//				}
//				System.err.println();
				return true;
			}
		}	
		return false;
	}
	
	public class HackInfeasibleException extends Exception {
		
	}
	
	Set<Set<BasicBlock>> learnedConflicts = new HashSet<Set<BasicBlock>>();
	
	private boolean checkPath(BasicBlock source, Set<BasicBlock> path) throws HackInfeasibleException {
		
		prover.push();
		if (this.phase==0) {
			//then add enable all assertions.
			prover.addAssertion(prover.mkNot(this.transRel.assertionFlag));
		}
		for (BasicBlock b : path) {
			prover.addAssertion(this.transRel.blockTransitionReleations.get(b));			
		}
		ProverResult res = prover.checkSat(true);
		prover.pop();
		if (res == ProverResult.Sat) {
			Log.debug("\tSAT");
			return true;
		} else if (res == ProverResult.Unsat) {
			Log.debug("\tUNST");
			int oldsize = path.size();
			computePseudoUnsatCore(path);
			learnedConflicts.add(new HashSet<BasicBlock>(path));
			if (oldsize==path.size()) {
				Log.debug("nothing could be removed");
				return false;
			}
			Set<BasicBlock> inevitableBlocks = findNodeThatMustBePassed(this.transRel.getHasseDiagram().findNode(source));
			if (inevitableBlocks.containsAll(path)) {
				Log.debug("FOUND CONFLICT! DONE"); 
				markSmallestSubtreeInfeasible(path);
				throw new HackInfeasibleException();
			} else {
				Log.debug("nothing learned. Looking for next path.");
			}
		} else {
			throw new RuntimeException("PROVER FAILED");
		}
		return false;
	}
	
		
	private void computePseudoUnsatCore(Set<BasicBlock> path) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>(path);
		Log.debug("computing pseudo unsat core");
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			path.remove(current);
			prover.push();
			for (BasicBlock b : path) {
				prover.addAssertion(this.transRel.blockTransitionReleations.get(b));			
			}
			ProverResult res = prover.checkSat(true);
			prover.pop();
			if (res == ProverResult.Sat) {
				path.add(current); //then we needed this one
			} else if (res == ProverResult.Unsat) {
				//otherwise, we can remove it.
			} else {
				throw new RuntimeException("PROVER FAILED");
			}		
		}
	}
	
	private Set<BasicBlock> findNodeThatMustBePassed(PartialBlockOrderNode node) {
		if (node==null) return new HashSet<BasicBlock>();		
		Set<BasicBlock> result = findNodeThatMustBePassed(node.getParent());
		result.addAll(node.getElements());
		return result;		
	}
	
	private void markSmallestSubtreeInfeasible(Set<BasicBlock> unsatCore) {
		PartialBlockOrderNode lowest = this.transRel.getHasseDiagram().getRoot();
		for (BasicBlock b : unsatCore) {
			PartialBlockOrderNode current = this.transRel.getHasseDiagram().findNode(b);
			if (isAbove(current, lowest)) {
				lowest = current;
			}
		}	
		LinkedList<PartialBlockOrderNode> todo = new LinkedList<PartialBlockOrderNode>();
		todo.add(lowest);
		while (!todo.isEmpty()) {
			PartialBlockOrderNode current = todo.pop();
			this.knownInfeasibleNodes.add(current);
			todo.addAll(current.getSuccessors());
		}
		
	}

	private boolean isAbove(PartialBlockOrderNode child, PartialBlockOrderNode parent) {
		PartialBlockOrderNode node = child;
		while (node!=null) {
			if (node==parent) return true;
			node = node.getParent();
		}
		return false;
	}
	
	
/*
 * ================ stuff to find path with sat solver ===================== 	
 */

	/**
	 * returns all nodes that occur on paths through b
	 * @param b
	 * @return
	 */
	private Set<BasicBlock> getSubprogContaining(BasicBlock b) {
		Set<BasicBlock> knownInfeasibleBlocks = getKnownInfeasibleBlocks();
		
		
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
				
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
	
	private ProverExpr mkDisjunction(Atva15TransitionRelation tr, Collection<BasicBlock> blocks) {
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
	 * Get a complete and feasible path from the model produced by princes.
	 * 
	 * @param prover
	 * @param tr
	 * @param necessaryNodes one of these nodes needs to be in the path
	 * @return
	 */
	private HashSet<BasicBlock> getPathFromModel(Prover prover, Atva15TransitionRelation tr, Set<BasicBlock> allBlocks, Set<BasicBlock> necessaryNodes) {
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
//		toDot("path_error.dot", new HashSet<BasicBlock>(allBlocks), new HashSet<BasicBlock>(enabledBlocks), new HashSet<BasicBlock>(necessaryNodes));
		throw new RuntimeException("Could not find a path");
	}

	private Set<BasicBlock> findNextPath(BasicBlock current) {
		Log.debug("Finding next path");
		Set<BasicBlock> blocks = this.getSubprogContaining(current);
		
		prover.push();
		//assert this subprogram.
//		assertAbstractaPath(blocks);
		
		assertAbstractaPathCfGTheory(blocks);
		
		prover.addAssertion(transRel.getReachabilityVariables().get(current));		
		//block all learned conflicts
		Log.debug("Asserting "+this.learnedConflicts.size()+" conflicts");
		for (Set<BasicBlock> conflict : this.learnedConflicts) {
			ProverExpr[] conj = new ProverExpr[conflict.size()];
			int i=0;
			for (BasicBlock b : conflict) {
				conj[i++] = this.transRel.getReachabilityVariables().get(b);
			}
			prover.addAssertion(prover.mkNot(prover.mkAnd(conj)));
		}
		Log.debug("Checking for path.");		
		ProverResult res = prover.checkSat(true);
		if (res == ProverResult.Sat) {
			HashSet<BasicBlock> necessaryNodes = new HashSet<BasicBlock>();
			necessaryNodes.add(current);
			Set<BasicBlock> path = this.getPathFromModel(prover, transRel, blocks, necessaryNodes);
			prover.pop();
			Log.debug("Found one.");
			return path;
		} else if (res == ProverResult.Unsat) {
			prover.pop();
			//otherwise, we can remove it.
		} else {
			throw new RuntimeException("PROVER FAILED");
		}	
		Log.debug("Found NONE.");
		return null;
	}
	
	

	private void assertAbstractaPathCfGTheory(Set<BasicBlock> blocks) {
		LinkedHashMap<ProverExpr, ProverExpr> ineffFlags = new LinkedHashMap<ProverExpr, ProverExpr>();
		for (BasicBlock block : blocks) {
			ProverExpr v = transRel.getReachabilityVariables().get(block);
			ineffFlags.put(v, prover.mkVariable("" + v + "_flag",
					prover.getBooleanType()));
		}
		Dag<IFormula> vcdag = transRel.getProverDAG();

		LinkedList<ProverExpr> remainingBlockVars = new LinkedList<ProverExpr>();
		LinkedList<ProverExpr> remainingIneffFlags = new LinkedList<ProverExpr>();
		for (Entry<ProverExpr, ProverExpr> entry : ineffFlags.entrySet()) {
			remainingBlockVars.add(entry.getKey());
			remainingIneffFlags.add(entry.getValue());
		}

		((PrincessProver) prover).setupCFGPlugin(vcdag, remainingBlockVars,
				remainingIneffFlags, 1);
		
		
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
					transRel.getReachabilityVariables().get(block), mkDisjunction(transRel, successors)
				);
			
			// Assert it
			prover.addAssertion(assertion);
			
//			//now assert bwd
//			LinkedList<BasicBlock> predecessors = new LinkedList<BasicBlock>();
//			for (BasicBlock pred : block.getPredecessors()) {
//				if (blocks.contains(pred)) {
//					predecessors.add(pred);
//				} 
//			}
//			
//			assertion = prover.mkImplies(
//					transRel.getReachabilityVariables().get(block), 
//					mkDisjunction(transRel, predecessors)
//				);
//			
//			// Assert it
//			prover.addAssertion(assertion);			
		}


		prover.addAssertion(transRel.getReachabilityVariables().get(transRel.getProcedure().getRootNode()));
		prover.addAssertion(transRel.getReachabilityVariables().get(transRel.getProcedure().getExitNode()));
		//System.err.println("Entries "+count);
	}
	
	
}