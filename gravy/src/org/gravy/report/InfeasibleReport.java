/**
 * 
 */
package org.gravy.report;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

import org.gravy.effectualset.HasseDiagram;
import org.gravy.effectualset.PartialBlockOrderNode;
import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;
import boogie.location.ILocation;

/**
 * @author schaef
 * 
 */
public class InfeasibleReport extends Report {

	private StringBuilder sb = new StringBuilder();
	
	/**
	 * @param tr
	 */
	public InfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		
		//collect all partial order nodes
		HashSet<PartialBlockOrderNode> allNodes = new HashSet<PartialBlockOrderNode>();
		for (BasicBlock b : infeasibleBlocks) {
			allNodes.add(tr.getHasseDiagram().findNode(b));			
		}
		//remove those whose parents are also in the set.
		LinkedList<HashSet<BasicBlock>> infeasibleSubProgs = new LinkedList<HashSet<BasicBlock>>();
		for (PartialBlockOrderNode n : allNodes) {
			if (!parentInSet(n, allNodes)) {
				infeasibleSubProgs.add(findPOChildBlocks(n));
			}
		}

		sb.append("\nInfeasible Blocks:\n");
		for (HashSet<BasicBlock> subprog : infeasibleSubProgs) {
			//find the first and last line of the infeasible
			//sub program for reporting
			int startLine = -1;
			int endLine = -1;
			
			for (BasicBlock b : subprog) {
				ILocation loc = b.getLocationTag();			
				if (loc!=null) {
					if (startLine==-1 || loc.getStartLine()<startLine) {
						startLine = loc.getStartLine();
					}
					if (endLine==-1 || loc.getEndLine()>endLine) {
						endLine = loc.getEndLine();
					}					
				}
				
				for (CfgStatement s : b.getStatements()) {
					loc = s.getLocation();
					if (loc!=null) {
						if (startLine==-1 || loc.getStartLine()<startLine) {
							startLine = loc.getStartLine();
						}
						if (endLine==-1 || loc.getEndLine()>endLine) {
							endLine = loc.getEndLine();
						}					
					}
				}				
			}
			
			sb.append("\tfrom "+startLine + " to " + endLine+ "\n");			
		}
		sb.append("\n");
		
	}

	private HashSet<BasicBlock> findPOChildBlocks(PartialBlockOrderNode n) {
		HashSet<BasicBlock> res = new HashSet<BasicBlock>();
		LinkedList<PartialBlockOrderNode> todo = new LinkedList<PartialBlockOrderNode>();
		LinkedList<PartialBlockOrderNode> done = new LinkedList<PartialBlockOrderNode>();
		todo.add(n);
		while (!todo.isEmpty()) {
			PartialBlockOrderNode current = todo.pop();
			done.add(current);
			res.addAll(current.getElements());
			for (PartialBlockOrderNode s : current.getSuccessors()) {
				if (!todo.contains(s) && !done.contains(s)) {
					todo.add(s);
				}
			}
		}
		return res;
	}
	
	private boolean parentInSet(PartialBlockOrderNode n, HashSet<PartialBlockOrderNode> allNodes) {
		if (n.getParent()==null) {
			return false;	
		}
		if (allNodes.contains(n.getParent())) {
			return true;
		} else {
			return parentInSet(n.getParent(), allNodes);
		}
	}

	@Override 
	public String toString() {
		return sb.toString();
	}
	
}
