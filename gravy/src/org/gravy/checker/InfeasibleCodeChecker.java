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
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.prover.princess.PrincessProver;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.util.StopWatch;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;
import org.gravy.verificationcondition.TransitionRelation;
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
public class InfeasibleCodeChecker extends
		AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public InfeasibleCodeChecker(AbstractControlFlowFactory cff,
			CfgProcedure p) {
		super(cff, p);

		p.pruneUnreachableBlocks();

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		AbstractLoopUnwinding unwind = new HavocOnlyUnwinding(p);
		unwind.unwind();

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
		CfgTransitionRelation tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
		checkSat(prover, tr); 
		shutDownProver();
	}
	
	
	/* (non-Javadoc)
	 * @see org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org.gravy.prover.Prover, org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public void checkSat(Prover prover,
			AbstractTransitionRelation atr) {

		
//		StopWatch firstcheck = StopWatch.getInstanceAndStart();
//		StopWatch allchecks = StopWatch.getInstanceAndStart();
		
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
        }       
		

		//now assert all proof obligations
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
    

		// now exclude all feasible paths that may violate the postcondition
        prover.push();
		prover.addAssertion(tr.getEnsures());
		
        for (int checkPostcondition=0; checkPostcondition<2; checkPostcondition++) {
		
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
			//if (rounds==1) firstcheck.stop();
			Log.debug("Round " + (rounds++));
			Log.debug("Prover returns " + res.toString());

			while (res == ProverResult.Sat) {
				LinkedList<ProverExpr> covered = new LinkedList<ProverExpr>();
				LinkedList<ProverExpr> flagsToAssert = new LinkedList<ProverExpr>();
				
                for (Entry<ProverExpr, BasicBlock> entry : uncoveredBlocks.entrySet()) {
                  final ProverExpr pe = entry.getKey();
                  if (prover.evaluate(pe).getBooleanLiteralValue()) {                	  
                    covered.add(pe);                    
                    if (checkPostcondition == 0) {
                        //if we are in the first iteration, this is a feasible block
                        feasibleBlocks.add(entry.getValue());
                    } else {
                        infeasibleBlocksUnderPost.add(entry.getValue());
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
          
          if (checkPostcondition == 1)
            break;
          
          infeasibleBlocks.addAll(uncoveredBlocks.values());
          
          Log.info("covered the non-exceptional returning code");
          //pop the assertion $ex_returned == false
          prover.pop();
        }
		//allchecks.stop();
		infeasibleBlocks = new HashSet<BasicBlock>();
		infeasibleBlocks.addAll(uncoveredBlocks.values());

		
		StringBuilder sb = new StringBuilder();
		sb.append("Statistics -------- \n");
		sb.append("Total Blocks: " + tr.getReachabilityVariables().size() + "\n");
		sb.append("Feasible Blocks: " + feasibleBlocks.size() + "\n");
		sb.append("Feasible Exceptional Blocks: " + infeasibleBlocksUnderPost.size()+"\n");
		sb.append("Infeasible Blocks: " + uncoveredBlocks.size()+"\n");
		Log.error(sb);
	}
}