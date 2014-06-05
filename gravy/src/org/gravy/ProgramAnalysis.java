package org.gravy;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.gravy.checker.AbstractChecker;
import org.gravy.checker.GravyChecker;
import org.gravy.checker.InfeasibleCodeChecker;

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
	
	private ProgramFactory pf;
	private AbstractControlFlowFactory cff = null;

	private long timeouts = 0;
	
	public ProgramAnalysis(String boogieFileName) throws Exception {
		ProgramFactory pf;
		try {
			pf = new ProgramFactory(boogieFileName);
			Log.info("Parsed "+ boogieFileName + ": "+ (pf.getASTRoot()!=null));		
			this.pf = pf;
			GlobalsCache.v().setProgramFactory(pf);
		} catch (Exception e) {
			throw e;
		}			
	}
	
	
	public void runFullProgramAnalysis() {		
		
		TypeChecker tc = new TypeChecker(pf.getASTRoot());
		this.cff = new DefaultControlFlowFactory(pf.getASTRoot(), tc);

		if (Options.v().getDebugMode()) {
			this.cff.toFile("unstructured.bpl");
		}

		 int failed = 0;
		 
		for (CfgProcedure p : this.cff.getProcedureCFGs()) {
			if (p.getRootNode()==null) continue;
			try {
				if (!analyzeProcedure(p)) {
					failed++;
				}
			} catch (Exception e) {
				e.printStackTrace();
				failed++;
			}
		}

		if (Options.v().getDebugMode()) {
			//after analyzing each procedure, they all are in ssa form.
			this.cff.toFile("passive.bpl");
		}

		
		
		Log.info("Total failed analysis calls:  " + failed);
		
		Log.info("Total Timeouts after " + Options.v().getTimeOut()
				+ "ms: " + this.timeouts);
				
	}
	
	private boolean analyzeProcedure( CfgProcedure p) {
		Log.info("Checking: " + p.getProcedureName());
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
		
		if (Options.v().getChecker()==0) {	
			//detectionThread = new SimpleGravyChecker(cff, p);
			detectionThread = new GravyChecker(cff, p);
		} else if (Options.v().getChecker()==1) {
			
		} 
		
		final Future<?> future = executor.submit(detectionThread);

		boolean not_safe = true;
		boolean timeout = false;

		try {
			// start thread and wait xx seconds
			future.get(Options.v().getTimeOut(),
					TimeUnit.MILLISECONDS);

		} catch (TimeoutException e) {
			// set timeout to method info
			// methodInfo.setTimeout(true);
			Log.info("Timeout reached for method " + p.getProcedureName());
			timeout = true;
		} catch (Exception e) {
			e.printStackTrace();

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

		if (timeout) {
			// report 
		} else {
			// log the result
		}
		
		return not_safe;
	}


}
