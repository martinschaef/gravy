/**
 * 
 */
package org.gravy.report;

import java.util.LinkedList;
import java.util.Set;

import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.statement.Statement;

/**
 * @author schaef
 * 
 */
public class InfeasibleReport extends Report {

	/**
	 * @param tr
	 */
	public InfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		super(cff, tr);
		LinkedList<Statement> infeasible_statements = collectStatements(infeasibleBlocks);
		System.err.println(printLocationAttributes(infeasible_statements));
	}


	
}
