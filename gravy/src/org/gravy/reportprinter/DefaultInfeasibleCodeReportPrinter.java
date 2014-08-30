/**
 * 
 */
package org.gravy.reportprinter;

import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.LinkedList;

import org.gravy.report.InfeasibleReport;
import org.gravy.report.Report;

import util.Log;
import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.ast.NamedAttribute;
import boogie.ast.location.ILocation;
import boogie.ast.statement.Statement;

/**
 * @author schaef
 *
 */
public class DefaultInfeasibleCodeReportPrinter implements ReportPrinter {

	/**
	 * 
	 */
	public DefaultInfeasibleCodeReportPrinter() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see org.gravy.reportprinter.ReportPrinter#printReport(org.gravy.report.Report)
	 */
	@Override
	public void printReport(Report r) {
		if (r!=null && r instanceof InfeasibleReport) {
			InfeasibleReport ir = (InfeasibleReport)r;
			String s = this.buildBoogieErrorString(ir);
			if (s!=null && s.length()>0) Log.info(s);
		}
	}

	private String buildBoogieErrorString(InfeasibleReport ir) {
		LinkedList<HashSet<Statement>> infeasibleSubProgs = ir.getInfeasibleSubPrograms();
		StringBuffer sb = new StringBuffer();
		boolean firstReport = true;
//		int i=0;
		LinkedHashSet<Integer> numbers = new LinkedHashSet<Integer>(); 
		for (HashSet<Statement> subprog : infeasibleSubProgs) {
			
			for (Statement s : subprog) {				
							
				if (this.containsNoVerifyAttribute(s)) {
					continue;
				}
				
				ILocation loc = s.getLocation();
				if (loc!=null) {
					numbers.add(loc.getStartLine());
//					sb_.append(":\n");
//					BoogiePrinter bp = new BoogiePrinter(null);
//					bp.printStatement(sb_, s, "\t");
				}
			}
			
			if (firstReport && numbers.size()>0) {
				firstReport = false;
				sb.append("\nInfeasible Code in:"+ir.getProcedureName()+"\n");
				LinkedList<Integer> sortednumbers = new LinkedList<Integer>(numbers);
				Collections.sort(sortednumbers);
				for (Integer i : sortednumbers) {
					sb.append("\t"+i+"\n");	
				}

			}
			
//			System.err.println("is infeasible");
		}
		if (!firstReport) sb.append("\n");
		return sb.toString();
	}

	protected boolean containsNoVerifyAttribute(Statement s) {
		return containsNamedAttribute(s, ProgramFactory.NoVerifyTag);
	}
	
	protected boolean containsNamedAttribute(Statement s, String name) {
		if (s.getAttributes()!=null) {
			for (Attribute attr : s.getAttributes()) {
				if (attr instanceof NamedAttribute) {
					NamedAttribute na = (NamedAttribute)attr;
					if (na.getName().equals(name)) {									
						return true;
					} 
				}
			}		
		}		
		return false;
	}
	
	
}
