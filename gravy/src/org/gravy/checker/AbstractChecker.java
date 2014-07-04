/**
 * 
 */
package org.gravy.checker;

import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.prover.princess.PrincessProver;
import org.gravy.report.Report;
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
public abstract class AbstractChecker implements Runnable {

	protected AbstractControlFlowFactory cff;
	protected CfgProcedure procedure;
	
	private Report report = null;
		
	protected HashSet<BasicBlock> feasibleBlocks = new HashSet<BasicBlock>();
	protected HashSet<BasicBlock> infeasibleBlocks = new HashSet<BasicBlock>();
	protected HashSet<BasicBlock> infeasibleBlocksUnderPost = new HashSet<BasicBlock>();

	//TODO: this is a very trivial way of reporting
	public long countFeasibleBlock() {
		return feasibleBlocks.size();
	}

	//TODO: this is a very trivial way of reporting
	public long countInfeasibleBlock() {
		return infeasibleBlocks.size();
	}

	//TODO: this is a very trivial way of reporting
	public long countInfeasibleBlockUnderPost() {
		return infeasibleBlocksUnderPost.size();
	}
	
	
	protected Prover prover = null;
	
	/**
	 * 
	 */
	public AbstractChecker(AbstractControlFlowFactory cff, CfgProcedure p) {
		this.cff = cff;
		this.procedure = p;
	}

	public abstract Report checkSat(Prover prover, AbstractTransitionRelation tr);
	
	public Report getReport() {
		return this.report;
	}
	
	
	@Override
	public void run() {
		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		//Prover prover = pf.spawnWithLog("lala");
		this.prover = pf.spawn();
		Log.debug("Compute Transition Relation "+this.procedure.getProcedureName());
		//AbstractTransitionRelation tr = new TransitionRelation(this.procedure, this.cff, prover);
		CfgTransitionRelation tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
		this.report = checkSat(prover, tr); 
		shutDownProver();
	}
	
	public void shutDownProver() {
		if (null == this.prover)
			return;

		this.prover.shutdown();
		this.prover = null;	
	}

	
	
	protected void pushTransitionRelation(Prover prover, AbstractTransitionRelation tr) {
		//now assert all proof obligations
		for (Entry<CfgAxiom, ProverExpr> entry : tr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		
		prover.addAssertion(tr.getRequires());
		
        for (Entry<BasicBlock, LinkedList<ProverExpr>> entry : tr.getProofObligations()
            .entrySet()) {
          for (ProverExpr assertion : entry.getValue()) {
            prover.addAssertion(assertion);
          }
        }
	}

	/**
	 * Computes a maximal feasible path cover for the BasicBlocks 
	 * in blocks2cover and returns the set of all covered nodes.
	 * @param prover
	 * @param tr
	 * @param ineffFlags flags for the effectual blocks in blocks2cover
	 * @param blocks2cover set of nodes for which the cover can be computed
	 * @return subset of nodes in block2cover that can be covered.
	 */
	protected Collection<BasicBlock> computePathCover(Prover prover, CfgTransitionRelation tr,
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

		int rounds = 0;
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

			// Query the feasible paths for this setup
			ProverResult res = prover.checkSat(true);

			Log.debug("Round " + (rounds++));
			Log.debug("Prover returns " + res.toString());

			while (res == ProverResult.Sat) {
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
		return coveredBlocks;
	}
	
	
}
