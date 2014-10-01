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
	
	private Set<BasicBlock> infeasibleBlocks;
	private AbstractTransitionRelation tr;
	
	public InterpolationInfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		this.infeasibleBlocks = infeasibleBlocks;
		this.hasInfeasibleBlocks = this.infeasibleBlocks.size()>0;
		this.tr = tr;
	}	
	
	public boolean hasInfeasibleBlocks;

	public LinkedList<HashMap<CfgStatement, JavaSourceLocation>> getReports() {
		return this.reports;
	}
	
	@Override
	public void update() {
		if (this.tr!=null && this.infeasibleBlocks!=null) {
			this.reports = InfeasibleCodeFaultLocalization.localizeFaults(tr, infeasibleBlocks);
			this.tr=null;
			this.infeasibleBlocks=null;
		}
	}
	
	
}
