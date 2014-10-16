/**
 * 
 */
package org.gravy.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.gravy.faultlocalization.FaultLocalizationThread;
import org.gravy.report.InterpolationInfeasibleReport;
import org.gravy.report.Report;

/**
 * @author schaef
 *
 */
public class Statistics {
	
	public static Integer HACK_effectualSetSize = 0;
	

	private static Statistics instance = null;
	
	public static Statistics v() {
		if (instance==null) {
			instance = new Statistics();
		}
		return instance;
	}
	
	private Statistics() {
		
	}

	public static void resetInstance() {
		if (instance!=null) {			
				try {
					if (instance.checkerBuffer!=null) instance.checkerBuffer.close();
					if (instance.faultLocBuffer!=null) instance.faultLocBuffer.close();
					instance.cfw.close();
					instance.ffw.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
		instance=null;
	}
	
	//---------------------
	
	private BufferedWriter checkerBuffer = null;
	private BufferedWriter faultLocBuffer = null;
	private FileWriter cfw ;
	private FileWriter ffw;
	
	public void setLogFilePrefix(String s) throws Throwable {
		
		File checkerLog = new File(s+"_checker.csv");
		File faultLocLog = new File(s+"_faultloc.csv");
		try {
			cfw = new FileWriter(checkerLog.getAbsoluteFile());
			ffw = new FileWriter(faultLocLog.getAbsoluteFile());
			this.checkerBuffer = new BufferedWriter(cfw);
			this.faultLocBuffer = new BufferedWriter(ffw);
			
		} catch (Throwable e) {
			e.printStackTrace();
			throw e;
		}
	}	
	
	public void writeCheckerStats(String procname, Integer lines, Double millisecs, Report report) {
		if (this.checkerBuffer!=null) {
			try {
				
				this.checkerBuffer.write(procname);
				this.checkerBuffer.write(", ");				
				this.checkerBuffer.write(lines.toString());
				this.checkerBuffer.write(", ");
				Double secs = (millisecs/ 1000.0); //convert to seconds
				this.checkerBuffer.write(secs.toString());
				if (report instanceof InterpolationInfeasibleReport) {
					this.checkerBuffer.write(", ");
					Integer found = (((InterpolationInfeasibleReport)report).needsUpdate)?1:0;
					this.checkerBuffer.write( found.toString() );
				} else {
					this.checkerBuffer.write(", -1");
				}
				this.checkerBuffer.write(", ");				
				this.checkerBuffer.write(Statistics.HACK_effectualSetSize.toString());
				this.checkerBuffer.write("\n");	
				this.checkerBuffer.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * hack
	 */
	public void writeFaultLocalizationStats(String procname, Double millisecs, Boolean timeout) {
		if (this.faultLocBuffer!=null) {
			try {
				this.faultLocBuffer.write(procname);
				this.faultLocBuffer.write(", ");
				Double secs = (millisecs/ 1000.0); //convert to seconds
				this.faultLocBuffer.write(secs.toString());
				this.faultLocBuffer.write(", ");
				this.faultLocBuffer.write(FaultLocalizationThread.DEBUG_ProofObligations.toString());
				this.faultLocBuffer.write(", ");
				this.faultLocBuffer.write(FaultLocalizationThread.DEBUG_AbstractTrace.toString());
				this.faultLocBuffer.write(", ");
				this.faultLocBuffer.write(timeout.toString());				
				this.faultLocBuffer.write("\n");
				this.faultLocBuffer.flush();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		
	}
	
	
}
