package org.gravy;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.gravy.checker.AbstractChecker;
import org.gravy.checker.InfeasibleCodeChecker;
import org.gravy.checker.JodChecker;
import org.gravy.checker.JodChecker2;
import org.gravy.checker.RocketScienceChecker;
import org.gravy.report.InterpolationInfeasibleReport;
import org.gravy.report.Report;
import org.gravy.reportprinter.DefaultInfeasibleCodeReportPrinter;
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
	
	public static long timeouts = 0;
	public static long totalTime = 0;
		
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
//		case 0: {
//			rp = new DefaultGraVyReportPrinter();
//			break;
//		}
		case 1: {
			rp = new InterpolatingInfeasibleCodeReportPrinter();
			break;
		}		
		case 2: {
			rp = new DefaultInfeasibleCodeReportPrinter();
			break;
		}				
		case 3: {
			rp = new DefaultInfeasibleCodeReportPrinter();
			break;
		}				
		case 4: {
			rp = new InterpolatingInfeasibleCodeReportPrinter();
			break;
		}						
		case 5: {
			rp = new DefaultInfeasibleCodeReportPrinter();
			break;
		}								
		default: {
			Log.error("WARNING: -checker "+ Options.v().getChecker() + " using default 0 instead!");
			rp = new DefaultInfeasibleCodeReportPrinter();
			break;
		}
		}
		return rp;
	}
	
	
	public static void runFullProgramAnalysis(ProgramFactory pf, ReportPrinter rp) {
			
		GlobalsCache.v().setProgramFactory(pf);
		TypeChecker tc = new TypeChecker(pf.getASTRoot());
		DefaultControlFlowFactory cff = new DefaultControlFlowFactory(pf.getASTRoot(), tc);

//		if (Options.v().getDebugMode()) {
//			cff.toFile("unstructured.bpl");
//		}
		
		String fname = org.gravy.Options.v().getFunctionName();
		
		Long checkTime = 0L;
//		int proccount=0;
		for (CfgProcedure p : cff.getProcedureCFGs()) {			
//			System.err.println("Analyzing procedure "+(++proccount)+"/"+cff.getProcedureCFGs().size());
			if (fname!=null && !p.getProcedureName().equals(fname)) {
				//if option is set to analyze only one procedure, 
				//continue if this is not the right proc.
				continue;
			}
			
			if (p.getRootNode()==null) continue;
			try {				
				StopWatch sw = StopWatch.getInstanceAndStart();
				
				Report report = analyzeProcedure(p, cff);

				Long t = sw.getTime();
				checkTime+=t;

				if (Options.v().stopTime) {					
					int lines = countStatementsForStatistics(p);
					Statistics.v().writeCheckerStats(p.getProcedureName(), lines, t.doubleValue(), report);
					sw.stop();
					
				}
				
				
				if (report!=null && report.needsUpdate) {
					sw = null;
					if (Options.v().stopTime) {
						sw = StopWatch.getInstanceAndStart();					
					}					
					report.update(); //do the interpolation based fault localization here to avoid timeouts.
					if (Options.v().stopTime) {
						t = sw.getTime();
						sw.stop();
						boolean timeout=(report instanceof InterpolationInfeasibleReport) ? ((InterpolationInfeasibleReport)report).timeout : false ;
						Statistics.v().writeFaultLocalizationStats(p.getProcedureName(), t.doubleValue(), timeout);						
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

		totalTime+=checkTime;
		Log.info("Total time: " + ((float)checkTime)/1000f + "s");
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
//		case 0: {
//			detectionThread = new GravyChecker(cff, p);
//			break;
//		}
		case 1: {
			detectionThread = new InfeasibleCodeChecker(cff, p);
			break;
		}		
		case 2: {
			detectionThread = new JodChecker(cff, p);
			break;
		}				
		case 3: {
			detectionThread = new InfeasibleCodeChecker(cff, p);
			break;
		}				
		case 4: {
			detectionThread = new RocketScienceChecker(cff, p);
			break;
		}						
		case 5: {
			detectionThread = new RocketScienceChecker(cff, p);
			break;
		}								
		default: {
			Log.error("WARNING: -checker "+ Options.v().getChecker() + " using default 0 instead!");
			detectionThread = new RocketScienceChecker(cff, p);
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
			Log.info("Timeout reached for method " + p.getProcedureName());
			exception =true;
		} catch (OutOfMemoryError e) {
			Log.info("Out of memory for "+ p.getProcedureName());
			exception =true;
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
