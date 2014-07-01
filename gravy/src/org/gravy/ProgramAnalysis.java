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
	
	public long feasibleBlocks, infeasibleBlocks, infeasibleBlocksUnderPost;
	
	
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
		
		feasibleBlocks=0;
		infeasibleBlocks=0;
		infeasibleBlocksUnderPost=0;
		
		TypeChecker tc = new TypeChecker(pf.getASTRoot());
		this.cff = new DefaultControlFlowFactory(pf.getASTRoot(), tc);

		if (Options.v().getDebugMode()) {
			this.cff.toFile("unstructured.bpl");
		}

		for (CfgProcedure p : this.cff.getProcedureCFGs()) {
			if (p.getRootNode()==null) continue;
			try {
				if (!analyzeProcedure(p)) break;
			} catch (Exception e) {
				e.printStackTrace();
				break;
			}
		}

		if (Options.v().getDebugMode()) {
			//after analyzing each procedure, they all are in ssa form.
			this.cff.toFile("passive.bpl");
		}

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
		
		
		final Future<?> future = executor.submit(detectionThread);

		
		boolean timeout = false;
		boolean exception = false;

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
