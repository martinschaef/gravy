/**
 * 
 */
package org.gravy.report;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

import org.gravy.Options;
import org.gravy.faultlocalization.FaultLocalizationThread;
import org.gravy.util.JavaSourceLocation;
import org.gravy.verificationcondition.AbstractTransitionRelation;

import util.Log;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;

/**
 * @author schaef
 * 
 */
public class Atva15Report extends Report {

	private LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports1 = new LinkedList<HashMap<CfgStatement, JavaSourceLocation>>();
	private LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports2 = new LinkedList<HashMap<CfgStatement, JavaSourceLocation>>();
	private LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports3 = new LinkedList<HashMap<CfgStatement, JavaSourceLocation>>();

	public boolean timeout = false;

	private Set<BasicBlock> fwd_dangerousBlocks, bwd_dangerousBlocks, unreachableBlocks;
	private AbstractTransitionRelation tr;
	private FaultLocalizationThread flt1 = null;
	private FaultLocalizationThread flt2 = null;
	private FaultLocalizationThread flt3 = null;

	public Atva15Report(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> fwd_dangerousBlocks, Set<BasicBlock> bwd_dangerousBlocks, Set<BasicBlock> unreachableBlocks) {
		this.fwd_dangerousBlocks = fwd_dangerousBlocks;
		this.bwd_dangerousBlocks = bwd_dangerousBlocks;
		this.unreachableBlocks = unreachableBlocks;
		this.needsUpdate = this.fwd_dangerousBlocks.size() > 0 || this.bwd_dangerousBlocks.size() > 0 || this.unreachableBlocks.size() > 0;
		this.tr = tr;
		flt1 = new FaultLocalizationThread(cff, tr, feasibleBlocks,
				fwd_dangerousBlocks);
		flt2 = new FaultLocalizationThread(cff, tr, feasibleBlocks,
				bwd_dangerousBlocks);
		flt3 = new FaultLocalizationThread(cff, tr, feasibleBlocks,
				unreachableBlocks);
	}

	public LinkedList<HashMap<CfgStatement, JavaSourceLocation>> getFwdReports() {
		return this.reports1;
	}

	public LinkedList<HashMap<CfgStatement, JavaSourceLocation>> getBwdReports() {
		return this.reports2;
	}
	
	public LinkedList<HashMap<CfgStatement, JavaSourceLocation>> getUnrReports() {
		return this.reports3;
	}

	@Override
	public void update() {
		// Log.info("trying to localize fault.");
		try {
			update(this.flt1, this.reports1);
			update(this.flt2, this.reports2);
			update(this.flt3, this.reports3);
		} catch (Throwable e) {
			
		}
	}
	
	private void update(FaultLocalizationThread flt, LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports) throws Throwable {
		if (flt != null && this.tr != null) {
			ExecutorService executor = Executors.newSingleThreadExecutor();

			final Future<?> future = executor.submit(flt);
			try {
				// start thread and wait xx seconds
				if (Options.v().getTimeOut() > 0) {
					future.get(Options.v().getTimeOut(), TimeUnit.MILLISECONDS);
				} else {
					future.get();
				}
				reports.addAll(flt.getReports());
			} catch (TimeoutException e) {
				Log.error("fault localization timeout.");
				this.timeout = true;
				reports.clear();
				throw(e);
			} catch (OutOfMemoryError e) {
				reports.clear();
				throw(e);
			} catch (Throwable e) {
				e.printStackTrace();
				reports.clear();
				throw(e);
			} finally {
				if (flt != null) {
					flt.shutDownProver();
				}

				if (!future.isDone()) {
					future.cancel(true);
				}

				executor.shutdown();
			}
		}	
	}

}
