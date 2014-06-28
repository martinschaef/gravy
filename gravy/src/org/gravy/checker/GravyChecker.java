/**
 * 
 */
package org.gravy.checker;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.Options;
import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.loopunwinding.SimpleUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.prover.princess.PrincessProver;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;
import org.joogie.cfgPlugin.Util.Dag;

import util.Log;
import ap.parser.IFormula;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.CfgVariable;
import boogie.controlflow.expression.CfgBinaryExpression;
import boogie.controlflow.expression.CfgBooleanLiteral;
import boogie.controlflow.expression.CfgIdentifierExpression;
import boogie.controlflow.expression.CfgUnaryExpression;
import boogie.controlflow.statement.CfgAssertStatement;
import boogie.controlflow.statement.CfgAssignStatement;
import boogie.controlflow.statement.CfgAssumeStatement;
import boogie.controlflow.statement.CfgStatement;
import boogie.enums.BinaryOperator;
import boogie.enums.UnaryOperator;
import boogie.type.BoogieType;

/**
 * @author martin
 *
 */
public class GravyChecker extends
		AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public GravyChecker(AbstractControlFlowFactory cff,
			CfgProcedure p) {
		super(cff, p);
		
		p.pruneUnreachableBlocks();		

		if (Options.v().getDebugMode()) p.toFile("cfg_"+p.getProcedureName()+".bpl");
		
		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		AbstractLoopUnwinding.unwindeLoops(p);

		p.pruneUnreachableBlocks();

		if (Options.v().getDebugMode())  p.toFile("loopfree_"+p.getProcedureName()+".bpl");
		
		//turn assertions into conditional choices.
		turnAssertionsIntoConditionals(p);
		
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
                    
          //pop the assertion $ex_returned == false
          prover.pop();
        }
		//allchecks.stop();
		infeasibleBlocks = new HashSet<BasicBlock>();
		infeasibleBlocks.addAll(uncoveredBlocks.values());

		StringBuilder sb = new StringBuilder();
		sb.append("Statistics for "+this.procedure.getProcedureName() + " \n");
		sb.append("Total Blocks: " + tr.getReachabilityVariables().size() + "\n");
		sb.append("Feasible Blocks: " + feasibleBlocks.size() + "\n");
		sb.append("Feasible Exceptional Blocks: " + infeasibleBlocksUnderPost.size()+"\n");
		sb.append("Infeasible Blocks: " + uncoveredBlocks.size()+"\n");
		
		int feasibleExceptions = 0;
		for (BasicBlock b : infeasibleBlocksUnderPost) {
			if (b.getLabel().endsWith("#assertionElse")) {
				feasibleExceptions++;
			}
		}
		
		int infeasibleExceptions = 0;
		for (BasicBlock b : infeasibleBlocks) {
			if (b.getLabel().endsWith("#assertionElse")) {
				infeasibleExceptions++;
			}
		}
		
		//TODO: this is a very primitive way of counting.
		sb.append("feasibleExceptions: " + feasibleExceptions+"\n");
		sb.append("infeasibleExceptions: " + infeasibleExceptions+"\n");
		
		Log.info(sb);
	}


	private void turnAssertionsIntoConditionals(CfgProcedure p) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		LinkedList<BasicBlock> done = new LinkedList<BasicBlock>();

		if (!this.cff.getGlobalVars().containsKey("$$AssertionFailure")) {
			this.cff.getGlobalVars().put("$$AssertionFailure", new CfgVariable("$$AssertionFailure", BoogieType.boolType, false, true, true, true ));			
		}
		CfgVariable asrtFail = this.cff.getGlobalVars().get("$$AssertionFailure");	
		
		
		// add a postcondition to ensure that $$AssertionFailure is false before and
		//after the execution of the procedure.
		p.getEnsures().add(new CfgBinaryExpression(p.getLocation(), BoogieType.boolType, BinaryOperator.COMPEQ, 
				new CfgIdentifierExpression(p.getLocation(), asrtFail), 
				new CfgBooleanLiteral(p.getLocation(), BoogieType.boolType, false)));
		
		
		//BFS throught the cfg and look for assertions.
		todo.add(p.getRootNode());
		while (!todo.isEmpty()) {
			BasicBlock current = todo.removeLast();
			done.add(current);
			
			for (CfgStatement stmt : new LinkedList<CfgStatement>(current.getStatements())) {
				if (stmt instanceof CfgAssertStatement) {
					CfgAssertStatement asrt = (CfgAssertStatement)stmt;
					//if the block has an assertion, split the block in two, and replace 
					//the assertion by a conditional choice.
					int splitIdx = current.getStatements().indexOf(stmt);
					LinkedList<CfgStatement> prefix = new LinkedList<CfgStatement>(current.getStatements().subList(0, splitIdx));
					LinkedList<CfgStatement> suffix = new LinkedList<CfgStatement>(current.getStatements().subList(splitIdx+1, current.getStatements().size()));
					
					BasicBlock thenBlock = new BasicBlock(asrt.getLocation(), current.getLabel()+"#assertionThen");
					thenBlock.setStatements(suffix);
					//add the condition of the assertion to the beginning of the then block
					thenBlock.addStatement(new CfgAssumeStatement(asrt.getLocation(), asrt.getCondition()), true);
					//shallow copy the successor and connect the blocks
					HashSet<BasicBlock> succs = new HashSet<BasicBlock>(current.getSuccessors());
					for (BasicBlock succ : succs) {
						thenBlock.connectToSuccessor(succ);
						current.disconnectFromSuccessor(succ);
					}
					
					BasicBlock elseBlock = new BasicBlock(asrt.getLocation(), current.getLabel()+"#assertionElse");
					elseBlock.addStatement(new CfgAssumeStatement(asrt.getLocation(), 
							new CfgUnaryExpression(asrt.getLocation(), 
									asrt.getCondition().getType(), UnaryOperator.LOGICNEG, asrt.getCondition())
					), true);
					
					elseBlock.addStatement(new CfgAssignStatement(asrt.getLocation(), 
							new CfgIdentifierExpression(asrt.getLocation(), asrtFail),
							new CfgBooleanLiteral(asrt.getLocation(), BoogieType.boolType, true)), false );
					
					
					current.setStatements(prefix);
					current.connectToSuccessor(thenBlock);
					current.connectToSuccessor(elseBlock);
					//now set current to the suffix so that we can continue to look
					//for more assertions.
					current = thenBlock;
				}
			}
			
			if (current.getSuccessors().size()>0) {
				for (BasicBlock next : current.getSuccessors()) {
					if (!todo.contains(next) && !done.contains(next)) {
						todo.add(next);
					}
				}
			} 		
		}		
	}
}