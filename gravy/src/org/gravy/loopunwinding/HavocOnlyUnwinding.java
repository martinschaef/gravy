package org.gravy.loopunwinding;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

import util.Log;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.CfgVariable;
import boogie.controlflow.expression.CfgExpression;
import boogie.controlflow.expression.CfgIdentifierExpression;
import boogie.controlflow.statement.CfgAssignStatement;
import boogie.controlflow.statement.CfgCallStatement;
import boogie.controlflow.statement.CfgHavocStatement;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 */
public class HavocOnlyUnwinding extends AbstractLoopUnwinding {

	/**
	 * C-tor
	 * 
	 * @param proc
	 *            Boogie procedure
	 */
	public HavocOnlyUnwinding(CfgProcedure proc) {
		super(proc);
		this.proc = proc;
	}

	@Override
	public void unwind() {
		BasicBlock root = proc.getRootNode();
		LoopDetection detection = new LoopDetection();
		List<LoopInfo> loops = detection.computeLoops(root);

		for (LoopInfo loop : loops) {
			Log.debug(loop);
			havocLoop(loop);
		}
	}

	private void havocLoop(LoopInfo loop) {
		// havoc the nested loops first
		for (LoopInfo nest : loop.nestedLoops) {
			havocLoop(nest);
		}

		loop.loopHead.addStatement(computeHavocStatement(loop), true);
		
		disconnectLoopingControlFlow(loop);
		
		if (loop.loopExit.size()==0) {
			Log.error("Loop has no exit! LoopHead "+loop.loopHead.getLabel());
		}
		
		for (BasicBlock b : loop.loopExit) {
			b.addStatement(computeHavocStatement(loop), true);
		}
	}
	
	private void disconnectLoopingControlFlow(LoopInfo l) {
		
		/*
		 * Here, we eliminate the looping executions of the loop.
		 * This is a bit tricky as we cannot assume that we have a structured
		 * loop of the form while(x) B which we could easily transform into
		 * a conditional choice. 
		 * Instead, we have to identify all blocks in the loop body that only occur
		 * on looping executions and remove them from the program. As result, we obtain
		 */
		
		//first remove the looping edges
		for (BasicBlock b : l.loopingPred) {
			b.disconnectFromSuccessor(l.loopHead);
		}
				
		
		//now find the part of the loop that can leave
		//the loop body
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();   
		todo.addAll(l.loopExit); 
		LinkedList<BasicBlock> done = new LinkedList<BasicBlock>();		
		
		HashSet<BasicBlock> nonLoopingBody = new HashSet<BasicBlock>();
		while (!todo.isEmpty()) {
			BasicBlock current = todo.removeLast();
			done.add(current);
			for (BasicBlock pred : current.getPredecessors()) {
				if (l.loopBody.contains(pred) && !done.contains(pred) && !todo.contains(pred)) {
					nonLoopingBody.add(pred);
					todo.add(pred);
				}
			}			
		}
		
		//now clone the part of the loop body that must leave the loop and
		//redirect the back edge to this clone
		HashMap<BasicBlock, BasicBlock> clonemap = new HashMap<BasicBlock, BasicBlock>();		
		for (BasicBlock b : nonLoopingBody) {
			clonemap.put(b, b.clone("clone"));
		}
		//clone the loophead as well
		clonemap.put(l.loopHead, l.loopHead.clone("clone"));

		//update the edges of the cloned blocks
		for (BasicBlock b : nonLoopingBody) {
			BasicBlock clone = clonemap.get(b);
			for (BasicBlock pre : new HashSet<BasicBlock>(b.getPredecessors())) {				
				if (clonemap.containsKey(pre)) {
					clonemap.get(pre).connectToSuccessor(clone);
				}
			}
			for (BasicBlock suc : new HashSet<BasicBlock>(b.getSuccessors())) {
				if (l.loopBody.contains(suc)) {					
					if (clonemap.containsKey(suc)) {
						clone.connectToSuccessor(clonemap.get(suc));
					} 
				} else {
					//if the successor is outside of the loop, we have to refresh 
					//the reference, because the successor does not yet know its cloned
					//predecessor
					clone.connectToSuccessor(suc);
				}
			}
		}
		{
			BasicBlock clone = clonemap.get(l.loopHead);
			//redo the same thing for the loop head
			for (BasicBlock suc : new HashSet<BasicBlock>(l.loopHead.getSuccessors())) {
				if (l.loopBody.contains(suc)) {					
					if (clonemap.containsKey(suc)) {
						clone.connectToSuccessor(clonemap.get(suc));
					} 
				} else {
					//if the successor is outside of the loop, we have to refresh 
					//the reference, because the successor does not yet know its cloned
					//predecessor
					clone.connectToSuccessor(suc);
				}
			}
		}
		
		for (BasicBlock b : l.loopingPred) {
			b.connectToSuccessor(clonemap.get(l.loopHead));
		}
			
		
	}

	private CfgHavocStatement computeHavocStatement(LoopInfo l) {
		HashSet<CfgVariable> havocedVars = new HashSet<CfgVariable>();
		for (BasicBlock b : l.loopBody) {
			for (CfgStatement s : b.getStatements()) {
				if (s instanceof CfgAssignStatement) {
					CfgAssignStatement ass = (CfgAssignStatement) s;
					for (CfgExpression e : ass.getLeft()) {
						CfgVariable v = expToCfgVariable(e);
						if (v != null)
							havocedVars.add(v);
					}
				} else if (s instanceof CfgHavocStatement) {
					CfgHavocStatement havoc = (CfgHavocStatement) s;
					for (CfgVariable v : havoc.getVariables()) {
						havocedVars.add(v);
					}
				} else if (s instanceof CfgCallStatement) {
					// CfgCallStatement ivk = (CfgCallStatement) s;
					throw new RuntimeException(
							"Call statements are assumed to be deleted before loop unwinding");
				}
			}
		}


		return new CfgHavocStatement(l.loopHead.getLocationTag(),
				havocedVars.toArray(new CfgVariable[havocedVars.size()]));
	}

	private CfgVariable expToCfgVariable(CfgExpression e) {
		if (e instanceof CfgIdentifierExpression) {
			return ((CfgIdentifierExpression) e).getVariable();
		} else {
			throw new RuntimeException("Don't know what to do with " + e);
		}
	}

}
