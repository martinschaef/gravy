/**
 * 
 */
package org.gravy.report;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

import org.gravy.GlobalsCache;
import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.ast.statement.Statement;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 * 
 */
public class InfeasibleReport extends Report {

	private StringBuilder sb = new StringBuilder();
	
	private LinkedList<HashSet<Statement>> infeasibleSubProgs;
	private String procedureName;
	
	/**
	 * @param tr
	 */
	public InfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		this.procedureName = tr.getProcedureName();
		infeasibleSubProgs = findInfeasibleSubprogs(cff, infeasibleBlocks);
	}
	
	
	public String getProcedureName() {
		return this.procedureName;
	}
	
	public LinkedList<HashSet<Statement>> getInfeasibleSubPrograms() {
		return this.infeasibleSubProgs;
	}
	
	
	private LinkedList<HashSet<Statement>> findInfeasibleSubprogs(AbstractControlFlowFactory cff, Set<BasicBlock> infeasibleBlocks) {
		LinkedList<HashSet<Statement>> res = new LinkedList<HashSet<Statement>>();
		LinkedList<BasicBlock> allblocks = new LinkedList<BasicBlock>();
		allblocks.addAll(infeasibleBlocks);
		while (!allblocks.isEmpty()) {
			HashSet<Statement> subprog = new HashSet<Statement>();
			LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
			todo.add(allblocks.pop());
			while (!todo.isEmpty()) {
				BasicBlock current = todo.pop();
				allblocks.remove(current);
				boolean skipBlock = false;
				if (this.containsNamedAttribute(current, GlobalsCache.cloneAttribute)) {
					skipBlock = true;
				}
				if (!skipBlock) {				
					for (CfgStatement stmt : current.getStatements()) {
						Statement s = cff.findAstStatement(stmt);
						if (s!=null) subprog.add(s);
					}
				}
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
