package org.gravy.report;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;

import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgAssertStatement;
import boogie.statement.Statement;

/**
 * @author schaef
 * 
 */
public class GravyReport extends Report {

	private StringBuilder sb = new StringBuilder();
	
	/**
	 * 
	 * @param tr
	 * @param feasibleBlocks
	 * @param infeasibleBlocks1
	 *            feasible blocks wrt postcondition
	 * @param infeasibleBlocks2
	 *            feasible blocks without postcondition
	 * @param assertIfThenElseMap
	 */
	public GravyReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks1,
			Set<BasicBlock> infeasibleBlocks2,
			HashMap<CfgAssertStatement, BasicBlock[]> assertIfThenElseMap) {

		LinkedList<Statement> safe = new LinkedList<Statement>();
		LinkedList<Statement> unreachable = new LinkedList<Statement>();
		LinkedList<Statement> poss_unsafe = new LinkedList<Statement>();
		LinkedList<Statement> guar_unsafe = new LinkedList<Statement>();
		
		for (Entry<CfgAssertStatement, BasicBlock[]> entry : assertIfThenElseMap.entrySet()) {
			BasicBlock thenBlock = entry.getValue()[0];
			BasicBlock elseBlock = entry.getValue()[1];
			Statement st = cff.findAstStatement(entry.getKey());
			if (st==null) continue;
			
			if (infeasibleBlocks2.contains(thenBlock) && infeasibleBlocks2.contains(elseBlock)) {
				//unreachable
				unreachable.add(st);
			} else 	if (feasibleBlocks.contains(thenBlock) && infeasibleBlocks2.contains(elseBlock)) {
				//safe
				safe.add(st);
			} else 	if (feasibleBlocks.contains(thenBlock) && infeasibleBlocks1.contains(elseBlock)) {
				//possibly unsafe
				poss_unsafe.add(st);
			} else 	if (infeasibleBlocks2.contains(thenBlock) && infeasibleBlocks1.contains(elseBlock)) {
				//guaranteed unsafe
				guar_unsafe.add(st);
			}
		}
		
		if (safe.size()>0) {
			sb.append("Safe assertions:\n");
			sb.append(printLocationAttributes(safe));
			sb.append("\n");
		}
		if (poss_unsafe.size()>0) {
			sb.append("Possibly unsafe assertions:\n");
			sb.append(printLocationAttributes(poss_unsafe));
			sb.append("\n");
		}
		if (guar_unsafe.size()>0) {
			sb.append("Guaranteed unsafe assertions:\n");
			sb.append(printLocationAttributes(guar_unsafe));
			sb.append("\n");
		}
		if (unreachable.size()>0) {
			sb.append("Unreachable assertions:\n");
			sb.append(printLocationAttributes(unreachable));
			sb.append("\n");
		}		
		System.err.println(sb.toString());
	}

	@Override 
	public String toString() {
		return sb.toString();
	}
}
