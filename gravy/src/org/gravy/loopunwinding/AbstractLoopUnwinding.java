package org.gravy.loopunwinding;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;

import org.gravy.Options;

import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 */
public abstract class AbstractLoopUnwinding {

	public static void unwindeLoops(CfgProcedure proc) {
		AbstractLoopUnwinding unwinder = null;
		if (Options.v().getUnwindings()<0) {
			unwinder = new HavocOnlyUnwinding(proc);
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
	 * Eliminates a loop by removing all BasicBlocks
	 * that must reach the loop head. 
	 * This works for all sorts of loops but probably 
	 * generates much larger programs than the typical 
	 * loop elimination that we would do for normal while 
	 * loops (namely just removing the enitre body). 
	 * @param loop
	 */
	private void eliminateDoWhileLoop(LoopInfo loop) {
		//identify all blocks that can exit the loop.
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		for (BasicBlock b:   loop.loopExit) {
			for (BasicBlock pre : b.getPredecessors()) {
				if (loop.loopBody.contains(pre)) {
					todo.add(pre);
				}
			}			
		}
		
		//now find all blocks that connect the
		//loop entry to a loop exit
		LinkedList<BasicBlock> connectedToExit = new LinkedList<BasicBlock>();
		while (!todo.isEmpty()) {
			BasicBlock b = todo.pop();
			connectedToExit.add(b);
			if (b!=loop.loopHead) {
				for (BasicBlock pre : b.getPredecessors()) {
					if (!todo.contains(pre)) {
						todo.add(pre);
					}
				}
			}			
		}
		
		for (BasicBlock b : loop.loopBody) {
			if (connectedToExit.contains(b)) {
				for (BasicBlock s : new HashSet<BasicBlock>(b.getSuccessors())) {
					if (!loop.loopExit.contains(s) && !connectedToExit.contains(s) ) {
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
	
	private void eliminateWhileDoLoop(LoopInfo loop) {
		//remove the entire loop and connect the head only
		//to the exit.
		for (BasicBlock b : loop.loopBody) {
			if (b==loop.loopHead) continue;
			for (BasicBlock s : new HashSet<BasicBlock>(b.getSuccessors())) {
				if (!loop.loopBody.contains(s)) {
					b.disconnectFromSuccessor(s);
				}
			}
		}
		for (BasicBlock b : new HashSet<BasicBlock>(loop.loopHead.getSuccessors())) {
			if (loop.loopBody.contains(b)) {
				loop.loopHead.disconnectFromSuccessor(b);
			}
		}		
	}
	
	protected void eliminate(LoopInfo loop) {
		//check if the we have a while-do / for loop
		//or a do-while loop.
		boolean isDoWhile = true;
		for (BasicBlock b : loop.loopHead.getSuccessors()) {
			if (!loop.loopBody.contains(b)) {
				isDoWhile = false;
				break;
			}
		}
		
		if (isDoWhile) {
			System.err.println("Do-While Loop found");
			eliminateDoWhileLoop(loop);
		} else {
			System.err.println("Normal While Loop found");
			eliminateWhileDoLoop(loop);
		}
	}
	
	protected void unwind(LoopInfo loop, int unwindings) {
		for (LoopInfo nest : loop.nestedLoops) {
			unwind(nest, unwindings);
		}

		if (unwindings<=0) {
			eliminate(loop);
			return;
		}
		
		//first unwind the nested loops.
		//clone the loop once and add it before the actual loop.
		HashMap<BasicBlock, BasicBlock> clonemap = new HashMap<BasicBlock, BasicBlock>();
		//clone the loopbody
		BasicBlock cloneHead = null;
		for (BasicBlock b : loop.loopBody) {
			BasicBlock clone = b.clone("iter"+(this.maxUnwinding- unwindings));
			if (b==loop.loopHead) {
				cloneHead = clone;
			}
			clonemap.put(b, clone);
		}

		if (cloneHead==null) {
			throw new RuntimeException("No loop head found during unwinding.");
		}
		//now redirect the predecessors of the loop head to the 
		//head of the clone.
		for (BasicBlock b : loop.loopEntries) {
			b.disconnectFromSuccessor(loop.loopHead);
			b.connectToSuccessor(cloneHead);
		}
 		
		//fix the successors of the cloned nodes.
		for (BasicBlock b : loop.loopBody) {
			BasicBlock clone = clonemap.get(b);
			for (BasicBlock s : new HashSet<BasicBlock>(b.getSuccessors())) {
				if (clonemap.containsKey(s)) {					
					clone.connectToSuccessor(clonemap.get(s));
				} else {
					//add the missing edge that was not cloned
					clone.connectToSuccessor(s);
				}
			}
		}
				
		//now redirect all back edges to the original loop head.
		for (BasicBlock b : loop.loopingPred) {
			BasicBlock clone = clonemap.get(b);
			clone.disconnectFromSuccessor(cloneHead);
			clone.connectToSuccessor(loop.loopHead);	
		}
		
		loop.UpdateLoopEntries();
		
		unwind(loop, unwindings-1);		
	}	
}
