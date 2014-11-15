/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;

import org.gravy.Options;
import org.gravy.callunwinding.CallUnwinding;
import org.gravy.loopunwinding.AbstractLoopUnwinding;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.prover.princess.PrincessProver;
import org.gravy.report.InfeasibleReport;
import org.gravy.report.InterpolationInfeasibleReport;
import org.gravy.report.Report;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.util.Statistics;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.JodTransitionRelation;
import org.gravy.verificationcondition.RocketScienceTransitionRelation;
import org.joogie.cfgPlugin.Util.Dag;

import util.Log;
import ap.parser.IFormula;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 *
 */
public class RocketScienceChecker extends
		AbstractChecker {

	/**
	 * @param cff
	 * @param p
	 */
	public RocketScienceChecker(AbstractControlFlowFactory cff,
			CfgProcedure p) {
		super(cff, p);
		
		p.pruneUnreachableBlocks();
		
		CallUnwinding cunwind = new CallUnwinding();
		cunwind.unwindCalls(p);	
		
		AbstractLoopUnwinding.unwindeLoops(p);
		p.pruneUnreachableBlocks();
				
		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.computeSSA(p);

		p.pruneUnreachableBlocks();
	}


	/* (non-Javadoc)
	 * @see org.gravy.infeasiblecode.AbstractInfeasibleCodeDetection#checkSat(org.gravy.prover.Prover, org.gravy.verificationcondition.CfgTransitionRelation)
	 */
	@Override
	public Report checkSat(Prover prover,
			AbstractTransitionRelation atr) {

		
		RocketScienceTransitionRelation tr = (RocketScienceTransitionRelation) atr;
		
		// generate ineff flags; this map is also used to keep
		// track of the remaining uncovered blocks
		LinkedHashMap<ProverExpr, ProverExpr> ineffFlags = new LinkedHashMap<ProverExpr, ProverExpr>();

		Statistics.HACK_effectualSetSize = tr.getEffectualSet().size();
		
		for (BasicBlock block : tr.getEffectualSet()) {
			ProverExpr v = tr.getReachabilityVariables().get(block);
			ineffFlags.put(v, prover.mkVariable("" + v + "_flag",
					prover.getBooleanType()));
		}

		prover.push();
		this.pushTransitionRelation(prover, tr);	

		HashSet<BasicBlock> blocks2cover = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet()); 
		
		prover.addAssertion(tr.getEnsures());
		//compute the feasible path cover under the given postcondition
		feasibleBlocks = new HashSet<BasicBlock>(computePathCover2(prover, tr, ineffFlags, blocks2cover));
		blocks2cover.removeAll(feasibleBlocks);
		
		//this set is empty for infeasible code detection.
		infeasibleBlocksUnderPost = new HashSet<BasicBlock>();
		
		infeasibleBlocks = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());
		infeasibleBlocks.removeAll(feasibleBlocks);
		//this is just for debugging purposes
		if (Options.v().getChecker()==3) {
			return new InfeasibleReport(this.cff, atr, this.feasibleBlocks, this.infeasibleBlocks);
		}
		return new InterpolationInfeasibleReport(this.cff, atr, this.feasibleBlocks, this.infeasibleBlocks);
	}
		
	
	
	private int TIME_LIMIT = 8000; //millisecs
	/**
	 * Computes a maximal feasible path cover for the BasicBlocks 
	 * in blocks2cover and returns the set of all covered nodes.
	 * @param prover
	 * @param tr
	 * @param ineffFlags flags for the effectual blocks in blocks2cover
	 * @param blocks2cover set of nodes for which the cover can be computed
	 * @return subset of nodes in block2cover that can be covered.
	 */
	protected Collection<BasicBlock> computePathCover2(Prover prover, RocketScienceTransitionRelation tr,
			LinkedHashMap<ProverExpr, ProverExpr> ineffFlags, HashSet<BasicBlock> blocks2cover) {

		Dag<IFormula> vcdag = tr.getProverDAG();

		HashSet<BasicBlock> coveredBlocks = new HashSet<BasicBlock>();
		
		// construct the inverted reachabilityVariables which is used later
		// to keep track of what has been covered so far.
		LinkedHashMap<ProverExpr, BasicBlock> uncoveredBlocks = new LinkedHashMap<ProverExpr, BasicBlock>();
		for (Entry<BasicBlock, ProverExpr> entry : tr
				.getReachabilityVariables().entrySet()) {
			if (blocks2cover.contains(entry.getKey())) {
				//ignore the blocks that we are not interested in
				uncoveredBlocks.put(entry.getValue(), entry.getKey());
			}	
		}

		
		int threshold = ineffFlags.size();
		// hint for the greedy cover algorithm about
		// how many blocks could be covered in one query.
		if (threshold > 1)
			threshold = threshold / 2;

		while (threshold >= 1 && !ineffFlags.isEmpty()) {
			prover.push();

			// setup the CFG module
			LinkedList<ProverExpr> remainingBlockVars = new LinkedList<ProverExpr>();
			LinkedList<ProverExpr> remainingIneffFlags = new LinkedList<ProverExpr>();
			for (Entry<ProverExpr, ProverExpr> entry : ineffFlags.entrySet()) {
				remainingBlockVars.add(entry.getKey());
				remainingIneffFlags.add(entry.getValue());
			}

			((PrincessProver) prover).setupCFGPlugin(vcdag, remainingBlockVars,
					remainingIneffFlags, threshold);

			if (org.gravy.Options.v().getDebugMode()) {
				Log.info("Number of remaining blocks " + ineffFlags.size());				
			}
			
			// Query the feasible paths for this setup
			ProverResult res = prover.checkSat(true);
			while (res == ProverResult.Sat) {

				if (org.gravy.Options.v().getDebugMode()) {
					Log.info("Prover returns " + res.toString());
				}

				LinkedList<ProverExpr> covered = new LinkedList<ProverExpr>();
				LinkedList<ProverExpr> flagsToAssert = new LinkedList<ProverExpr>();

				for (Entry<ProverExpr, BasicBlock> entry : uncoveredBlocks
						.entrySet()) {
					final ProverExpr pe = entry.getKey();
					if (prover.evaluate(pe).getBooleanLiteralValue()) {
						covered.add(pe);
						ProverExpr flag = ineffFlags.get(pe);
						if (flag != null)
							flagsToAssert.add(flag);
					}
				}

				for (ProverExpr e : covered) {
					ineffFlags.remove(e);
					coveredBlocks.add(uncoveredBlocks.get(e) );
					uncoveredBlocks.remove(e);
				}

				prover.addAssertion(prover.mkAnd(flagsToAssert
						.toArray(new ProverExpr[flagsToAssert.size()])));

				if (org.gravy.Options.v().getDebugMode()) {
					Log.info("Number of remaining blocks " + ineffFlags.size());				
				}

				prover.checkSat(false);			 
				res = prover.getResult(TIME_LIMIT);
			}

			if (res==ProverResult.Running) {
				//the coverage algorithm could not make progress within the 
				//given time limit. Falling back to the new algorithms.
				prover.stop();
				prover.pop();
				return coverHardToGetBlocks(tr, coveredBlocks);
			}
			
			prover.pop();

			if (threshold == 1 || ineffFlags.isEmpty())
				break;

			do {
				threshold = (int) Math.ceil((double) threshold / 2.0);
			} while (threshold > ineffFlags.size());

		}
		return coveredBlocks;
	}
	
	private Set<BasicBlock> coverHardToGetBlocks(RocketScienceTransitionRelation tr, Set<BasicBlock> covered) {
		Set<BasicBlock> result = new HashSet<BasicBlock>(covered);
		//pop the old transition relation
		prover.shutdown();
		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		prover = pf.spawn();
		
		//get the set of blocks that still need to be covered.		
		Set<BasicBlock> notCovered = new HashSet<BasicBlock>(tr.getReachabilityVariables().keySet());
		notCovered.removeAll(covered);
		
		if (notCovered.isEmpty()) {
			throw new RuntimeException("this must not happen");
		}
		

		JodChecker2 jodcheck = new JodChecker2(cff, procedure, prover);
		JodTransitionRelation jtr = new JodTransitionRelation(procedure, cff, prover);
		
		result.addAll(jodcheck.computeJodCover(prover, jtr, covered));
		return result;
	}
	
	
}