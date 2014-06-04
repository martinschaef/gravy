package org.gravy.loopunwinding;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Stack;

import boogie.controlflow.BasicBlock;

/**
 * @author schaef
 */
public class LoopInfo {

	public BasicBlock loopHead = null;
	public HashSet<BasicBlock> loopingPred = null;
	public HashSet<BasicBlock> loopBody = null;
	public HashSet<BasicBlock> loopExit = null;
	public Stack<BasicBlock> nestedLoopHeads = new Stack<BasicBlock>();
	public LinkedList<LoopInfo> nestedLoops = new LinkedList<LoopInfo>();
	public HashSet<BasicBlock> loopEntries = new HashSet<BasicBlock>();

	//Hack! this should not be public!
	public HashMap<BasicBlock, BasicBlock> blockCloneMap = new HashMap<BasicBlock, BasicBlock>();

	public boolean isNestedLoop = false;

	public LoopInfo(BasicBlock loophead, HashSet<BasicBlock> loopingpred,
			HashSet<BasicBlock> loopbody, HashSet<BasicBlock> loopexit) {
		loopHead = loophead;
		loopingPred = loopingpred;
		loopBody = loopbody;
		loopExit = loopexit;
		for (BasicBlock b : loopHead.getPredecessors()) {
			if (!loopingPred.contains(b))
				loopEntries.add(b);
		}
	}

	@Override
	public String toString() {
		return toString("");
	}

	public String toString(String prefix) {
		StringBuilder sb = new StringBuilder();
		sb.append(">> Loop: " + loopHead.toString() + "\n");
		// sb.append("loop head pre:\n");
		// for (BasicBlock b : loopHead.Predecessors) {
		// sb.append(" " + b.toString());
		// }
		// sb.append("\n");
		// sb.append(">> Body:\n");
		// sb.append(">>\t");
		// for (BasicBlock b : loopBody) {
		// sb.append(" " + b.toString());
		// }
		// sb.append("\n");
		// sb.append(">>");
		// sb.append(">> Exit:\n");
		// sb.append(">>\t");
		// for (BasicBlock b : loopExit) {
		// sb.append(" " + b.toString());
		// }
		// sb.append("\n");
		int i = 0;
		for (LoopInfo n : this.nestedLoops) {
			sb.append(">> Nested Loop " + (i++) + "\n");
			// sb.append(n.toString(prefix +"\t"));
			sb.append(n);
		}
		sb.append("\n");

		return sb.toString();
	}

}
