/**
 * 
 */
package org.gravy.checker;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.Options;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.prover.princess.PrincessProver;
import org.gravy.report.Report;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.CfgTransitionRelation;
import org.gravy.verificationcondition.JodTransitionRelation;
import org.gravy.verificationcondition.TransitionRelation;
import org.joogie.cfgPlugin.Util.Dag;

import util.Log;
import ap.parser.IFormula;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 *
 */
public abstract class AbstractChecker implements Runnable {

	protected AbstractControlFlowFactory cff;
	protected CfgProcedure procedure;
	
	private Report report = null;
		
	protected HashSet<BasicBlock> feasibleBlocks = new HashSet<BasicBlock>();
	protected HashSet<BasicBlock> infeasibleBlocks = new HashSet<BasicBlock>();
	protected HashSet<BasicBlock> infeasibleBlocksUnderPost = new HashSet<BasicBlock>();	
	
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
		try {
			this.prover = pf.spawn();
//			this.prover = pf.spawnWithLog("fuckadoodoo");
			Log.debug("Compute Transition Relation "+this.procedure.getProcedureName());
			//AbstractTransitionRelation tr = new TransitionRelation(this.procedure, this.cff, prover);
			AbstractTransitionRelation tr;
			
			switch (Options.v().getChecker()) {
			case 0: {
				tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
				break;
			}
			case 1: {
				tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
				break;
			}		
			case 2: {
				tr = new JodTransitionRelation(this.procedure, this.cff, prover);
				break;
			}					
			case 3: {
				tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
				break;
			}					
			case 4: {
				tr = new JodTransitionRelation(this.procedure, this.cff, prover);
				break;
			}								
			default: {
				Log.error("WARNING: -checker "+ Options.v().getChecker() + " using default 0 instead!");
				tr = new CfgTransitionRelation(this.procedure, this.cff, prover);
				break;
			}
			}			
			
			this.report = checkSat(prover, tr); 
		} catch (Throwable e) {			
			throw e;
//			e.printStackTrace();
//			this.procedure.toDot("Debug"+this.procedure.getProcedureName()+".dot");
//			this.procedure.toFile("Debug"+this.procedure.getProcedureName()+".bpl");
		} finally {
			shutDownProver();
		}
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

			//Log.info("Round " + (rounds++) + " "+this.procedure.getProcedureName());
			//Log.debug("Prover returns " + res.toString());

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

				res = prover.checkSat(true);

//				Log.debug("Round " + (rounds++));
//				Log.debug("Prover returns " + res.toString());
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

	protected void toDot(String filename, Collection<BasicBlock> allBlocks, Collection<BasicBlock> blueBlocks, Collection<BasicBlock> redBlocks) {
		File out = new File(filename);
		try {
			PrintWriter pw = new PrintWriter(out);
			
			pw.println("digraph dot {");
	
			for (BasicBlock block : blueBlocks) {
				// Special blocks
				if (redBlocks.contains(block)) {
					System.err.println("FUFUFUFUFUFUFUFCK");
					pw.println("\"" + block.getLabel() + "\" [style=filled, color=red, fillcolor=blue, label=\"" + block.getLabel() + "\"]");
				} else {
					pw.println("\"" + block.getLabel() + "\" [style=filled, fillcolor=blue, label=\"" + block.getLabel() + "\"]");					
				}
			}
	
			for (BasicBlock block : redBlocks) {
				// Special blocks
				if (!blueBlocks.contains(block)) {
					pw.println("\"" + block.getLabel() + "\" [color=red, label=\"" + block.getLabel() + "\"]");
				}
			}
	
			for (BasicBlock block : allBlocks) {
				// Regular blocks 
				if (!blueBlocks.contains(block) && !redBlocks.contains(block)) {
					pw.println("\"" + block.getLabel() + "\" [label=\"" + block.getLabel() + "\"]");					
				}
			}
			
			for (BasicBlock block : allBlocks) {
				for (BasicBlock succ : block.getSuccessors()) {
					if (allBlocks.contains(succ)) {
						pw.println("\"" + block.getLabel() + "\"" + " -> " + "\"" + succ.getLabel() + "\"");
					}
				}
			}
			
			pw.println("}");
			
			pw.close();
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
	
}
