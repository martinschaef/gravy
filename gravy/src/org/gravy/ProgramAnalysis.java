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

import typechecker.TypeChecker;
import util.Log;
import boogie.ProgramFactory;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.CfgProcedure;
import boogie.controlflow.DefaultControlFlowFactory;

/**
 * @author martin
 * 
 */
public class ProgramAnalysis {
	
	private static long timeouts = 0;
	
	public static long feasibleBlocks, infeasibleBlocks, infeasibleBlocksUnderPost;
		
	public static void runProgramAnalysis(String boogieFileName) throws Exception {
		ProgramFactory pf;
		try {
			pf = new ProgramFactory(boogieFileName);
			Log.info("Parsed "+ boogieFileName + ": "+ (pf.getASTRoot()!=null));					
			GlobalsCache.v().setProgramFactory(pf);
			runFullProgramAnalysis(pf);			
		} catch (Exception e) {
			throw e;
		} finally {
			GlobalsCache.resetInstance();
			Options.resetInstance();
		}
	}
	
	private static void runFullProgramAnalysis(ProgramFactory pf) {		
		
		feasibleBlocks=0;
		infeasibleBlocks=0;
		infeasibleBlocksUnderPost=0;
		
		TypeChecker tc = new TypeChecker(pf.getASTRoot());
		DefaultControlFlowFactory cff = new DefaultControlFlowFactory(pf.getASTRoot(), tc);

		if (Options.v().getDebugMode()) {
			cff.toFile("unstructured.bpl");
		}

		for (CfgProcedure p : cff.getProcedureCFGs()) {
			if (p.getRootNode()==null) continue;
			try {
				if (!analyzeProcedure(p, cff)) break;
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
	
	private static boolean analyzeProcedure(CfgProcedure p, AbstractControlFlowFactory cff) {
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

		
		boolean timeout = false;
		boolean exception = false;

		try {
			// start thread and wait xx seconds			
			future.get(Options.v().getTimeOut(),
					TimeUnit.MILLISECONDS);
			Log.info("Finished method " + p.getProcedureName());
		} catch (TimeoutException e) {
			// set timeout to method info
			// methodInfo.setTimeout(true);
			Log.info("Timeout reached for method " + p.getProcedureName());
			timeout = true;
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
		
		if (report!=null) {
			Log.info(report.toString());
		}

		if (timeout) {
			timeouts++;
		} else {
			feasibleBlocks+=detectionThread.countFeasibleBlock() ;
			infeasibleBlocks+=detectionThread.countInfeasibleBlock();
			infeasibleBlocksUnderPost+=detectionThread.countInfeasibleBlockUnderPost();
		}
		
		return !exception;
	}


}
