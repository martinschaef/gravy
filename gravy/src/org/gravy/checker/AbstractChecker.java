/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashSet;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverFactory;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;
import util.Log;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.statement.Statement;

/**
 * @author martin
 *
 */
public abstract class AbstractChecker implements Runnable {

	protected AbstractControlFlowFactory cff;
	protected CfgProcedure procedure;
	protected Collection<BasicBlock> infeasibleBlocks = new HashSet<BasicBlock>();
	
	//HACK!	
	public Collection<Statement> infeasibleStatements = new HashSet<Statement>();
	public Collection<Statement> feasibleExceptions = new HashSet<Statement>();
	public Collection<Statement> infeasibleExceptions = new HashSet<Statement>();
	
	
	protected Prover prover = null;
	
	/**
	 * 
	 */
	public AbstractChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		this.cff = cff;
		this.procedure = p;
	}

	public abstract Collection<BasicBlock> checkSat(Prover prover, AbstractTransitionRelation tr);


	public Collection<BasicBlock> getInfeasibleBlocks() {
		return infeasibleBlocks;
	}
	
	
	@Override
	public void run() {
		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		//Prover prover = pf.spawnWithLog("lala");
		this.prover = pf.spawn();
		Log.debug("Compute Transition Relation "+this.procedure.getProcedureName());
		//AbstractTransitionRelation tr = new TransitionRelation(this.procedure, this.cff, prover);
		CfgTransitionRelation tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
		this.infeasibleBlocks = checkSat(prover, tr); 
		shutDownProver();
		
		
		//DEBUG CODE TODO: Remove
//		if (infeasibleBlocks.size()>0) {
//			this.procedure.toFile(this.procedure.getProcedureName()+ "_cfg.bpl");
//			StringBuffer sb = new StringBuffer();
//			sb.append("Infeasible Blocks: "); 
//			for (BasicBlock bl : infeasibleBlocks) {
//				sb.append(bl.getLabel()+ ", ");
//			}
//			Log.error(sb.toString());
//		}
				
		
		//no need to shut down the prover here
		//as this is done in ProgramAnalysis.java
	}
	
	public void shutDownProver() {
		if (null == this.prover)
			return;

		this.prover.shutdown();
		this.prover = null;	
	}

}
