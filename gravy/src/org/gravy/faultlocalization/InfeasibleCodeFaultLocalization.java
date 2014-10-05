/**
 * 
 */
package org.gravy.faultlocalization;

import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Set;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverExpr;
import org.gravy.prover.ProverFactory;
import org.gravy.prover.ProverResult;
import org.gravy.ssa.SingleStaticAssignment;
import org.gravy.util.JavaSourceLocation;
import org.gravy.verificationcondition.AbstractTransitionRelation;
import org.gravy.verificationcondition.FaultLocalizationTransitionRelation;

import util.Log;
import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.ast.NamedAttribute;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgAxiom;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 * 
 */
public class InfeasibleCodeFaultLocalization {

	public static Integer DEBUG_ProofObligations = 0;
	public static Integer DEBUG_AbstractTrace = 0;
	/**
	 * Applies fault localization to a set of (not necessarily connected)
	 * infeasible blocks.
	 * 
	 * @param tr
	 * @param infeasibleBlocks
	 */
	public static LinkedList<HashMap<CfgStatement, JavaSourceLocation>> localizeFaults(
			AbstractTransitionRelation tr, Set<BasicBlock> infeasibleBlocks) {

		// for (BasicBlock b: infeasibleBlocks)
		// System.err.println(">>"+b.getLabel());

		LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports = new LinkedList<HashMap<CfgStatement, JavaSourceLocation>>();

		LinkedList<HashSet<BasicBlock>> components = findConnectedComponents(infeasibleBlocks);
		for (HashSet<BasicBlock> cmp : components) {
			try {
//				System.err.println("Start fault localization ...");
				HashMap<CfgStatement, JavaSourceLocation> res = localizeFault(
						tr, cmp);
//				System.err.println("\t\t...done");
				if (res != null && !res.isEmpty()) {					
					reports.add(res);
				}
			} catch (Throwable e) {
				e.printStackTrace();
			}
		}
		return reports;
	}

	/**
	 * Applies fault localization to a set of connected infeasible blocks
	 * 
	 * @param tr
	 * @param component
	 */
	public static HashMap<CfgStatement, JavaSourceLocation> localizeFault(
			AbstractTransitionRelation tr, Set<BasicBlock> component) {
		DEBUG_AbstractTrace = 0;
		DEBUG_ProofObligations = 0;
		// TODO: check if this contains a noverify tag and ignore it.
		for (BasicBlock b : component) {			
			if (containsNamedAttribute(b, ProgramFactory.NoVerifyTag)) {
				return new HashMap<CfgStatement, JavaSourceLocation>();
			}
		}

		CfgProcedure slice = tr.getProcedure().computeSlice(
				getSubprog(component), tr.getProcedure().getRootNode());

		// TODO do I have to recompute SSA?
		SingleStaticAssignment ssa = new SingleStaticAssignment();
		ssa.updateBlockSSA(slice);

		// slice.pruneUnreachableBlocks();

		// tr.getProcedure().toDot("./orig_"+slice.getProcedureName()+component.hashCode()+".dot");
		// slice.toDot("./slice_"+slice.getProcedureName()+component.hashCode()+".dot");

		ProverFactory pf = new org.gravy.prover.princess.PrincessProverFactory();
		Prover prover = pf.spawn();
		prover.setConstructProofs(true);
		FaultLocalizationTransitionRelation sliceTr = new FaultLocalizationTransitionRelation(
				slice, tr.getControlFlowFactory(), prover);

		// prover.addAssertion(sliceTr.getEnsures());
		//
		for (Entry<CfgAxiom, ProverExpr> entry : sliceTr.getPreludeAxioms()
				.entrySet()) {
			prover.addAssertion(entry.getValue());
		}

		if (sliceTr.getRequires() != null)
			prover.addAssertion(sliceTr.getRequires());

		int partition = 0;
		prover.setPartitionNumber(partition);

		for (ProverExpr assertion : sliceTr.obligations) {
			prover.addAssertion(assertion);
			prover.setPartitionNumber(++partition);
		}

		if (sliceTr.getEnsures() != null) {
			prover.addAssertion(sliceTr.getEnsures());

		}
		prover.setPartitionNumber(++partition);

		ProverResult res = prover.checkSat(true);
		if (res != ProverResult.Unsat) {
			prover.shutdown();
			throw new RuntimeException("Fault Localization failed!");
		}
		DEBUG_ProofObligations = partition;
		int[][] ordering = new int[partition][1];
		for (int i = 0; i < partition; i++) {
			ordering[i][0] = i;
		}

		ProverExpr[] interpolants = prover.interpolate(ordering);

		// debug code
		{
//			 System.err.println("#interpolants: "+ interpolants.length +
//			 " / #assertions: ======================");
//			 for (int i=0; i<interpolants.length; i++) {
//			 System.err.println("Assertion "+i+":"+sliceTr.pe2StmtMap.get(sliceTr.obligations.get(i)));
//			 System.err.println("Obligation "+i+":"+sliceTr.obligations.get(i));
//			 System.err.println("\tInterpolant "+i+":"+interpolants[i]+"\n");
//			 }
		}

		boolean allInfeasibleCloned = true;
		boolean anyCloned = false;

		JavaSourceLocation maxLoc = null;
		
//		System.err.println("\t\t **");
		HashMap<CfgStatement, JavaSourceLocation> interestingStatements = new HashMap<CfgStatement, JavaSourceLocation>();
		ProverExpr currentInterpolant = interpolants[0];
		for (int i = 1; i < interpolants.length; i++) {
			if (!interpolants[i].equals(currentInterpolant)) {
				currentInterpolant = interpolants[i];
				CfgStatement statement = sliceTr.pe2StmtMap
						.get(sliceTr.obligations.get(i));
				
				if (statement == null) {
					// TODO:
					statement = sliceTr.pe2StmtMap.get(sliceTr.obligations
							.get(i - 1));
				}

				BasicBlock origin = sliceTr.stmtOriginMap.get(statement);
				if (origin == null) {
					Log.debug("could not find statement " + statement + " in "
							+ sliceTr.getProcedureName() + "\n");
					continue;
				}
				// if (origin==null || containsNamedAttribute(origin,
				// ProgramFactory.Cloned)) {
				// continue;
				// }

				JavaSourceLocation loc = null;

				if (containsNamedAttribute(statement,
						ProgramFactory.GeneratedThenBlock)
						|| containsNamedAttribute(statement,
								ProgramFactory.GeneratedElseBlock)) {
					int pos = origin.getStatements().indexOf(statement);

					while (pos < origin.getStatements().size()) {
						CfgStatement st = origin.getStatements().get(pos);
//						System.err.println("\t"+st);
						loc = praseLocationTags(st.getAttributes());
						if (loc != null) {
							break;
						}
						pos++;
					}
//					System.err.println("FWD");
				} else {
					// if its a statement without location attributes
					// go backwards until we find the last location attibute.
					int pos = origin.getStatements().indexOf(statement);

					while (pos >= 0) {
						CfgStatement st = origin.getStatements().get(pos);
						loc = praseLocationTags(st.getAttributes());
						if (loc != null) {
							break;
						}
						pos--;
					}
					
					if (loc == null) {
						//then try it in the other direction.
						pos = origin.getStatements().indexOf(statement);

						while (pos < origin.getStatements().size()) {
							CfgStatement st = origin.getStatements().get(pos);
//							System.err.println("\t"+st);
							loc = praseLocationTags(st.getAttributes());
							if (loc != null) {
								break;
							}
							pos++;
						}						
					}
					
//					System.err.println("BWD");
				}
				

				if (loc != null) {
					if (origin != null
							&& containsNamedAttribute(origin,
									ProgramFactory.Cloned)) {
						loc.isCloned = true;
						anyCloned = true;
					}

					if (origin != null
							&& containsNamedAttribute(origin,
									ProgramFactory.NoVerifyTag)) {
						loc.isNoVerify = true;
					}					
					
					
					
					for (BasicBlock b : component) {
						if (b.getLabel().equals(origin.getLabel())) {
							// compare them by name because we cloned them, so
							// they are not
							// the same by reference.
							loc.inInfeasibleBlock = true;
							break;
						} else {
							// do nothing
						}
					}

					if (loc.inInfeasibleBlock && !loc.isCloned) {
						allInfeasibleCloned = false;
					}

					if (maxLoc==null) {
						maxLoc = loc;
					} else {
						if (loc.StartLine>maxLoc.StartLine) {
							maxLoc = loc;
						} else if (loc.StartLine==maxLoc.StartLine) {
							maxLoc.isNoVerify = maxLoc.isNoVerify || loc.isNoVerify; 
						}
					}
					interestingStatements.put(statement, loc);

				} else {
					Log.debug("no location tag " + statement + " in ");
					Log.debug(origin);
					continue;
				}

				// System.err.println("\t" + statement);
				// System.err.println("with interpolant: " + interpolants[i]);
			}
		}
		// System.err.println("============");

		prover.shutdown();

		// TODO:
		if (anyCloned && allInfeasibleCloned)
			interestingStatements.clear();
		
		if (maxLoc!=null && maxLoc.isNoVerify) {
			//TODO: this is sort of a hack that helps to suppress
			//strange try/catch false positives.
			interestingStatements.clear();
		}
		DEBUG_AbstractTrace = interestingStatements.size();
		return interestingStatements;
	}

	private static JavaSourceLocation praseLocationTags(Attribute[] attributes) {
		if (attributes == null)
			return null;
		return JavaSourceLocation.readSourceLocationFromAttributes(attributes);
	}

	private static boolean containsNamedAttribute(BasicBlock b, String name) {
		for (CfgStatement s : b.getStatements()) {
			if (containsNamedAttribute(s, name)) return true; 
		}
		return false;
	}

	private static boolean containsNamedAttribute(CfgStatement s, String name) {
		if (s.getAttributes() != null) {
			for (Attribute attr : s.getAttributes()) {
				if (attr instanceof NamedAttribute) {
					NamedAttribute na = (NamedAttribute) attr;
					if (na.getName().equals(name)) {
						return true;
					}
				}
			}
		}
		return false;
	}	
	
	/**
	 * Collect all blocks that must can reach or can be reached by the elements
	 * in component
	 * 
	 * @param component
	 * @return
	 */
	private static Set<BasicBlock> getSubprog(Set<BasicBlock> component) {
		HashSet<BasicBlock> result = new HashSet<BasicBlock>();
		result.addAll(getNeighbors(component, true));
		result.addAll(getNeighbors(component, false));
		return result;
	}

	private static Set<BasicBlock> getNeighbors(Set<BasicBlock> blocks,
			boolean forward) {
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
		if (forward)
			return b.getSuccessors();
		return b.getPredecessors();
	}

	private static LinkedList<HashSet<BasicBlock>> findConnectedComponents(
			Set<BasicBlock> blocks) {
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
					if (!subprog.contains(b) && !todo.contains(b)
							&& allblocks.contains(b)) {
						todo.add(b);
					}
				}
				for (BasicBlock b : current.getSuccessors()) {
					if (!subprog.contains(b) && !todo.contains(b)
							&& allblocks.contains(b)) {
						todo.add(b);
					}
				}
			}
			if (subprog.size() > 0) {
				components.add(subprog);
			}
		}
		return components;
	}

}
