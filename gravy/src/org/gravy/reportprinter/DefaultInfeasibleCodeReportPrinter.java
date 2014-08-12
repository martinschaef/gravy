/**
 * 
 */
package org.gravy.reportprinter;

import java.util.HashSet;
import java.util.LinkedList;

import org.gravy.GlobalsCache;
import org.gravy.report.InfeasibleReport;
import org.gravy.report.Report;

import util.BoogiePrinter;
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
			Log.info(this.buildBoogieErrorString(ir));
		}
	}

	private String buildBoogieErrorString(InfeasibleReport ir) {
		LinkedList<HashSet<Statement>> infeasibleSubProgs = ir.getInfeasibleSubPrograms();
		StringBuffer sb = new StringBuffer();
		boolean firstReport = true;
//		int i=0;
		for (HashSet<Statement> subprog : infeasibleSubProgs) {
			
			StringBuilder sb_ = new StringBuilder();
			
			for (Statement s : subprog) {				
							
				if (this.containsNoVerifyAttribute(s)) {
					continue;
				}
				if (this.containsNamedAttribute(s, GlobalsCache.ignoreInfeasibleReport)) {
					sb_ = new StringBuilder();
					break;
				}
				
				ILocation loc = s.getLocation();
				if (loc!=null) {
					sb_.append("\tLines ");
					sb_.append(loc.getStartLine());
					sb_.append(" to ");
					sb_.append(loc.getEndLine());
					sb_.append(":\n");
					BoogiePrinter bp = new BoogiePrinter(null);
					bp.printStatement(sb_, s, "\t");
					sb_.append("\n");
				}
			}
			
			if (firstReport && sb_.length()>0) {
				firstReport = false;
				sb.append("\nInfeasible Code in:"+ir.getProcedureName()+"\n");
			}
			sb.append(sb_.toString());
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
