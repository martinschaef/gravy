/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.loopunwinding.HavocOnlyUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverResult;
import org.gravy.prover.princess.PrincessProver;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.util.StopWatch;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;
import org.joogie.cfgPlugin.Util.Dag;

import util.Log;
import ap.parser.IFormula;
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
public class CfgTheoryInfeasibleCodeDetection extends
		AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public CfgTheoryInfeasibleCodeDetection(AbstractControlFlowFactory cff,
			CfgProcedure p) {
		super(cff, p);
		//make the program loop-free and call-free
		

		// try{
		// p.toDot(p.getProcedureName()+"__before.dot");
		// Process a = Runtime.getRuntime().exec("dot -Tpng " +
		// p.getProcedureName()+"__before.dot -O");
		// a.waitFor();
		// } catch (Exception e) {}

		// TODO: this is only necessary, if we used the AssertionErrorModel
		// as certain catchblocks might be unreachable.
		// This is probably the wrong place to do this.
		p.pruneUnreachableBlocks();

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		AbstractLoopUnwinding unwind = new HavocOnlyUnwinding(p);
		unwind.unwind();

		p.pruneUnreachableBlocks();
		// try{
		// p.toDot(p.getProcedureName()+"__afterSSA.dot");
		// Process a = Runtime.getRuntime().exec("dot -Tpng " +
		// p.getProcedureName()+"__afterSSA.dot -O");
		// a.waitFor();
		// } catch (Exception e) {}

		// this.cff.toFile("loopfree.bpl");

		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.recomputeSSA(p);

		p.pruneUnreachableBlocks();
		
		
		
	}

	/* (non-Javadoc)
	 * @see org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org.gravy.prover.Prover, org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public Collection<BasicBlock> checkSat(Prover prover,
			AbstractTransitionRelation atr) {
		if (!(atr instanceof CfgTransitionRelation)) {
			throw new RuntimeException("only works with cfgtransitionrelation");
		}
		
		StopWatch firstcheck = StopWatch.getInstanceAndStart();
		StopWatch allchecks = StopWatch.getInstanceAndStart();
		
		CfgTransitionRelation tr = (CfgTransitionRelation)atr;
		Dag<IFormula> vcdag = tr.getProverDAG();

		// generate ineff flags; this map is also used to keep
		// track of the remaining uncovered blocks
		LinkedHashMap<ProverExpr, ProverExpr> ineffFlags = new LinkedHashMap<ProverExpr, ProverExpr>();

		for (BasicBlock block : tr.getEffectualSet()) {
			ProverExpr v = tr.getReachabilityVariables().get(block);
			ineffFlags.put(
					v,
					prover.mkVariable("" + v + "_flag",
							prover.getBooleanType()));
		}
		
		
        //construct the inverted reachabilityVariables which is used later 
        //to keep track of what has been covered so far.
        HashMap<ProverExpr, BasicBlock> uncoveredBlocks = new HashMap<ProverExpr, BasicBlock>();
        
        //@Daniel: allBlocks is a local helper that we use the reconstruct feasible paths later
        HashMap<ProverExpr, BasicBlock> allBlocks = new HashMap<ProverExpr, BasicBlock>();
        
        for (Entry<BasicBlock, ProverExpr> entry : tr.getReachabilityVariables().entrySet()) {
            uncoveredBlocks.put(entry.getValue(), entry.getKey());
            allBlocks.put(entry.getValue(), entry.getKey());
            //TODO: remove this once the bug in the effectual set is fixed
			
//			ineffFlags.put(
//					entry.getValue(),
//					prover.mkVariable("" + entry.getValue() + "_flag",
//							prover.getBooleanType()));
            
        }       
		

		//now assert all proof obligations
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		
        for (Entry<BasicBlock, LinkedList<ProverExpr>> entry : tr.getProofObligations()
            .entrySet()) {
          for (ProverExpr assertion : entry.getValue()) {
            prover.addAssertion(assertion);
          }
        }
    

		// now exclude exceptional termination
        prover.push();
		prover.addAssertion(prover.mkEq(tr.getExpetionalReturnFlag(), prover.mkLiteral(false)));
		
		
        HashSet<BasicBlock> feasibleBlocks = new HashSet<BasicBlock>();
        HashSet<BasicBlock> infeasibleBlocks = new HashSet<BasicBlock>();
        HashSet<BasicBlock> reachableInfeasibleBlocks = new HashSet<BasicBlock>();
        
        LinkedList<LinkedList<BasicBlock>> allPaths = new LinkedList<LinkedList<BasicBlock>>();
        
        for (int exceptionStatus=0; exceptionStatus<2; exceptionStatus++) {
		
          int threshold = ineffFlags.size();
          // slightly better guess
          if (threshold > 1)
            threshold = threshold / 2;

          int rounds = 1;// only for pretty printing

          while (threshold >= 1 && !ineffFlags.isEmpty()) {
            prover.push();

			// setup the CFG module
			LinkedList<ProverExpr> remainingBlockVars = new LinkedList<ProverExpr>();
			LinkedList<ProverExpr> remainingIneffFlags = new LinkedList<ProverExpr>();

			for (Entry<ProverExpr, ProverExpr> entry : ineffFlags.entrySet()) {
				remainingBlockVars.add(entry.getKey());
				remainingIneffFlags.add(entry.getValue());
			}

			((PrincessProver) prover).setupCFGPlugin(vcdag,
					remainingBlockVars, remainingIneffFlags, threshold);

			// Query the feasible paths for this setup
			ProverResult res = prover.checkSat(true);
			if (rounds==1) firstcheck.stop();
			Log.debug("Round " + (rounds++));
			Log.debug("Prover returns " + res.toString());

			while (res == ProverResult.Sat) {
				LinkedList<ProverExpr> covered = new LinkedList<ProverExpr>();
				LinkedList<ProverExpr> flagsToAssert = new LinkedList<ProverExpr>();

				/* TODO: @Daniel
				 * if you check exceptionStatus==0, allPaths will contain a set of feasible
				 * complete paths that terminates normally.
				 * If you check exceptionStatus==1, allPaths will contain a set of feasible
				 * complete paths that terminate by throwing an exception..
				 */ 
				if (exceptionStatus==1) {
					//TODO: This is a hack for Daniels PLDI algorithm
					//collect the path from the counterexample
					LinkedList<BasicBlock> path = new LinkedList<BasicBlock>();
	                for (Entry<ProverExpr, BasicBlock> entry : allBlocks.entrySet()) {
	                    final ProverExpr pe = entry.getKey();
	                    if (prover.evaluate(pe).getBooleanLiteralValue()) {
	                    	path.add(entry.getValue());
	                    }
	                }
	                allPaths.add(path);
				}
				
                for (Entry<ProverExpr, BasicBlock> entry : uncoveredBlocks.entrySet()) {
                  final ProverExpr pe = entry.getKey();
                  if (prover.evaluate(pe).getBooleanLiteralValue()) {
                	  
                	//@Daniel: prover.evaluate is where you check which block
                	//block variables have been set to true in the current counterexample.
                	  
                    covered.add(pe);
                    
                    if (exceptionStatus == 0) {
                        //if we are in the first iteration, this is a feasible block
                        feasibleBlocks.add(entry.getValue());
                    } else {
                        reachableInfeasibleBlocks.add(entry.getValue());
                    }
                    
                    ProverExpr flag = ineffFlags.get(pe);
                    if (flag != null)
                      flagsToAssert.add(flag);
                  }
                }
				
				for (ProverExpr e : covered) {
					ineffFlags.remove(e);
					uncoveredBlocks.remove(e);
				}
				
				prover.addAssertion(prover.mkAnd(flagsToAssert
						.toArray(new ProverExpr[flagsToAssert.size()])));

				res = prover.checkSat(true);

				Log.debug("Round " + (rounds++));
				Log.debug("Prover returns " + res.toString());
			}

			prover.pop();

			if (threshold == 1 || ineffFlags.isEmpty())
				break;

			do {
			  threshold = (int) Math.ceil((double) threshold / 2.0);
			} while (threshold > ineffFlags.size());
			
          }
          
          if (exceptionStatus == 1)
            break;
          
          infeasibleBlocks.addAll(uncoveredBlocks.values());
          
          Log.info("covered the non-exceptional returning code");
          //pop the assertion $ex_returned == false
          prover.pop();
        }
		allchecks.stop();


		{//only reporting stuff in this blocks
			/*
			 * since we may clone statements during loop unwinding we have to collect the
			 * feasible statements first. Now, while counting the possibly unsafe, strictly 
			 * unsafe, and unreachable statements, we have to make sure that they don't have
			 * a clone that is actually feasible. 
			 */
	        HashSet<CfgStatement> feasibleCfgStatements = new HashSet<CfgStatement>();
	        for (BasicBlock b : feasibleBlocks) {
	            for (CfgStatement stmt : b.getStatements()) {
	            	feasibleCfgStatements.add(stmt);                       
	            }
	        }      
			
	        
	        //collect all statements that cannot occur
	        //on non-exceptional executions
	        for (BasicBlock b : infeasibleBlocks) {
	            for (CfgStatement stmt : b.getStatements()) {
	            	if (feasibleCfgStatements.contains(stmt)) {
	            		//in that case, there is a cloned version of this
	            		//statement introduced during loop unwinding, so
	            		//we have to ignore it.
	            		continue;
	            	}            	
	                Statement s = this.cff.findAstStatement(stmt);
	                if (s!=null) {
	                    this.infeasibleStatements.add(s);
	                    //Log.error(s);                 
	                }
	            }
	        }    
	        
	        HashSet<CfgStatement> reachableInfeasibleCfgStatements = new HashSet<CfgStatement>();
	        
	        //collect all statements that are feasible on executions
	        //with exceptional return but not on others.        
	        //Log.error("feasibleExceptions:");
	        for (BasicBlock b : reachableInfeasibleBlocks) {
	            for (CfgStatement stmt : b.getStatements()) {
	            	//collect the statements to check later on if a 
	            	//duplicate is declared as uncovered.
	            	reachableInfeasibleCfgStatements.add(stmt);
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
	            	if (reachableInfeasibleCfgStatements.contains(stmt) || feasibleCfgStatements.contains(stmt)) {
	            		//in that case, stmt has duplicates that are reachable
	            		//so we must not declare it as unreachable
	            		continue;
	            	}
	                Statement s = this.cff.findAstStatement(stmt);
	                if (s!=null) {                  
	                    this.infeasibleExceptions.add(s);
	                    //Log.error(s);
	                }
	            }
	        }
		}
	
		return infeasibleBlocks;
	}
}