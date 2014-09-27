/**
 * 
 */
package org.gravy.reportprinter;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map.Entry;

import org.gravy.report.InterpolationInfeasibleReport;
import org.gravy.report.Report;
import org.gravy.util.JavaSourceLocation;

import util.Log;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 *
 */
public class InterpolatingInfeasibleCodeReportPrinter implements ReportPrinter {

	/**
	 * 
	 */
	public InterpolatingInfeasibleCodeReportPrinter() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see org.gravy.reportprinter.ReportPrinter#printReport(org.gravy.report.Report)
	 */
	@Override
	public void printReport(Report r) {
		if (r!=null && r instanceof InterpolationInfeasibleReport) {
			InterpolationInfeasibleReport ir = (InterpolationInfeasibleReport)r;
			String s = this.buildBoogieErrorString(ir);
			if (s!=null && s.length()>0) Log.info(s);
		}
	}

	private String buildBoogieErrorString(InterpolationInfeasibleReport ir) {
		LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports = ir.getReports();
		StringBuffer sb = new StringBuffer();
	
		sb.append("Total reports: "+reports.size()+ " -----------------\n");
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
		
		return sb.toString();
	}


	
}
