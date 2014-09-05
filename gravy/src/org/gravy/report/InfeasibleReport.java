/**
 * 
 */
package org.gravy.report;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.ProgramFactory;
import boogie.ast.statement.Statement;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 * 
 */
public class InfeasibleReport extends Report {

	private StringBuilder sb = new StringBuilder();
	
	private LinkedList<HashSet<Statement>> infeasibleSubProgs;
	private String procedureName;
	
	/**
	 * @param tr
	 */
	public InfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		this.procedureName = tr.getProcedureName();
		infeasibleSubProgs = findInfeasibleSubprogs(cff, infeasibleBlocks);
//		infeasibleSubProgs = findInfeasibleSubGraphs(cff, infeasibleBlocks);
		
	}
	
	
	public String getProcedureName() {
		return this.procedureName;
	}
	
	public LinkedList<HashSet<Statement>> getInfeasibleSubPrograms() {
		return this.infeasibleSubProgs;
	}
	
	
	private LinkedList<HashSet<Statement>> findInfeasibleSubprogs(AbstractControlFlowFactory cff, Set<BasicBlock> infeasibleBlocks) {
		LinkedList<HashSet<Statement>> res = new LinkedList<HashSet<Statement>>();
		LinkedList<BasicBlock> allblocks = new LinkedList<BasicBlock>();
		allblocks.addAll(infeasibleBlocks);
		while (!allblocks.isEmpty()) {
			HashSet<Statement> subprog = new HashSet<Statement>();
			LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
			todo.add(allblocks.pop());
//			System.err.println("blocks ");
			while (!todo.isEmpty()) {
				BasicBlock current = todo.pop();
				allblocks.remove(current);
				boolean skipBlock = false;
				if (this.containsNamedAttribute(current, ProgramFactory.Cloned)) {
					skipBlock = true;
				}
				if (!skipBlock) {			
//					System.err.println("\t"+current.getLabel());
					for (CfgStatement stmt : current.getStatements()) {
						Statement s = cff.findAstStatement(stmt);
						if (s!=null) subprog.add(s);
					}
				}
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
				res.add(subprog);
			}
		}
		return res;
	}
	
	

	private LinkedList<HashSet<Statement>> findInfeasibleSubGraphs(AbstractControlFlowFactory cff, Set<BasicBlock> infeasibleBlocks) {
		LinkedList<HashSet<Statement>> res = new LinkedList<HashSet<Statement>>();
		LinkedList<BasicBlock> allblocks = new LinkedList<BasicBlock>();
		allblocks.addAll(infeasibleBlocks);
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
			
			//now compute the source and the sinks of the subgraph.
			//note, that there can only be one source
			//but several sinks.
			
			HashSet<BasicBlock> sources=new HashSet<BasicBlock>();
			HashSet<BasicBlock> sinks=new HashSet<BasicBlock>();
			System.err.println("subprog: ");
			for (BasicBlock b : subprog) {
//				System.err.println("\t"+b.getLabel());	
				boolean connected = false;
				for (BasicBlock x : b.getPredecessors()) {
					if (subprog.contains(x)) {
						connected = true; break;
					}
				}
				if (!connected) {					
					System.err.println("Source "+b.getLabel());
					sources.add(b);
				}
				connected = false;
				for (BasicBlock x : b.getSuccessors()) {
					if (subprog.contains(x)) {
						connected = true; break;
					}
				}
				if (!connected) {
					System.err.println("Sinks "+b.getLabel());
					sinks.add(b);
				}				
			}
			
			
			HashSet<Statement> stmts = computeCleanedStmtList(cff, subprog, sources, sinks);
			if (stmts.size()>0) {				
				res.add(stmts);
			}
			System.err.println("---------------------");
		}
		return res;
	}
	
	private HashSet<Statement> computeCleanedStmtList(AbstractControlFlowFactory cff, HashSet<BasicBlock> subgraph, HashSet<BasicBlock> sources, HashSet<BasicBlock> sinks) {
		if (subgraph.size()==0 || sources.size()==0 || sinks.size()==0) {
			return new HashSet<Statement>(); 
		}
		//the following code finds all blocks that must
		//be reached on every paths from source to sink.
		//I.e., it works it BFSs from the sink and keeps the set
		//of visited Blocks and intersects them at joins.
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		HashMap<BasicBlock, HashSet<BasicBlock>> mustReach = new HashMap<BasicBlock, HashSet<BasicBlock>>();
		todo.addAll(sinks);
		while (!todo.isEmpty()) {
			BasicBlock current = todo.removeLast();
			//check if all predecessors have been processed already.
			//if not, add the block to the end of the cue and start over
			boolean allGood = true;
			for (BasicBlock prev : current.getSuccessors()) {
				if (!subgraph.contains(prev)) continue;
				if (!done.contains(prev)) {
					allGood=false;
					break;
				}
			}		
			if (!allGood){
				todo.addFirst(current);
				continue;
			}
			//if all predecessors have been processed,
			//we can compute the dominators list by
			//intersecting the list of all predecessors
			HashSet<BasicBlock> currentDom = null;
			if (!sinks.contains(current)) {
				for (BasicBlock prev : current.getSuccessors()) {
					if (!subgraph.contains(prev)) continue;
					if (currentDom == null) {
						currentDom = new HashSet<BasicBlock>(mustReach.get(prev));
					} else {
						//retainAll computes the intersection of the two sets.
						currentDom.retainAll(mustReach.get(prev));
					}				
				}		
			}
			//special case, only occurs for the root/sink
			if (currentDom == null) {
				currentDom = new HashSet<BasicBlock>();
			}
			currentDom.add(current); //of course, a block dominates itself
			mustReach.put(current, currentDom);
			done.add(current);	
			for (BasicBlock next : current.getPredecessors()) {
				if (!todo.contains(next) && !done.contains(next)) {
					if (!subgraph.contains(next)) continue;
					todo.addLast(next);
				}
			}			
		}	
		
		HashSet<Statement> ret = new HashSet<Statement>();
		for (BasicBlock b : subgraph) {			
			if (this.containsNamedAttribute(b, ProgramFactory.Cloned)) {
				//ignore every block that is labeled as clone				
			} else {
				//only add statements of blocks that must
				//be reached on any iteration through the
				//loop. All other statements might be only infeasible
				//in the last iteration.
				boolean mustreach = true;
				for (BasicBlock s : sources) {
					if (!mustReach.get(s).contains(b)) {
						mustreach = false; break;
					}
				}
				System.err.println("must reach " + b.getLabel() + ": "+mustreach);
				if (mustreach) {
					for (CfgStatement stmt : b.getStatements()) {
						Statement s = cff.findAstStatement(stmt);
						if (s!=null) ret.add(s);
					}
				}
			}
		}
		return ret;
	}
	
	
	@Override 
	public String toString() {

		return sb.toString();
	}
	
}
