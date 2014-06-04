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
		
	protected HashSet<BasicBlock> feasibleBlocks = new HashSet<BasicBlock>();
	protected HashSet<BasicBlock> infeasibleBlocks = new HashSet<BasicBlock>();
	protected HashSet<BasicBlock> infeasibleBlocksUnderPost = new HashSet<BasicBlock>();

	
	
	protected Prover prover = null;
	
	/**
	 * 
	 */
	public AbstractChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		this.cff = cff;
		this.procedure = p;
	}

	public abstract void checkSat(Prover prover, AbstractTransitionRelation tr);
	
	
	@Override
	public void run() {
		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		//Prover prover = pf.spawnWithLog("lala");
		this.prover = pf.spawn();
		Log.debug("Compute Transition Relation "+this.procedure.getProcedureName());
		//AbstractTransitionRelation tr = new TransitionRelation(this.procedure, this.cff, prover);
		CfgTransitionRelation tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
		checkSat(prover, tr); 
		shutDownProver();
	}
	
	public void shutDownProver() {
		if (null == this.prover)
			return;

		this.prover.shutdown();
		this.prover = null;	
	}

}
