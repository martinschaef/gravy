/**
 * 
 */
package org.gravy.ssa;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;

import util.Log;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.CfgVariable;
import boogie.controlflow.expression.CfgIdentifierExpression;
import boogie.controlflow.statement.CfgAssignStatement;

/**
 * @author martin
 *
 */
public class SingleStaticAssignment {
	
	public SingleStaticAssignment() {
				
	}
	
	public void recomputeSSA(CfgProcedure p) {		
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		LinkedList<BasicBlock> done = new LinkedList<BasicBlock>();

		//generate unified exit
		{
			Log.debug("------ create unified exit");
			LinkedList<BasicBlock> sinks = new LinkedList<BasicBlock>();
			todo.add(p.getRootNode());
			while (!todo.isEmpty()) {
				BasicBlock current = todo.removeLast();
				done.add(current);
				if (current.getSuccessors().size()>0) {
					for (BasicBlock next : current.getSuccessors()) {
						if (!todo.contains(next) && !done.contains(next)) {
							todo.add(next);
						}
					}
				} else {
					sinks.add(current);
				}			
			}
			
			if (sinks.size()==0) {
				throw new RuntimeException("Every procedure must have at least one sink: "+p.getProcedureName());
			}
			
			if (sinks.size()>1) {
				BasicBlock unifiedExit = new BasicBlock(p.getLocation(), "$unifiedExit");
				unifiedExit.returns = true;
				for (BasicBlock b : sinks) {
					b.returns = false;
					b.connectToSuccessor(unifiedExit);
				}
				p.setExitNode(unifiedExit);
			} 		
		}
		//generate inbetween block if needed
		{
			Log.debug("------ create block between");
			todo = new LinkedList<BasicBlock>();
			done = new LinkedList<BasicBlock>();		
			todo.add(p.getExitNode());
			while (!todo.isEmpty()) {
				BasicBlock current = todo.removeLast();
				done.add(current);
				for (BasicBlock next : current.getPredecessors()) {
					if (!todo.contains(next) && !done.contains(next)) {
						todo.add(next);
					}
				}			
				if (current.getPredecessors().size()>1) {
					for (BasicBlock next : new HashSet<BasicBlock>(current.getPredecessors())) {
						BasicBlock between = new BasicBlock(next.getLocationTag(), next.getLabel()+"$between$"+current.getLabel());
						next.disconnectFromSuccessor(current);
						next.connectToSuccessor(between);
						between.connectToSuccessor(current);
					}							
				}			
			}		
		}
		
		//this.foldBlocks(p);
				
		Log.debug("------ recomute the ssa");
		//Do the actual SSA
		todo = new LinkedList<BasicBlock>();
		done = new LinkedList<BasicBlock>();		
		todo.add(p.getRootNode());

		while (!todo.isEmpty()) {
			BasicBlock current = todo.removeLast();
			
			/*
			 * Check if SSA has already been computed for all predecessors. If
			 * not, add current to the bottom of the todo stack and continue
			 * with the next Block.
			 */
			{
				boolean allPredsDone = true;
				for (BasicBlock pred : current.getPredecessors()) {
					if (!done.contains(pred)) {
						allPredsDone = false;
						break;
					}
				}
				if (allPredsDone) {
					done.add(current);
				} else {
					todo.addFirst(current);
					continue;
				}
			}
			// now compute the frame conditions for all predecessors
			{
				
				HashMap<CfgVariable, Integer> offset = new HashMap<CfgVariable, Integer>();
				if (current.getPredecessors().size() > 0) {
					for (BasicBlock pred : current.getPredecessors()) {
						mergeSSAOffsets(offset, pred.getLocalIncarnationMap());
					}
					for (BasicBlock pred : new HashSet<BasicBlock>(
							current.getPredecessors())) {
						addFrameCondition(pred, offset);
					}
				}
				current.recomputLocalSSA(offset);
			}
			for (BasicBlock next : current.getSuccessors()) {
				if (!todo.contains(next) && !done.contains(next)) {
					todo.addLast(next);
				}
			}
		}
		//IMPORTANT: for some of the later analysis set we must be
		//able to assume that the Exit node does not contain any
		//statements. Thus, we create a fresh block here.
		if (p.getExitNode().getLabel()!="$UnifiedExit") {
			BasicBlock finalUnifiedExit = new BasicBlock(p.getExitNode().getLocationTag(), "$UnifiedExit");
			//connect each block that does not have a successor to the unified exit
			for (BasicBlock b : done) {
				if (b.getSuccessors().size() == 0) {
					b.connectToSuccessor(finalUnifiedExit);					
				}
				//TODO: @Daniel ... this is untested and maybe I have created a monster
				{
					HashMap<CfgVariable, Integer> offset = new HashMap<CfgVariable, Integer>();
					for (BasicBlock pred : finalUnifiedExit.getPredecessors()) {
						mergeSSAOffsets(offset, pred.getLocalIncarnationMap());
					}
					for (BasicBlock pred : new HashSet<BasicBlock>(
							finalUnifiedExit.getPredecessors())) {
						addFrameCondition(pred, offset);
					}
					finalUnifiedExit.recomputLocalSSA(offset);
				}
				
			}
			//TODO: This line was removed as part of the monster hack... 
			//p.getExitNode().connectToSuccessor(finalUnifiedExit);
			p.setExitNode(finalUnifiedExit);
		}
				
		return;
	}

	private void mergeSSAOffsets(HashMap<CfgVariable, Integer> successorOffset,
			HashMap<CfgVariable, Integer> predecessorOffset) {
		for (Entry<CfgVariable, Integer> entry : predecessorOffset.entrySet()) {
			if (!successorOffset.containsKey(entry.getKey())) {
				successorOffset.put(entry.getKey(), entry.getValue());
			} else {
				if (successorOffset.get(entry.getKey()) < entry.getValue()) {
					successorOffset.put(entry.getKey(), entry.getValue());
				}
			}
		}
	}

	private void addFrameCondition(BasicBlock b,
			HashMap<CfgVariable, Integer> maxOffset) {
		HashMap<CfgVariable, Integer> offset = b.getLocalIncarnationMap();
		for (Entry<CfgVariable, Integer> entry : maxOffset.entrySet()) {
			if (!offset.containsKey(entry.getKey())) {
			} else {
				if (offset.get(entry.getKey()) < entry.getValue()) {
					CfgIdentifierExpression[] left = { new CfgIdentifierExpression(
							b.getLocationTag(), entry.getKey(),
							entry.getValue()) };
					CfgIdentifierExpression[] right = { new CfgIdentifierExpression(
							b.getLocationTag(), entry.getKey(),
							offset.get(entry.getKey())) };
					CfgAssignStatement assign = new CfgAssignStatement(
							b.getLocationTag(), left, right);
					b.addStatement(assign);
					b.getLocalIncarnationMap().put(entry.getKey(), entry.getValue());//TODO: experiment
				}
			}
		}

	}

}
