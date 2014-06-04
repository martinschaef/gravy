package org.gravy;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.gravy.checker.AbstractChecker;
import org.gravy.checker.GraVyChecker;

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
	
	public boolean CavModeHack = false;
	
	private ProgramFactory pf;
	private AbstractControlFlowFactory cff = null;

	private long totalStatements = 0, totalSafeStatements = 0;
	private long totalUnreachable = 0, totalStrictlyUnsafe = 0;
	private long totalPossiblyUnsafe = 0;

	private long timeouts = 0;

	public ProgramAnalysis(ProgramFactory pf) {
		this.pf = pf;
		GlobalsCache.v().setProgramFactory(pf);
	}
	
	public void runFullProgramAnalysis() {		
		
		TypeChecker tc = new TypeChecker(pf.getASTRoot());

		// this.cff = new ControlFlowFactory(pf.getASTRoot(), tc,
		// !org.joogie.Options.v().isOldStyleEncoding() );
		this.cff = new DefaultControlFlowFactory(pf.getASTRoot(), tc);

		int debug_infeasiblecount = 0;

		// this.cff.toFile("unstructured.bpl");

		for (CfgProcedure p : this.cff.getProcedureCFGs()) {
			if (p.getRootNode()==null) continue;
			// if (!p.getProcedureName()
			// .contains(
			// "void$org.apache.hadoop.hdfs.server.namenode.NamenodeFsck$copyBlocksToLostFound$15256"))
			// {
			// continue; // TODO just for testing
			// }
			if (!analyzeProcedure(p)) {
				debug_infeasiblecount++;
			}
		}

		Double precent = ((double) this.totalSafeStatements)
				/ (this.totalStatements) * 100;
		Log.info("Total: " + String.format("%.2f", precent)
				+ "% of all statements are safe!");
		Log.info("Total Statements: " + this.totalStatements);
		Log.info("Total Unreachable Statements: " + this.totalUnreachable);
		Log.info("Total Safe Statements: " + this.totalSafeStatements);
		Log.info("Total StritclyUnsafe Statements: " + this.totalStrictlyUnsafe);
		Log.info("Total PossiblyUnsafe Statements: " + this.totalPossiblyUnsafe);
		Log.info("Total number of procedures that may throw exceptions: "
				+ (this.cff.getProcedureCFGs().size() - debug_infeasiblecount)
				+ "/" + this.cff.getProcedureCFGs().size());
		Log.info("Total ??s after " + Options.v().getTimeOut()
				+ "s: " + this.timeouts);
				
	}
	
	private boolean analyzeProcedure( CfgProcedure p) {
		Log.info("Checking: " + p.getProcedureName());

		
		//MethodInfo methodInfo = new MethodInfo(p.getProcedureName());

		// create an executor to kill the verification with a timeout if
		// necessary
		ExecutorService executor = Executors.newSingleThreadExecutor();		
		
		AbstractChecker detectionThread = null;		
		
		detectionThread = new GraVyChecker(cff, p);

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
