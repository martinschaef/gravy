/**
 * 
 */
package org.gravy.faultlocalization;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.FaultLocalizationTransitionRelation;

import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 *
 */
public class InfeasibleCodeFaultLocalization {

	/**
	 * Applies fault localization to a set of (not necessarily connected) infeasible blocks.
	 * @param tr
	 * @param infeasibleBlocks
	 */
	public static void localizeFaults(AbstractTransitionRelation tr, Set<BasicBlock> infeasibleBlocks) {
		LinkedList<HashSet<BasicBlock>> components = findConnectedComponents(infeasibleBlocks);
		for (HashSet<BasicBlock> cmp : components) {
			localizeFault(tr, cmp);
		}
	}

	
	/**
	 * Applies fault localization to a set of connected infeasible blocks
	 * @param tr
	 * @param component
	 */
	public static void localizeFault(AbstractTransitionRelation tr, Set<BasicBlock> component) {		
		CfgProcedure slice = tr.getProcedure().computeSlice(getSubprog(component), tr.getProcedure().getRootNode());
		
		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		Prover prover = pf.spawn();
		prover.setConstructProofs(true);
		FaultLocalizationTransitionRelation sliceTr = new FaultLocalizationTransitionRelation(slice, tr.getControlFlowFactory(), prover);
		
		int partition = 0;
		
//		prover.addAssertion(sliceTr.getEnsures());
//	
		for (Entry<CfgAxiom, ProverExpr> entry : sliceTr.getPreludeAxioms().entrySet()) {
			prover.addAssertion(entry.getValue());
		}
		
		
		prover.addAssertion(sliceTr.getRequires());
		
		prover.setPartitionNumber(partition++);
        
        for (ProverExpr assertion : sliceTr.obligations) {
            prover.addAssertion(assertion);
            prover.setPartitionNumber(partition++);        	
        }
		
		ProverResult res = prover.checkSat(true);
		if (res!=ProverResult.Unsat) {
			throw new RuntimeException("Fault Localization failed!");
		}
		

        int[][] ordering = new int[partition][1];
        for (int i=0; i<partition; i++) {
                ordering[i][0] = i;
        }               
        

        ProverExpr[] interpolants = prover.interpolate(ordering);

        //debug code
        {
                System.err.println("#interpolants: "+ interpolants.length + " / #assertions:");
                for (int i=0; i<partition-1; i++) {                        
                		System.err.println("Assertion "+i+":"+sliceTr.pe2StmtMap.get(sliceTr.obligations.get(i)));
                        System.err.println("\tInterpolant "+i+":"+interpolants[i]);
                }
        }
        		
		System.err.println("Check subprog " + res); 
	}
	
	/**
	 * Collect all blocks that must can reach or can be reached by
	 * the elements in component 
	 * @param component
	 * @return
	 */
	private static Set<BasicBlock> getSubprog(Set<BasicBlock> component) {
		HashSet<BasicBlock> result = new HashSet<BasicBlock>();
		result.addAll(getNeighbors(component, true));
		result.addAll(getNeighbors(component, false));
		return result;
	}
	
	private static Set<BasicBlock> getNeighbors(Set<BasicBlock> blocks, boolean forward) {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		todo.addAll(blocks);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			done.add(current);
			for (BasicBlock b : getNeighbors(current, forward)) {
				if (!todo.contains(b) && !done.contains(b)) {
					todo.add(b);
				}
			}
		}
		return done;
	}
	
	private static Set<BasicBlock> getNeighbors(BasicBlock b, boolean forward) {
		if (forward) return b.getSuccessors();
		return b.getPredecessors();
	}
	
	
	private static LinkedList<HashSet<BasicBlock>> findConnectedComponents(Set<BasicBlock> blocks) {
		LinkedList<HashSet<BasicBlock>> components = new LinkedList<HashSet<BasicBlock>>();
		LinkedList<BasicBlock> allblocks = new LinkedList<BasicBlock>();
		allblocks.addAll(blocks);
		while (!allblocks.isEmpty()) {
			HashSet<BasicBlock> subprog = new HashSet<BasicBlock>();
			LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
			todo.add(allblocks.pop());			

			while (!todo.isEmpty()) {
				BasicBlock current = todo.pop();
				allblocks.remove(current);
				subprog.add(current);
				for (BasicBlock b : current.getPredecessors()) {
					if (!subprog.contains(b) && !todo.contains(b) && allblocks.contains(b)) {
						todo.add(b);
					}
				}
				for (BasicBlock b : current.getSuccessors()) {
					if (!subprog.contains(b) && !todo.contains(b) && allblocks.contains(b)) {
						todo.add(b);
					}
				}				
			}		
			if (subprog.size()>0) {
				components.add(subprog);
			}
		}
		return components;
	}
	

}
