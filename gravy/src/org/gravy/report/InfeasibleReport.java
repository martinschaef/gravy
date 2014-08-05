/**
 * 
 */
package org.gravy.report;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

import org.gravy.GlobalsCache;
import org.gravy.Options;
import org.gravy.verificationcondition.AbstractTransitionRelation;

import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.ast.NamedAttribute;
import boogie.ast.expression.literal.IntegerLiteral;
import boogie.ast.expression.literal.StringLiteral;
import boogie.ast.location.ILocation;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 * 
 */
public class InfeasibleReport extends Report {

	private StringBuilder sb = new StringBuilder();
	
	/**
	 * @param tr
	 */
	public InfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		
		LinkedList<HashSet<BasicBlock>> infeasibleSubProgs = findInfeasibleSubprogs(infeasibleBlocks);
		
		if (Options.v().useLocationAttribute()) {
			buildJavaErrorString(feasibleBlocks, infeasibleSubProgs);
		} else {			
			buildBoogieErrorString(tr.getProcedureName(), infeasibleSubProgs);
		}
	}
	
	private void buildBoogieErrorString(String procName, LinkedList<HashSet<BasicBlock>> infeasibleSubProgs) {
		boolean firstReport = true;
//		int i=0;
		for (HashSet<BasicBlock> subprog : infeasibleSubProgs) {
			
			StringBuilder sb_ = new StringBuilder();
			
			for (BasicBlock b : subprog) {				
							
				if (this.containsNoVerifyAttribute(b)) {
					continue;
				}
				
				ILocation loc = b.getLocationTag();
				if (loc!=null) {
					sb_.append("\tLines ");
					sb_.append(loc.getStartLine());
					sb_.append(" to ");
					sb_.append(loc.getEndLine());
					sb_.append(": ");
					sb_.append(b.getLabel());
					sb_.append("\n");
				}
			}
			
			if (firstReport) {
				firstReport = false;
				sb.append("\nInfeasible Code in:"+procName+"\n");
			}
			sb.append(sb_.toString());
//			System.err.println("is infeasible");
		}
		if (!firstReport) sb.append("\n");		
	}

	
	
	private void buildJavaErrorString(Set<BasicBlock> feasibleBlocks, LinkedList<HashSet<BasicBlock>> infeasibleSubProgs) {
		
//		Set<JavaSourceLocation> goodLocations = readJavaLocationTags(feasibleBlocks);
		
		boolean firstReport = true;
//		int i=0;
		for (HashSet<BasicBlock> subprog : infeasibleSubProgs) {
			
//			System.err.println("Subprog "+(i++));
//			for (BasicBlock b : subprog) System.err.println("\t"+b.getLabel());
			//find the first and last line of the infeasible
			//sub program for reporting
			int startLine = -1;
			int endLine = -1;
			String filename="";
			//boolean ignoreSubProg = false;
			
			for (BasicBlock b : subprog) {
				
				if (this.containsNoVerifyAttribute(b)) {
					//Ignore this report
					startLine = -1;
					endLine = -1;
					filename="";					
					break;					
				} else if (this.containsNamedAttribute(b, GlobalsCache.cloneAttribute)) {
					continue;
				}
				
				for (CfgStatement s : b.getStatements()) {
					if (s.getAttributes()!=null) {
						for (Attribute attr : s.getAttributes()) {
							if (attr instanceof NamedAttribute) {
								
								JavaSourceLocation jcl = readSourceLocationFromAttrib(attr);
								if (jcl!=null) {
//									if (goodLocations.contains(jcl)) {
//										System.err.println("Halloooooo!");
//										continue;
//									}
									filename = jcl.FileName;
									if (startLine==-1 || jcl.StartLine<startLine) {
									startLine = jcl.StartLine;
									}
									if (endLine==-1 || jcl.EndLine>endLine) {
										endLine = jcl.EndLine;
									}	
								}
							}
						}		
					}
					
				}
				
			}
			
			//if (ignoreSubProg) continue;
			
			if (filename=="" || startLine==-1 || endLine==-1) {
				//if there is no code location, then we have nothing to report.
				continue;
			}
			if (firstReport) {
				firstReport = false;
				sb.append("\nInfeasible Code:\n");
			}
			sb.append("in file: "+filename);
			sb.append("\tfrom "+startLine + " to " + endLine+ "\n");
		}
		if (!firstReport) sb.append("\n");		
	}
	
	protected class JavaSourceLocation {
		public String FileName = "";
		public int StartLine = -1;
		public int EndLine = -1;
		public int StartCol = -1;
		public int EndCol = -1;
		
		@Override
		public boolean equals(Object other) {
			if (other instanceof JavaSourceLocation) {
				JavaSourceLocation o = (JavaSourceLocation)other;
				return o.FileName.equals(FileName) && o.StartLine==this.StartLine
						&& o.EndLine==this.EndLine && o.StartCol==this.StartCol
						&& o.EndCol==this.EndCol;
			}
			return false;
		}
	}
	
	protected JavaSourceLocation readSourceLocationFromAttrib(Attribute attr) {
		if (attr instanceof NamedAttribute) {
			NamedAttribute na = (NamedAttribute)attr;							
			if (na.getName().equals(ProgramFactory.LocationTag)
					&& na.getValues().length>=3) {
				JavaSourceLocation jcl = null;
				try {
					jcl = new JavaSourceLocation();
					jcl.FileName = ((StringLiteral)na.getValues()[0]).getValue();
					jcl.StartLine = Integer.parseInt(((IntegerLiteral)na.getValues()[1]).getValue());
					jcl.StartCol = Integer.parseInt(((IntegerLiteral)na.getValues()[2]).getValue());
					if (na.getValues().length>=5) {						
						jcl.EndLine = Integer.parseInt(((IntegerLiteral)na.getValues()[3]).getValue());
						jcl.EndCol = Integer.parseInt(((IntegerLiteral)na.getValues()[4]).getValue());										
					}
					return jcl;
				} catch (NullPointerException e) {
					e.printStackTrace();
				}
				
			}
		}
		return null;
	}
	
	protected Set<JavaSourceLocation> readJavaLocationTags(Set<BasicBlock> blocks) {		
		HashSet<JavaSourceLocation> sourceLocations = new HashSet<JavaSourceLocation>();
		for (BasicBlock b : blocks) {				
			
			for (CfgStatement s : b.getStatements()) {
				if (s.getAttributes()!=null) {
					for (Attribute attr : s.getAttributes()) {
						JavaSourceLocation jcl = readSourceLocationFromAttrib(attr);
						if (jcl!=null) sourceLocations.add(jcl);
					}		
				}
			}			
		}		
		return sourceLocations;
	}
	
	private LinkedList<HashSet<BasicBlock>> findInfeasibleSubprogs(Set<BasicBlock> infeasibleBlocks) {
		LinkedList<HashSet<BasicBlock>> res = new LinkedList<HashSet<BasicBlock>>();
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
			if (subprog.size()>0) {
				res.add(subprog);
			}
		}
		return res;
	}
	

	@Override 
	public String toString() {
		return sb.toString();
	}
	
}
