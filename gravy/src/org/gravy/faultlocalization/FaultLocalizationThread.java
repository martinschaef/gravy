/**
 * 
 */
package org.gravy.faultlocalization;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Set;

import org.gravy.util.JavaSourceLocation;
import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 *
 */
public class FaultLocalizationThread implements Runnable {

	private LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports = new LinkedList<HashMap<CfgStatement, JavaSourceLocation>>();	
	private Set<BasicBlock> infeasibleBlocks;
	private AbstractTransitionRelation tr;

	public FaultLocalizationThread(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		this.infeasibleBlocks = infeasibleBlocks;		
		this.tr = tr;
	}	
	
	public LinkedList<HashMap<CfgStatement, JavaSourceLocation>> getReports() {
		return this.reports;
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Runnable#run()
	 */
	@Override
	public void run() {
		if (this.tr!=null && this.infeasibleBlocks!=null) {
			this.reports = InfeasibleCodeFaultLocalization.localizeFaults(tr, infeasibleBlocks);
			this.tr=null;
			this.infeasibleBlocks=null;			
		}
	}

}
