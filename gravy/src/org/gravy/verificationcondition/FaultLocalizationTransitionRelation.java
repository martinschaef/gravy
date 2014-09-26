package org.gravy.verificationcondition;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;

import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.expression.CfgExpression;
import boogie.controlflow.util.HasseDiagram;
import boogie.controlflow.util.PartialBlockOrderNode;

/**
 * @author schaef TODO: if we plan to do interprocedural analysis, we have to
 *         change the way globals are handled here.
 */
public class FaultLocalizationTransitionRelation extends
		AbstractTransitionRelation {

	public LinkedList<ProverExpr> obligations = new LinkedList<ProverExpr>();
	
	
	public FaultLocalizationTransitionRelation(CfgProcedure cfg,
			AbstractControlFlowFactory cff, Prover p) {
		super(cfg, cff, p);
		makePrelude();

		// create the ProverExpr for the precondition
		ProverExpr[] prec = new ProverExpr[cfg.getRequires().size()];
		int i = 0;
		for (CfgExpression expr : cfg.getRequires()) {
			prec[i] = this.expression2proverExpression(expr);
			i++;
		}
		this.requires = this.prover.mkAnd(prec);

		// create the ProverExpr for the precondition
		ProverExpr[] post = new ProverExpr[cfg.getEnsures().size()];
		i = 0;
		for (CfgExpression expr : cfg.getEnsures()) {
			post[i] = this.expression2proverExpression(expr);
			i++;
		}
		this.ensures = this.prover.mkAnd(post);


		lala(cfg);

		finalizeAxioms();
	}

	private void lala(CfgProcedure cfg) {
		HasseDiagram hd = new HasseDiagram(cfg);
		PartialBlockOrderNode pon = hd.findNode(cfg.getRootNode());

		
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		todo.add(cfg.getRootNode());
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			obligations.addAll(statements2proverExpression(current.getStatements()));
			BasicBlock next = bar(current, pon.getElements());
			if (next!=null) {
				todo.add(next);
			}
		}
		
	}

	private BasicBlock bar(BasicBlock b, HashSet<BasicBlock> mustpass ) {
		this.lastMustPass = null;
		if (b.getSuccessors().size()==1 ) {
			BasicBlock next = b.getSuccessors().iterator().next();
			if (mustpass.contains(next)) {
				return next;
			} else {
				throw new RuntimeException("SNAP");
			}
		} else if (b.getSuccessors().size()>1 ) {
			LinkedList<ProverExpr> succs = new LinkedList<ProverExpr>();			
			for (BasicBlock next : b.getSuccessors()) {
				succs.add(block2tr(next, mustpass));
			}
			obligations.add(this.prover.mkOr(succs.toArray(new ProverExpr[succs.size()])));			
		}
		return this.lastMustPass;
	}

	private BasicBlock lastMustPass = null;
	
	private ProverExpr block2tr(BasicBlock b, HashSet<BasicBlock> mustpass) {
		
		ProverExpr post;
		
		HashSet<BasicBlock> targets = new HashSet<BasicBlock>();
		for (BasicBlock succ : b.getSuccessors()) {
			if (!mustpass.contains(succ)) {
				targets.add(succ);
			} else {
				if (this.lastMustPass==null) {
					this.lastMustPass = succ;
				} else {
					if (succ!=lastMustPass) {
						throw new RuntimeException("Damn");
					}
				}
			}
		}
		
		if (targets.size() == 0) {
			post = this.prover.mkLiteral(true);
		} else if (targets.size() == 1) {
			post = block2tr(targets.iterator().next(), mustpass);
		} else {
			ProverExpr[] succs = new ProverExpr[targets.size()];
			int i = 0;
			for (BasicBlock next : targets) {
				succs[i++] = block2tr(next, mustpass);
			}
			post = this.prover.mkOr(succs);
		}
		
		List<ProverExpr> stmts = statements2proverExpression(b.getStatements());
		stmts.add(post);
		ProverExpr[] conj = stmts.toArray(new ProverExpr[stmts.size()]);

		return this.prover.mkAnd(conj);
	}
	
	

}
