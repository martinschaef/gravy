/**
 * 
 */
package org.gravy.reportprinter;

import org.gravy.report.Report;

import util.Log;

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
		if (r!=null) {
			Log.info(r.toString());
		}
	}

}
