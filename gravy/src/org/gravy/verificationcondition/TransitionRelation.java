package org.gravy.verificationcondition;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.SortedMap;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.CfgVariable;


/**
 * @author martin
 * TODO: if we plan to do interprocedural analysis, we have
 * to change the way globals are handled here.
 */
public class TransitionRelation extends AbstractTransitionRelation {

	protected ProverExpr expetionalReturnFlag = null;
	
	//TODO: this is a hack, like the creation
	//of this variable in the constructor
	public ProverExpr getExpetionalReturnFlag() {
		return expetionalReturnFlag;
	}

	
	public TransitionRelation(CfgProcedure cfg, AbstractControlFlowFactory cff, Prover p) {
		super(cff, p);
		makePrelude();
		
		//encode the forward reachability
		ProverExpr firstok = block2transitionRelation(cfg.getRootNode(),
				this.reachabilityVariables, this.proofObligations);
		
		//the proof obligation for root als must contain that the block variable for root is true		
		this.proofObligations.get(cfg.getRootNode()).add(firstok);
		//encode the backward reachability as described in the ICFEM'13 paper
		for (Entry<BasicBlock, ProverExpr> entry : this.reachabilityVariables.entrySet()) {
            BasicBlock b = entry.getKey();
            ProverExpr v = entry.getValue();

            if (b.getPredecessors().isEmpty())
                // nothing to do for the root
                continue;
	
            //now add an implication of the form
            // b_i => \/_{j in pre}b_j
            //to make sure that b_i is also forward reachable.
            LinkedList<ProverExpr> targets = new LinkedList<ProverExpr>();						
            //and this is the right part
            for (BasicBlock pred : b.getPredecessors()) {
            	if (this.reachabilityVariables.containsKey(pred) && !pred.returns) {
            		//we have to check this, because with the alternative
            		//return encoding, not all predecessors might be
            		//reachable
            		targets.add(this.reachabilityVariables.get(pred));
            	}
            }

            ProverExpr bwdreach = this.prover.mkOr((ProverExpr[]) targets
                                                     .toArray(new ProverExpr[targets.size()]));
            
            ProverExpr bwdobligation = this.prover.mkOr(this.prover.mkNot(v), bwdreach);
          //now add the backward obligation to the proof obligation
            this.proofObligations.get(b).add(bwdobligation);
        }

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

	
	
	private ProverExpr block2transitionRelation(BasicBlock b,
			HashMap<BasicBlock, ProverExpr> blockvars,
			HashMap<BasicBlock, LinkedList<ProverExpr>> proofobligations) {
		if (blockvars.containsKey(b)) {
			return blockvars.get(b);
		}

		ProverExpr post;
		if (b.getSuccessors().size() == 0 
				//|| (org.joogie.Options.v().isOldStyleEncoding() && b.returns) 
				) {
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

}
