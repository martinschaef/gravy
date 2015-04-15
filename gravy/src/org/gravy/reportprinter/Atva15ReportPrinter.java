/**
 * 
 */
package org.gravy.reportprinter;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.report.Atva15Report;
import org.gravy.report.Report;
import org.gravy.util.JavaSourceLocation;

import util.Log;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 *
 */
public class Atva15ReportPrinter implements ReportPrinter {

	/**
	 * 
	 */
	public Atva15ReportPrinter() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see org.gravy.reportprinter.ReportPrinter#printReport(org.gravy.report.Report)
	 */
	@Override
	public void printReport(Report r) {
		if (r!=null && r instanceof Atva15Report) {
			Atva15Report ir = (Atva15Report)r;
			String s = this.buildBoogieErrorString(ir);
			if (s!=null && s.length()>0) {
				Log.info(s);
			} 
		} 
	}

	private String buildBoogieErrorString(Atva15Report ir) {
		
		StringBuffer sb = new StringBuffer();
		
		sb.append("** CRITICAL (fwd reachable) **\n");
		appendReport(ir.getFwdReports(), sb);
		sb.append("** Bad Error Handling (bwd reachable) **\n");
		appendReport(ir.getBwdReports(), sb);
		sb.append("** Unreachable (bwd reachable) **\n");
		appendReport(ir.getUnrReports(), sb);
		
//		sb.append("Total reports: "+reports.size()+ " -----------------\n");
		
		return sb.toString();
	}


	private void appendReport(LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports, StringBuffer sb) {
		int count =0;
		for (HashMap<CfgStatement, JavaSourceLocation> lines : reports) {
			sb.append("  Reports: "+(++count));
			boolean first = true;
			for (Entry<CfgStatement, JavaSourceLocation> line : lines.entrySet()) {
				if (first) {
					sb.append("  In file: " + line.getValue().FileName+"\n");
					first = false;
				}
				sb.append("\t line: " + line.getValue().StartLine+":"+line.getValue().StartCol+"  "+line.getValue().inInfeasibleBlock+"\n");
				
			}
		}		
	}
	
	
}
