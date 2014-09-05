package org.gravy.loopunwinding;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

import org.gravy.GlobalsCache;
import org.gravy.Options;

import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.expression.CfgBooleanLiteral;
import boogie.controlflow.statement.CfgAssertStatement;
import boogie.controlflow.util.LoopInfo;

/**
 * @author schaef
 */
public abstract class AbstractLoopUnwinding {

	public static void unwindeLoops(CfgProcedure proc) {
		AbstractLoopUnwinding unwinder = null;
		if (Options.v().getLoopMode() == 0 && Options.v().getUnwindings()==-1) {
			unwinder = new HavocOnlyUnwinding(proc);			
		} else if (Options.v().getLoopMode() == 1 && Options.v().getUnwindings()==-1) {
			unwinder = new FmsdUnwinding(proc);
		} else {
			unwinder = new SimpleUnwinding(proc, Options.v().getUnwindings());
		}
		unwinder.unwind();
	}

	/**
	 * Boogie procedure
	 */
	protected CfgProcedure proc;

	protected int maxUnwinding = 0;

	protected boolean dontVerifyClones = false;
	
	/**
	 * C-tor
	 * 
	 * @param proc
	 *            Boogie procedure
	 */
	protected AbstractLoopUnwinding(CfgProcedure proc) {
		this.proc = proc;
	}

	
	
	/**
	 * Unwinds the loops
	 */
	public abstract void unwind();

	/**
	 * Eliminates a loop by removing all BasicBlocks that must reach the loop
	 * head. This works for all sorts of loops but probably generates much
	 * larger programs than the typical loop elimination that we would do for
	 * normal while loops (namely just removing the enitre body).
	 * 
	 * @param loop
	 */
	private void eliminate(LoopInfo loop) {
		// identify all blocks that can exit the loop.
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		for (BasicBlock b : loop.loopExit) {
			for (BasicBlock pre : b.getPredecessors()) {
				if (loop.loopBody.contains(pre)) {
					todo.add(pre);
				}
			}
		}

		// now find all blocks that connect the
		// loop entry to a loop exit
		LinkedList<BasicBlock> connectedToExit = new LinkedList<BasicBlock>();
		while (!todo.isEmpty()) {
			BasicBlock b = todo.pop();
			connectedToExit.add(b);
			if (b != loop.loopHead) {
				for (BasicBlock pre : b.getPredecessors()) {
					if (!todo.contains(pre)) {
						todo.add(pre);
					}
				}
			}
		}
		HashSet<BasicBlock> mustset = mustBeReachedByLoopHead(loop);
		for (BasicBlock b : loop.loopBody) {
			if (connectedToExit.contains(b)) {
				//ensure that blocks inside the loop are not reported.
				if (dontVerifyClones && (!mustset.contains(b) || loop.isNestedLoop)) {
//				if (dontVerifyClones ) {	
					//TODO: check if it makes sense to not mark the loop head.					
					markAsClone(b);
				}				
				for (BasicBlock s : new HashSet<BasicBlock>(b.getSuccessors())) {
					if (!loop.loopExit.contains(s)
							&& !connectedToExit.contains(s)) {
						b.disconnectFromSuccessor(s);
					}
				}
			} else {
				for (BasicBlock s : new HashSet<BasicBlock>(b.getSuccessors())) {
					b.disconnectFromSuccessor(s);
				}
			}
		}
	}
	
	private HashSet<BasicBlock> mustBeReachedByLoopHead (LoopInfo loop) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		HashMap<BasicBlock, HashSet<BasicBlock>> mustReach = new HashMap<BasicBlock, HashSet<BasicBlock>>();
		
		HashSet<BasicBlock> end_nodes = new HashSet<BasicBlock>();
		for (BasicBlock b : loop.loopingPred) {
			if (b!=loop.loopHead) {
				end_nodes.add(b);
			}
		}
		for (BasicBlock b : loop.loopExit) {
			for (BasicBlock pre : b.getPredecessors()) {
				if (loop.loopBody.contains(pre) && pre!=loop.loopHead) {
					end_nodes.add(pre);
				}
			}
		}
 		
		todo.addAll(end_nodes);
		while (!todo.isEmpty()) {			
			BasicBlock current = todo.removeLast();
			//check if all predecessors have been processed already.
			//if not, add the block to the end of the cue and start over
			boolean allGood = true;
			for (BasicBlock prev : current.getSuccessors()) {
				if (!loop.loopBody.contains(prev) || prev==loop.loopHead) continue;
				if (!done.contains(prev)) {
					allGood=false;
					break;
				}
			}		
			if (!allGood){
				todo.addFirst(current);
				continue;
			}
			//if all predecessors have been processed,
			//we can compute the dominators list by
			//intersecting the list of all predecessors
			HashSet<BasicBlock> currentDom = null;
			if (!end_nodes.contains(current)) {
				for (BasicBlock prev : current.getSuccessors()) {
					if (!loop.loopBody.contains(prev) || prev==loop.loopHead) continue;
					if (currentDom == null) {
						currentDom = new HashSet<BasicBlock>(mustReach.get(prev));
					} else {
						//retainAll computes the intersection of the two sets.
						currentDom.retainAll(mustReach.get(prev));
					}				
				}		
			}
			//special case, only occurs for the root/sink
			if (currentDom == null) {
				currentDom = new HashSet<BasicBlock>();
			}
			currentDom.add(current); //of course, a block dominates itself
			mustReach.put(current, currentDom);
			done.add(current);	
			if (current!=loop.loopHead) {
				for (BasicBlock next : current.getPredecessors()) {
					if (!todo.contains(next) && !done.contains(next)) {
						if (!loop.loopBody.contains(next)) continue;
						todo.addLast(next);
					}
				}			
			}
		}	
//		System.err.println("MUST REACH");
//		for (BasicBlock b : mustReach.get(loop.loopHead)) {
//			System.err.println("\t" + b.getLabel());
//		}
		return mustReach.get(loop.loopHead);	
	}
	
	
	private HashSet<BasicBlock> mustBeReachedByLoopHead_old (LoopInfo loop) {
		HashSet<BasicBlock> mustbe = new HashSet<BasicBlock>();
		//should be sufficient to mark the loophead as non-clone
		//because if any block that shares the same set of executions
		//is infeasible, this one must be infeasible as well.
		mustbe.add(loop.loopHead); 
		return mustbe;
	}
	

	protected void unwind(LoopInfo loop, int unwindings) {
		for (LoopInfo nest : new LinkedList<LoopInfo>(loop.nestedLoops)) {
			loop.nestedLoopHeads.remove(nest.loopHead);
			loop.nestedLoops.remove(nest);
			unwind(nest, unwindings);
		}
		loop.refreshLoopBody(); //TODO: test
		
		if (unwindings <= 0) {
			eliminate(loop);
			return;
		}

		// first unwind the nested loops.
		// clone the loop once and add it before the actual loop.
		HashMap<BasicBlock, BasicBlock> clonemap = new HashMap<BasicBlock, BasicBlock>();
		// clone the loopbody
		BasicBlock cloneHead = null;
		for (BasicBlock b : loop.loopBody) {
			BasicBlock clone = b.clone("iter"
					+ (this.maxUnwinding - unwindings));
			if (b == loop.loopHead) {
				cloneHead = clone;
			}
			// TODO: not sure if this is the right condition. Eventually,
			// if we want to do abstract unwinding, we have to make
			// the clones NoCode blocks.
			if (dontVerifyClones) {
				markAsClone(clone);
			}
			
			clonemap.put(b, clone);
		}

		if (cloneHead == null) {
			throw new RuntimeException("No loop head found during unwinding.");
		}
		// now redirect the predecessors of the loop head to the
		// head of the clone.
		for (BasicBlock b : loop.loopEntries) {
			b.disconnectFromSuccessor(loop.loopHead);
			b.connectToSuccessor(cloneHead);
		}

		// fix the successors of the cloned nodes.
		for (BasicBlock b : loop.loopBody) {
			BasicBlock clone = clonemap.get(b);
			for (BasicBlock s : new HashSet<BasicBlock>(b.getSuccessors())) {
				if (clonemap.containsKey(s)) {
					clone.connectToSuccessor(clonemap.get(s));
				} else {
					// add the missing edge that was not cloned
					clone.connectToSuccessor(s);
				}
			}
		}

		// now redirect all back edges to the original loop head.
		for (BasicBlock b : loop.loopingPred) {
			BasicBlock clone = clonemap.get(b);
			clone.disconnectFromSuccessor(cloneHead);
			clone.connectToSuccessor(loop.loopHead);
		}

		loop.UpdateLoopEntries();

		unwind(loop, unwindings - 1);
	}
	
	private void markAsClone(BasicBlock clone) {
		ProgramFactory pf = GlobalsCache.v().getProgramFactory();		
		clone.addStatement(new CfgAssertStatement(null,
				new Attribute[] { pf.mkCustomAttribute(ProgramFactory.Cloned) },
				new CfgBooleanLiteral(null, pf.getBoolType(), true)));	
	}
	
}
