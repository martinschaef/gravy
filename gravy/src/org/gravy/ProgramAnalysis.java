package org.gravy;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.gravy.checker.AbstractChecker;
import org.gravy.checker.GravyChecker;
import org.gravy.checker.InfeasibleCodeChecker;
import org.gravy.report.Report;
import org.gravy.reportprinter.DefaultGraVyReportPrinter;
import org.gravy.reportprinter.DefaultInfeasibleCodeReportPrinter;
import org.gravy.reportprinter.ReportPrinter;
import org.gravy.util.Log;

import typechecker.TypeChecker;
import boogie.ProgramFactory;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.DefaultControlFlowFactory;

/**
 * @author schaef
 * 
 */
public class ProgramAnalysis {
	
	private static long timeouts = 0;
		
	public static void runProgramAnalysis(String boogieFileName) throws Exception {
		ProgramFactory pf;
		try {
			pf = new ProgramFactory(boogieFileName);
			Log.info("Parsed "+ boogieFileName + ": "+ (pf.getASTRoot()!=null));								
			runFullProgramAnalysis(pf, getDefaultReportPrinter());			
		} catch (Exception e) {
			throw e;
		} finally {
			GlobalsCache.resetInstance();
			Options.resetInstance();
		}
	}
	
	private static ReportPrinter getDefaultReportPrinter() {
		ReportPrinter rp = null;
		switch (Options.v().getChecker()) {
		case 0: {
			rp = new DefaultGraVyReportPrinter();
			break;
		}
		case 1: {
			rp = new DefaultInfeasibleCodeReportPrinter();
			break;
		}		
		default: {
			Log.error("WARNING: -checker "+ Options.v().getChecker() + " using default 0 instead!");
			rp = new DefaultGraVyReportPrinter();
			break;
		}
		}
		return rp;
	}
	
	
	public static void runFullProgramAnalysis(ProgramFactory pf, ReportPrinter rp) {		
		GlobalsCache.v().setProgramFactory(pf);
		TypeChecker tc = new TypeChecker(pf.getASTRoot());
		DefaultControlFlowFactory cff = new DefaultControlFlowFactory(pf.getASTRoot(), tc);

		if (Options.v().getDebugMode()) {
			cff.toFile("unstructured.bpl");
		}

		for (CfgProcedure p : cff.getProcedureCFGs()) {
			if (p.getRootNode()==null) continue;
			try {				
				Report report = analyzeProcedure(p, cff);
				
				if (report!=null) {
					rp.printReport(report);
				}
						
			} catch (Exception e) {
				e.printStackTrace();
				break;
			}
		}

		if (Options.v().getDebugMode()) {
			//after analyzing each procedure, they all are in ssa form.
			cff.toFile("passive.bpl");
		}

		Log.info("Total Timeouts after " + Options.v().getTimeOut()
				+ "ms: " + timeouts);
				
	}
	
	private static Report analyzeProcedure(CfgProcedure p, AbstractControlFlowFactory cff) {
		if (Options.v().getDebugMode()) {
			Log.info("Checking: " + p.getProcedureName());
		}
		// create an executor to kill the verification with a timeout if
		// necessary
		ExecutorService executor = Executors.newSingleThreadExecutor();		
		
		AbstractChecker detectionThread = null;		
		
		switch (Options.v().getChecker()) {
		case 0: {
			detectionThread = new GravyChecker(cff, p);
			break;
		}
		case 1: {
			detectionThread = new InfeasibleCodeChecker(cff, p);
			break;
		}		
		default: {
			Log.error("WARNING: -checker "+ Options.v().getChecker() + " using default 0 instead!");
			detectionThread = new GravyChecker(cff, p);
			break;
		}
		}
		
		
		final Future<?> future = executor.submit(detectionThread);

		boolean exception = false;

		try {
			// start thread and wait xx seconds			
			future.get(Options.v().getTimeOut(),
					TimeUnit.MILLISECONDS);
			Log.debug("Finished method " + p.getProcedureName());
		} catch (TimeoutException e) {
			// set timeout to method info
			// methodInfo.setTimeout(true);
			timeouts++;
			Log.debug("Timeout reached for method " + p.getProcedureName());
		} catch (Exception e) {
			e.printStackTrace();
			future.cancel(true);
			exception =true;			
		} finally {
			// cancel thread if not done
			if (!future.isDone()) {
				future.cancel(true);
			}

			// shutdown prover
			detectionThread.shutDownProver();

			// shutdown executor
			executor.shutdown();
			
		}
		
		Report report = detectionThread.getReport();
		if (exception) return null; 		
		return report;
	}


}
