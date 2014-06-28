/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.loopunwinding.HavocOnlyUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;
import org.gravy.verificationcondition.TransitionRelation;

import util.Log;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.statement.CfgStatement;
import boogie.statement.Statement;

/**
 * @author martin
 *
 */
public class SimpleInfeasibleCodeChecker extends
		AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public SimpleInfeasibleCodeChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);

		p.pruneUnreachableBlocks();

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		AbstractLoopUnwinding.unwindeLoops(p);

		p.pruneUnreachableBlocks();

		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.recomputeSSA(p);

		p.pruneUnreachableBlocks();
		
	}
	
	
	@Override
	public void run() {
		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		//Prover prover = pf.spawnWithLog("lala");
		this.prover = pf.spawn();
		Log.debug("Compute Transition Relation "+this.procedure.getProcedureName());
		//AbstractTransitionRelation tr = new TransitionRelation(this.procedure, this.cff, prover);
		TransitionRelation tr = new TransitionRelation(this.procedure, this.cff, prover);
		checkSat(prover, tr); 
		shutDownProver();
	}
	
	
	/* (non-Javadoc)
	 * @see org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org.gravy.prover.Prover, org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public void checkSat(Prover prover,
			AbstractTransitionRelation atr) {

		TransitionRelation tr = (TransitionRelation)atr; 
		//construct the inverted reachabilityVariables which is used later 
		//to keep track of what has been covered so far.
		HashMap<ProverExpr, BasicBlock> uncoveredBlocks = new HashMap<ProverExpr, BasicBlock>();
		for (Entry<BasicBlock, ProverExpr> entry : tr.getReachabilityVariables().entrySet()) {
			uncoveredBlocks.put(entry.getValue(), entry.getKey());
		}		
		
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		
		//TODO: introduce a flag to decide if we want to check preconditions.		
		prover.addAssertion(tr.getRequires());
				
		for (Entry<BasicBlock, LinkedList<ProverExpr>> entry : tr.getProofObligations()
				.entrySet()) {
			for (ProverExpr assertion : entry.getValue()) {
				prover.addAssertion(assertion);
			}
		}
		
		//now exclude all executions that violate the postcondition
		prover.push();
		prover.addAssertion(tr.getEnsures());

		feasibleBlocks = new HashSet<BasicBlock>();
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>();
		
		for (int i=0; i<2; i++) {
				
			ProverResult res = prover.checkSat(true);
			
			while (res == ProverResult.Sat && uncoveredBlocks.size()>0) {
				if (res == ProverResult.Unsat) {
					//Log.debug("UNSAT");
					break;
				} else if (res == ProverResult.Sat) {
					//Log.debug("SAT");
					for (ProverExpr pe : new LinkedList<ProverExpr>(uncoveredBlocks.keySet())) {										
						ProverExpr val = prover.evaluate(pe);
						if (val.getBooleanLiteralValue()) {
							if (i==0) {
								//if we are in the first iteration, this is a feasible block
								feasibleBlocks.add(uncoveredBlocks.get(pe));
							} else {
								infeasibleBlocksUnderPost.add(uncoveredBlocks.get(pe));
							}							
							uncoveredBlocks.remove(pe);
						}
					}				
				} else {
					Log.error("Prover returned " + res);
					return;
				}
							
				ProverExpr enablingClause;
				if (uncoveredBlocks.keySet().size() == 0) {
					enablingClause = prover.mkLiteral(true);
				} else {
					enablingClause = prover.mkOr(uncoveredBlocks.keySet().toArray(new ProverExpr[uncoveredBlocks.keySet().size()]));
				}
				
				prover.addAssertion(enablingClause);
				
				res = prover.checkSat(true);
			}			
			//do the second part only once!
			if (i==1) break;

			
			//pop the assertion $ex_returned == false
			prover.pop();
			//now check again while allowing exceptional termination
			ProverExpr enablingClause;
			if (uncoveredBlocks.keySet().size() == 0) {
				enablingClause = prover.mkLiteral(true);
			} else {
				enablingClause = prover.mkOr(uncoveredBlocks.keySet().toArray(new ProverExpr[uncoveredBlocks.keySet().size()]));
			}			
			prover.addAssertion(enablingClause);
			res = prover.checkSat(true);			
		}
		infeasibleBlocks = new HashSet<BasicBlock>();
		infeasibleBlocks.addAll(uncoveredBlocks.values());
		
		
		StringBuilder sb = new StringBuilder();
		sb.append("Statistics for "+this.procedure.getProcedureName() + " \n");
		sb.append("Total Blocks: " + tr.getReachabilityVariables().size() + "\n");
		sb.append("Feasible Blocks: " + feasibleBlocks.size() + "\n");
		sb.append("Infeasible wrt to Postcondition: " + infeasibleBlocksUnderPost.size()+"\n");
		sb.append("Infeasible w/o postcondition Blocks: " + infeasibleBlocks.size()+"\n");
		Log.info(sb);		
	}

}
