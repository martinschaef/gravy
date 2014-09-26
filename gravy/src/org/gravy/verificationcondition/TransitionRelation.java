package org.gravy.verificationcondition;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.expression.CfgExpression;


/**
 * @author schaef
 * TODO: if we plan to do interprocedural analysis, we have
 * to change the way globals are handled here.
 */
public class TransitionRelation extends AbstractTransitionRelation {

	public TransitionRelation(CfgProcedure cfg, AbstractControlFlowFactory cff, Prover p) {
		super(cfg, cff, p);
		makePrelude();
		
		//create the ProverExpr for the precondition 
		ProverExpr[] prec = new ProverExpr[cfg.getRequires().size()];
		int i=0;
		for (CfgExpression expr : cfg.getRequires()) {
			prec[i]=this.expression2proverExpression(expr);
			i++;
		}
		this.requires = this.prover.mkAnd(prec);

		//create the ProverExpr for the precondition 
		ProverExpr[] post = new ProverExpr[cfg.getEnsures().size()];
		i=0;
		for (CfgExpression expr : cfg.getEnsures()) {
			post[i]=this.expression2proverExpression(expr);
			i++;
		}
		this.ensures = this.prover.mkAnd(post);
				
		//encode the forward reachability
		ProverExpr firstok = block2transitionRelation(cfg.getRootNode(),
				this.reachabilityVariables, this.proofObligations);
		
		//the proof obligation for root als must contain that the block variable for root is true		
		this.proofObligations.get(cfg.getRootNode()).add(firstok);

		finalizeAxioms();		
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
		List<ProverExpr> stmts = statements2proverExpression(b.getStatements());
		stmts.add(post);
		ProverExpr[] conj = stmts.toArray(new ProverExpr[stmts.size()]);		

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
