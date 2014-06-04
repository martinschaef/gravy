package org.gravy.verificationcondition;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;

import org.gravy.effectualset.HasseDiagram;
import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.princess.PrincessProver;

import org.joogie.cfgPlugin.CFGPlugin;
import org.joogie.cfgPlugin.Util.Dag;

import util.Log;
import ap.parser.IFormula;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.CfgVariable;

/**
 * @author martin
 * TODO: if we plan to do interprocedural analysis, we have
 * to change the way globals are handled here.
 */
public class CfgTransitionRelation extends AbstractTransitionRelation {
	
	protected Dag<IFormula> proverDAG;	
	protected HasseDiagram hasse;
	protected ProverExpr expetionalReturnFlag = null;
	
	//TODO: this is a hack, like the creation
	//of this variable in the constructor
	public ProverExpr getExpetionalReturnFlag() {
		return expetionalReturnFlag;
	}

	public Dag<IFormula> getProverDAG() {
		return proverDAG;
	}

	public CfgTransitionRelation(CfgProcedure cfg, AbstractControlFlowFactory cff, Prover p) {
		super(cff, p);
		makePrelude();
		
		
		
		this.hasse = new HasseDiagram(cfg);
		
		//encode the forward reachability
		ProverExpr firstok = block2transitionRelation(cfg.getRootNode(),
				this.reachabilityVariables, this.proofObligations);
		
		//the proof obligation for root als must contain that the block variable for root is true		
		this.proofObligations.get(cfg.getRootNode()).add(firstok);
		
		this.proverDAG = procToPrincessDag(cfg, this.reachabilityVariables );
		{
			//TODO: HACK find the exceptional return flag. 
			//This has to be done somewhere else later! In particular
			//identifying the variable by name is horrible as the translation,
			//where the variable is created, and the checking are supposed to be separate modules
			for (Entry<CfgVariable, SortedMap<Integer, ProverExpr>> entry : this.proverVariables.entrySet()) {
				if (!entry.getKey().getVarname().contains("$ex_return")) {
					continue;
				}
				Integer i = null;
				ProverExpr best = null;
				for (Entry<Integer, ProverExpr> incarnation : entry.getValue().entrySet()) {
					if (i==null || incarnation.getKey()>i) {
						i = incarnation.getKey();
						best = incarnation.getValue();
					}
				}
				this.expetionalReturnFlag = best;
				break;
			}
		}
		finalizeAxioms();		
	}

	public Set<BasicBlock> getEffectualSet() {
		return this.hasse.getEffectualSet();
	}
	
	
	private ProverExpr block2transitionRelation(BasicBlock b,
			HashMap<BasicBlock, ProverExpr> blockvars,
			HashMap<BasicBlock, LinkedList<ProverExpr>> proofobligations) {
		if (blockvars.containsKey(b)) {
			return blockvars.get(b);
		}

		ProverExpr post;
		if (b.getSuccessors().size() == 0  ) {
			post = this.prover.mkLiteral(true);
		} else if (b.getSuccessors().size() == 1) {
			post = block2transitionRelation(
					b.getSuccessors().toArray(new BasicBlock[1])[0], blockvars,
					proofobligations);
		} else {
			/*
			 * compute \not (/\ (\not B_succ)) that is\/ ( B_succ)
			 */
			ProverExpr[] succs = new ProverExpr[b.getSuccessors().size()];
			int i = 0;
			for (BasicBlock next : b.getSuccessors()) {
				succs[i++] = block2transitionRelation(next, blockvars,
						proofobligations);
			}
			post = this.prover.mkOr(succs);
		}
		ProverExpr[] conj = new ProverExpr[b.getStatements().size() + 1];
		for (int i = 0; i < b.getStatements().size(); i++) {
			conj[i] = statement2proverExpression(b.getStatements().get(i));
		}
		conj[b.getStatements().size()] = post;

		ProverExpr blockvar = this.prover.mkVariable(b.getLabel() + "_fwd",
				this.prover.getBooleanType());
		blockvars.put(b, blockvar);
		LinkedList<ProverExpr> obligations = new LinkedList<ProverExpr>();
		obligations.add(this.prover.mkOr(this.prover.mkNot(blockvar),
				this.prover.mkAnd(conj)));
		proofobligations.put(b, obligations);
		return blockvar;
	}

	private Dag<IFormula> procToPrincessDag(CfgProcedure proc,
			HashMap<BasicBlock, ProverExpr> reachVars) {
		// First transform the CFG into a list and record
		// the index of each block
		// it is imporatant that the list starts with the
		// exitblock
		
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		LinkedList<BasicBlock> done = new LinkedList<BasicBlock>();
		todo.add(proc.getRootNode());
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pollLast();
			boolean allDone = true;
			for (BasicBlock pre : current.getPredecessors()) {
				if (!done.contains(pre)) {
					allDone = false;
					continue;
				}
			}
			if (!allDone) {
				todo.addFirst(current);
				continue;
			}
			// store the position the block will have in the 'done' list.
			done.addLast(current);
			for (BasicBlock suc : current.getSuccessors()) {
				if (!todo.contains(suc) && !done.contains(suc)) {
					if (suc != current) {
						todo.addLast(suc);
					} else {
						// This has to be checked
						Log.error("The node has a self-loop! This is not supposed to happen.");
					}
				}
			}
		}

		Dag<IFormula> currentNode = CFGPlugin.mkDagEmpty();
		// TODO: assert that the first one in the list is actually the ExitBlock
		for (int j = done.size() - 1; j >= 0; j--) {
			BasicBlock b = done.get(j);
			List<Integer> succIndices = new LinkedList<Integer>();
			for (BasicBlock suc : b.getSuccessors()) {
				// TODO: @Philipp willst du die absolute position oder den
				// offset?
				int idx = done.indexOf(suc) - done.indexOf(b);
				succIndices.add(idx);
				// Log.error("\t " +idx+":"+suc.getName() );
			}
			// TODO: review. can be done better
			if (reachVars.get(b)==null) throw new RuntimeException("Cannot find var for "+b.getLabel());
			IFormula d = ((PrincessProver) this.prover)
					.proverExpToIFormula(reachVars.get(b));
			int[] succidx = new int[succIndices.size()];
			for (int i = 0; i < succIndices.size(); i++) {
				succidx[i] = succIndices.get(i);
			}
			currentNode = CFGPlugin.mkDagNode(d, succidx, currentNode);
		}
		// currentNode.prettyPrint();
		return currentNode;
	}
	
	
}
