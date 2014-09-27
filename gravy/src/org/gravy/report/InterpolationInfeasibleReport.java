/**
 * 
 */
package org.gravy.report;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Set;

import org.gravy.faultlocalization.InfeasibleCodeFaultLocalization;
import org.gravy.util.JavaSourceLocation;
import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 *
 */
public class InterpolationInfeasibleReport extends Report {

	private LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports = new LinkedList<HashMap<CfgStatement, JavaSourceLocation>>();
	
	public InterpolationInfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		this.reports = InfeasibleCodeFaultLocalization.localizeFaults(tr, infeasibleBlocks);
	}	
	
	public LinkedList<HashMap<CfgStatement, JavaSourceLocation>> getReports() {
		return this.reports;
	}
	
}
