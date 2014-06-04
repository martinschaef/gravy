/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverResult;
import org.gravy.verificationcondition.AbstractTransitionRelation;
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
public class IcfemInfeasibleCodeDetection extends
		AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public IcfemInfeasibleCodeDetection(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);
	}
	
	/* (non-Javadoc)
	 * @see org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org.gravy.prover.Prover, org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public Collection<BasicBlock> checkSat(Prover prover,
			AbstractTransitionRelation atr) {
		if (!(atr instanceof TransitionRelation)) {
			throw new RuntimeException("only works with TransitionRelation");
		}
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
		
		for (Entry<BasicBlock, LinkedList<ProverExpr>> entry : tr.getProofObligations()
				.entrySet()) {
			for (ProverExpr assertion : entry.getValue()) {
				prover.addAssertion(assertion);
			}
		}
		
		
		
		//now exclude exceptional termination
		prover.push();
		prover.addAssertion(prover.mkEq(tr.getExpetionalReturnFlag(), prover.mkLiteral(false)));

		HashSet<BasicBlock> feasibleBlocks = new HashSet<BasicBlock>();
		HashSet<BasicBlock> exceptionalFeasibleBlocks = new HashSet<BasicBlock>();
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
								exceptionalFeasibleBlocks.add(uncoveredBlocks.get(pe));
							}							
							uncoveredBlocks.remove(pe);
						}
					}				
				} else {
					Log.error("Prover returned " + res);
					return new LinkedList<BasicBlock>();
				}
							
				ProverExpr enablingClause;
				if (uncoveredBlocks.keySet().size() == 0) {
					enablingClause = prover.mkLiteral(true);
				} else {
					enablingClause = prover.mkOr(uncoveredBlocks.keySet().toArray(new ProverExpr[uncoveredBlocks.keySet().size()]));
				}
				
				prover.addAssertion(enablingClause);
//				if (i==0) {
//					Log.info("... remaining blocks: "+ uncoveredBlocks.size()+"/"+tr.getReachabilityVariables().size());
//				} else {
//					Log.info("... exceptional blocks: "+ uncoveredBlocks.size()+"/"+tr.getReachabilityVariables().size());
//				}
				
				res = prover.checkSat(true);
			}			
			//do the second part only once!
			if (i==1) break;
			infeasibleBlocks.addAll(uncoveredBlocks.values());
			Log.info("covered the non-exceptional returning code");
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
		
		StringBuilder sb = new StringBuilder();
		sb.append("Statistics -------- \n");
		sb.append("Total Blocks: " + tr.getReachabilityVariables().size() + "\n");
		sb.append("Feasible Blocks: " + feasibleBlocks.size() + "\n");
		sb.append("Feasible Exceptional Blocks: " + exceptionalFeasibleBlocks.size()+"\n");
		sb.append("Infeasible Blocks: " + uncoveredBlocks.size()+"\n");
		Log.error(sb);
		
		//collect all assignments that are feasible on executions
		//with exceptional return but not on others.		
		//Log.error("feasibleExceptions:");
		for (BasicBlock b : exceptionalFeasibleBlocks) {
			for (CfgStatement stmt : b.getStatements()) {
				Statement s = this.cff.findAstStatement(stmt);
				if (s!=null) {
					this.feasibleExceptions.add(s);
					//Log.error(s);					
				}
			}
		}
		//collect all infeasible statements
		//Log.error("infeasibleExceptions:");
		for (BasicBlock b : uncoveredBlocks.values()) {
			for (CfgStatement stmt : b.getStatements()) {
				Statement s = this.cff.findAstStatement(stmt);
				if (s!=null) {					
					this.infeasibleExceptions.add(s);
					//Log.error(s);
				}
			}
		}
		
		//HACK: now find the original AST statements of the feasible exceptions
		//and store them somewhere.
		
		return uncoveredBlocks.values();
	}

}
