/**
 * 
 */
package org.gravy.checker;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;

import org.gravy.Options;
import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.report.GravyReport;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;

import util.Log;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
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
public class GravyChecker extends AbstractChecker {

	private HashMap<CfgAssertStatement, BasicBlock[]> assertIfThenElseMap = new HashMap<CfgAssertStatement, BasicBlock[]>();
	/**
	 * @param cff
	 * @param p
	 */
	public GravyChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		super(cff, p);
	
		p.pruneUnreachableBlocks();

		if (Options.v().getDebugMode())
			p.toFile("cfg_" + p.getProcedureName() + ".bpl");

		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);

		AbstractLoopUnwinding.unwindeLoops(p);

		p.pruneUnreachableBlocks();

		if (Options.v().getDebugMode())
			p.toFile("loopfree_" + p.getProcedureName() + ".bpl");

		// turn assertions into conditional choices.
		turnAssertionsIntoConditionals(p);

		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.recomputeSSA(p);

		p.pruneUnreachableBlocks();
		
		if (Options.v().getDebugMode())
			p.toFile("final_" + p.getProcedureName() + ".bpl");
		
	}

	@Override
	public void run() {
		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		// Prover prover = pf.spawnWithLog("lala");
		this.prover = pf.spawn();
		Log.debug("Compute Transition Relation "
				+ this.procedure.getProcedureName());
		// AbstractTransitionRelation tr = new
		// TransitionRelation(this.procedure, this.cff, prover);
		CfgTransitionRelation tr = new CfgTransitionRelation(this.procedure,
				this.cff, prover);
		checkSat(prover, tr);
		shutDownProver();
	}


	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org
	 * .gravy.prover.Prover,
	 * org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public void checkSat(Prover prover, AbstractTransitionRelation atr) {

		// StopWatch firstcheck = StopWatch.getInstanceAndStart();
		// StopWatch allchecks = StopWatch.getInstanceAndStart();

		CfgTransitionRelation tr = (CfgTransitionRelation) atr;
		
		// generate ineff flags; this map is also used to keep
		// track of the remaining uncovered blocks
		LinkedHashMap<ProverExpr, ProverExpr> ineffFlags = new LinkedHashMap<ProverExpr, ProverExpr>();

		for (BasicBlock block : tr.getEffectualSet()) {
			ProverExpr v = tr.getReachabilityVariables().get(block);
			ineffFlags.put(v, prover.mkVariable("" + v + "_flag",
					prover.getBooleanType()));
		}

		this.pushTransitionRelation(prover, tr);	

		HashSet<BasicBlock> blocks2cover = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet()); 
		
		// now exclude all feasible paths that may violate the postcondition
		prover.push();
		prover.addAssertion(tr.getEnsures());
		//compute the feasible path cover under the given postcondition
		feasibleBlocks = new HashSet<BasicBlock>(computePathCover(prover, tr, ineffFlags, blocks2cover));
		blocks2cover.removeAll(feasibleBlocks);
		
		//now pop the postcondition.
		prover.pop();
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>(computePathCover(prover, tr, ineffFlags, blocks2cover));	
		
		infeasibleBlocks = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());
		infeasibleBlocks.removeAll(feasibleBlocks);
		infeasibleBlocks.removeAll(infeasibleBlocksUnderPost);
		
		new GravyReport(this.cff, atr, this.feasibleBlocks, this.infeasibleBlocksUnderPost, this.infeasibleBlocks, this.assertIfThenElseMap);
	}	
	
	private void turnAssertionsIntoConditionals(CfgProcedure p) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		LinkedList<BasicBlock> done = new LinkedList<BasicBlock>();

		if (!this.cff.getGlobalVars().containsKey("$$AssertionFailure")) {
			this.cff.getGlobalVars().put(
					"$$AssertionFailure",
					new CfgVariable("$$AssertionFailure", BoogieType.boolType,
							false, true, true, true));
		}
		CfgVariable asrtFail = this.cff.getGlobalVars().get(
				"$$AssertionFailure");

		// add a postcondition to ensure that $$AssertionFailure is false before
		// and
		// after the execution of the procedure.
		p.getEnsures().add(
				new CfgBinaryExpression(p.getLocation(), BoogieType.boolType,
						BinaryOperator.COMPEQ, new CfgIdentifierExpression(p
								.getLocation(), asrtFail),
						new CfgBooleanLiteral(p.getLocation(),
								BoogieType.boolType, false)));

		// BFS throught the cfg and look for assertions.
		todo.add(p.getRootNode());
		while (!todo.isEmpty()) {
			BasicBlock current = todo.removeLast();
			done.add(current);

			for (CfgStatement stmt : new LinkedList<CfgStatement>(
					current.getStatements())) {
				if (stmt instanceof CfgAssertStatement) {
					CfgAssertStatement asrt = (CfgAssertStatement) stmt;
					// if the block has an assertion, split the block in two,
					// and replace
					// the assertion by a conditional choice.
					int splitIdx = current.getStatements().indexOf(stmt);
					LinkedList<CfgStatement> prefix = new LinkedList<CfgStatement>(
							current.getStatements().subList(0, splitIdx));
					LinkedList<CfgStatement> suffix = new LinkedList<CfgStatement>(
							current.getStatements().subList(splitIdx + 1,
									current.getStatements().size()));

					BasicBlock thenBlock = new BasicBlock(asrt.getLocation(),
							current.getLabel() + "#assertionThen");
					thenBlock.setStatements(suffix);
					// add the condition of the assertion to the beginning of
					// the then block
					thenBlock.addStatement(
							new CfgAssumeStatement(asrt.getLocation(), asrt
									.getAttributes(), asrt.getCondition()),
							true);
					// shallow copy the successor and connect the blocks
					HashSet<BasicBlock> succs = new HashSet<BasicBlock>(
							current.getSuccessors());
					for (BasicBlock succ : succs) {
						thenBlock.connectToSuccessor(succ);
						current.disconnectFromSuccessor(succ);
					}

					BasicBlock elseBlock = new BasicBlock(asrt.getLocation(),
							current.getLabel() + "#assertionElse");
					elseBlock.addStatement(
							new CfgAssumeStatement(asrt.getLocation(), asrt
									.getAttributes(), new CfgUnaryExpression(
									asrt.getLocation(), asrt.getCondition()
											.getType(), UnaryOperator.LOGICNEG,
									asrt.getCondition())), true);

					elseBlock.addStatement(
							new CfgAssignStatement(asrt.getLocation(),
									new CfgIdentifierExpression(asrt
											.getLocation(), asrtFail),
									new CfgBooleanLiteral(asrt.getLocation(),
											BoogieType.boolType, true)), false);

					current.setStatements(prefix);
					current.connectToSuccessor(thenBlock);
					current.connectToSuccessor(elseBlock);
					// now set current to the suffix so that we can continue to
					// look
					// for more assertions.
					current = thenBlock;
					
					this.assertIfThenElseMap.put(asrt, new BasicBlock[]{thenBlock, elseBlock})  ;
				}
			}

			if (current.getSuccessors().size() > 0) {
				for (BasicBlock next : current.getSuccessors()) {
					if (!todo.contains(next) && !done.contains(next)) {
						todo.add(next);
					}
				}
			}
		}
	}
}