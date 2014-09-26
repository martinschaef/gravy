/**
 * 
 */
package org.gravy.report;

import java.util.Set;

import org.gravy.faultlocalization.InfeasibleCodeFaultLocalization;
import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;

/**
 * @author schaef
 *
 */
public class InterpolationInfeasibleReport extends Report {

	public InterpolationInfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		InfeasibleCodeFaultLocalization.localizeFaults(tr, infeasibleBlocks);
	}	
	
}
