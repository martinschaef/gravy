/**
 * 
 */
package org.gravy.report;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.ast.NamedAttribute;
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
		
		LinkedList<HashSet<BasicBlock>> infeasibleSubProgs = findInfeasibleSubprogs(infeasibleBlocks);
		
		boolean firstReport = true;
//		int i=0;
		for (HashSet<BasicBlock> subprog : infeasibleSubProgs) {
			
//			System.err.println("Subprog "+(i++));
//			for (BasicBlock b : subprog) System.err.println("\t"+b.getLabel());
			//find the first and last line of the infeasible
			//sub program for reporting
			int startLine = -1;
			int endLine = -1;
			boolean ignoreSubProg = false;
			
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
					if (s.getAttributes()!=null) {
						for (Attribute attr : s.getAttributes()) {
							if (attr instanceof NamedAttribute) {
								NamedAttribute na = (NamedAttribute)attr;
								if (na.getName().equals(ProgramFactory.NoCodeTag)) {									
									ignoreSubProg = true; break;
								} else if (na.getName().equals(ProgramFactory.LocationTag)) {
									
								}
							}
						}		
					}
					if (ignoreSubProg) break;
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
				if (ignoreSubProg) break;
			}
			
			if (ignoreSubProg) continue;			
			if (firstReport) {
				firstReport = false;
				sb.append("\nInfeasible Code:\n");
			}
			sb.append("\tfrom "+startLine + " to " + endLine+ "\n");
//			System.err.println("is infeasible");
		}
		if (!firstReport) sb.append("\n");
		
	}

	private LinkedList<HashSet<BasicBlock>> findInfeasibleSubprogs(Set<BasicBlock> infeasibleBlocks) {
		LinkedList<HashSet<BasicBlock>> res = new LinkedList<HashSet<BasicBlock>>();
		LinkedList<BasicBlock> allblocks = new LinkedList<BasicBlock>();
		allblocks.addAll(infeasibleBlocks);
		while (!allblocks.isEmpty()) {
			HashSet<BasicBlock> subprog = new HashSet<BasicBlock>();
			LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
			todo.add(allblocks.pop());
			while (!todo.isEmpty()) {
				BasicBlock current = todo.pop();
				allblocks.remove(current);
				subprog.add(current);	
				for (BasicBlock b : current.getPredecessors()) {
					if (!subprog.contains(b) && !todo.contains(b) && allblocks.contains(b)) {
						todo.add(b);
					}
				}
				for (BasicBlock b : current.getSuccessors()) {
					if (!subprog.contains(b) && !todo.contains(b) && allblocks.contains(b)) {
						todo.add(b);
					}
				}				
			}		
			if (subprog.size()>0) {
				res.add(subprog);
			}
		}
		return res;
	}
	

	@Override 
	public String toString() {
		return sb.toString();
	}
	
}
