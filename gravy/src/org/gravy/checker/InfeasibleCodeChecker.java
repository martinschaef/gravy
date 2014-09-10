/**
 * 
 */
package org.gravy.checker;

import java.util.HashSet;
import java.util.LinkedHashMap;

import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.report.InfeasibleReport;
import org.gravy.report.Report;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
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
		
//		p.toDot("./"+p.getProcedureName()+".dot");
		
		p.pruneUnreachableBlocks();
		
//		p.toDot("./"+p.getProcedureName()+".dot");
		
		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);	
		
		AbstractLoopUnwinding.unwindeLoops(p);
		p.pruneUnreachableBlocks();

//		p.toFile("./"+p.getProcedureName()+".bpl");
				
		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.recomputeSSA(p);

		p.pruneUnreachableBlocks();
		
//		p.toDot("./"+p.getProcedureName()+"_lf.dot");
	}


	/* (non-Javadoc)
	 * @see org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org.gravy.prover.Prover, org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public Report checkSat(Prover prover,
			AbstractTransitionRelation atr) {

		
//		StopWatch firstcheck = StopWatch.getInstanceAndStart();

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
		
		//this set is empty for infeasible code detection.
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>();
		
		infeasibleBlocks = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());
		infeasibleBlocks.removeAll(feasibleBlocks);
		
		return new InfeasibleReport(this.cff, atr, this.feasibleBlocks, this.infeasibleBlocks);
	}
		
	
}