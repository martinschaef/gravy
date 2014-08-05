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

		for (BasicBlock b : loop.loopBody) {
			if (connectedToExit.contains(b)) {
				//ensure that blocks inside the loop are not reported.
				if (dontVerifyClones) {
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
				new Attribute[] { pf.mkCustomAttribute(GlobalsCache.cloneAttribute) },
				new CfgBooleanLiteral(null, pf.getBoolType(), true)));	
	}
	
}
