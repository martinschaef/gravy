package org.gravy.verificationcondition;

import java.util.HashMap;
import java.util.HashSet;
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
public class JodTransitionRelation extends AbstractTransitionRelation {
	
	public HashMap<BasicBlock, ProverExpr> blockTransitionReleations = new HashMap<BasicBlock, ProverExpr>();
	

	public JodTransitionRelation(CfgProcedure cfg, AbstractControlFlowFactory cff, Prover p) {
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

		//bfs through all blocks
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		todo.add(cfg.getRootNode()); 
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			done.add(current);
			for (BasicBlock b : current.getSuccessors()) {
				if (!done.contains(b) && !todo.contains(b)) {
					todo.push(b);
				}
			}
			
			List<ProverExpr> stmts = statements2proverExpression(current.getStatements());
			this.blockTransitionReleations.put(current, prover.mkAnd(stmts.toArray(new ProverExpr[stmts.size()])));
			this.reachabilityVariables.put(current, this.prover.mkVariable(current.getLabel() + "_fwd",
					this.prover.getBooleanType()));			
		}
		finalizeAxioms();
	}	
	
	
	
	
}
