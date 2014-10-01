package org.gravy;

import java.util.HashSet;
import java.util.LinkedList;
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
import org.gravy.reportprinter.InterpolatingInfeasibleCodeReportPrinter;
import org.gravy.reportprinter.ReportPrinter;
import org.gravy.util.Log;
import org.gravy.util.Statistics;
import org.gravy.util.StopWatch;

import typechecker.TypeChecker;
import boogie.ProgramFactory;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
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
			if (Options.v().stopTime) {
				Statistics.v().setLogFilePrefix(boogieFileName);
			}
			pf = new ProgramFactory(boogieFileName);
			Log.info("Parsed "+ boogieFileName + ": "+ (pf.getASTRoot()!=null));								
			runFullProgramAnalysis(pf, getDefaultReportPrinter());			
		} catch (Throwable e) {
			throw new RuntimeException(e.toString());
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
			rp = new InterpolatingInfeasibleCodeReportPrinter();
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
		
		if (Options.v().stopTime) {
			Log.info("logging statistics");
		}
		
		GlobalsCache.v().setProgramFactory(pf);
		TypeChecker tc = new TypeChecker(pf.getASTRoot());
		DefaultControlFlowFactory cff = new DefaultControlFlowFactory(pf.getASTRoot(), tc);

//		if (Options.v().getDebugMode()) {
//			cff.toFile("unstructured.bpl");
//		}

		for (CfgProcedure p : cff.getProcedureCFGs()) {
			if (p.getRootNode()==null) continue;
			try {				
				StopWatch sw = null;
				if (Options.v().stopTime) {
					sw = StopWatch.getInstanceAndStart();					
				}
				
				Report report = analyzeProcedure(p, cff);
				
				if (Options.v().stopTime) {					
					Long t = sw.getTime();
					int lines = countStatementsForStatistics(p);
					Statistics.v().writeCheckerStats(p.getProcedureName(), lines, t.doubleValue(), report);
					sw.stop();
					
				}
				
				
				if (report!=null) {
					sw = null;
					if (Options.v().stopTime) {
						sw = StopWatch.getInstanceAndStart();					
					}					
					report.update(); //do the interpolation based fault localization here to avoid timeouts.
					if (Options.v().stopTime) {
						Long t = sw.getTime();
						Statistics.v().writeFaultLocalizationStats(p.getProcedureName(), t.doubleValue());
						sw.stop();
					}
					
					
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
				
		GlobalsCache.resetInstance();
		Options.resetInstance();
		Statistics.resetInstance();
	}
	
	private static int countStatementsForStatistics(CfgProcedure p) {
		int total = 0;
		try {
		LinkedList<BasicBlock> todo = new LinkedList<BasicBlock>();
		HashSet<BasicBlock> done = new HashSet<BasicBlock>();
		todo.add(p.getRootNode());
		while (!todo.isEmpty()) {
			BasicBlock current = todo.pop();
			total+=current.getStatements().size();
			done.add(current);
			for (BasicBlock next : current.getSuccessors()) {
				if (!done.contains(next) && !todo.contains(next)) {
					todo.add(next);
				}
			}
		}
		} catch (Throwable e) {
			
		}
		return total;
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
		} catch (OutOfMemoryError e) {
			Log.info("Out of memory for "+ p.getProcedureName());
		} catch (Exception e) {
			e.printStackTrace();
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
