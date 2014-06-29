/**
 * 
 */
package org.gravy.checker;

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
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;
import org.joogie.cfgPlugin.Util.Dag;

import util.Log;
import ap.parser.IFormula;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;

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

		CfgTransitionRelation tr = (CfgTransitionRelation) atr;
		Dag<IFormula> vcdag = tr.getProverDAG();
		
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
		
		//this set is empty for infeasible code detection.
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>();
		
		infeasibleBlocks = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());
		infeasibleBlocks.removeAll(feasibleBlocks);
		
		
		StringBuilder sb = new StringBuilder();
		sb.append("Statistics for " + this.procedure.getProcedureName() + " \n");
		sb.append("Total Blocks: " + tr.getReachabilityVariables().size()
				+ "\n");
		sb.append("Feasible Blocks: " + feasibleBlocks.size() + "\n");

		sb.append("Feasible Exceptional Blocks: "
				+ infeasibleBlocksUnderPost.size() + "\n");
		
		sb.append("Infeasible Blocks: " + infeasibleBlocks.size() + "\n");

		Log.info(sb);

	}
}