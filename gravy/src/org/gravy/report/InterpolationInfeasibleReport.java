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
public class InterpolationInfeasibleReport extends Report {

	private LinkedList<HashMap<CfgStatement, JavaSourceLocation>> reports = new LinkedList<HashMap<CfgStatement, JavaSourceLocation>>();
	
	public boolean timeout = false;
	
	private Set<BasicBlock> infeasibleBlocks;
	private AbstractTransitionRelation tr;
	private FaultLocalizationThread flt = null;
	
	public InterpolationInfeasibleReport(AbstractControlFlowFactory cff,
			AbstractTransitionRelation tr, Set<BasicBlock> feasibleBlocks,
			Set<BasicBlock> infeasibleBlocks) {
		this.infeasibleBlocks = infeasibleBlocks;
		this.needsUpdate = this.infeasibleBlocks.size()>0;
		this.tr = tr;
		flt = new FaultLocalizationThread(cff, tr, feasibleBlocks, infeasibleBlocks);
	}	

	public LinkedList<HashMap<CfgStatement, JavaSourceLocation>> getReports() {
		return this.reports;
	}
	
	@Override
	public void update() {
		Log.info("trying to localize fault.");
		if (this.flt!=null && this.tr!=null && this.infeasibleBlocks!=null) {
//			this.flt.run();
//			this.flt.shutDownProver();
//			this.flt = null;
//			this.tr=null;
//			this.infeasibleBlocks=null;			
			
			ExecutorService executor = Executors.newSingleThreadExecutor();	
			
			final Future<?> future = executor.submit(flt);			
			try {
				// start thread and wait xx seconds			
				future.get(Options.v().getTimeOut(),
						TimeUnit.MILLISECONDS);
				this.reports.addAll(flt.getReports());
			} catch (TimeoutException e) {
				Log.error("fault localization timeout.");
				this.timeout=true;
				this.reports.clear();
			} catch (OutOfMemoryError e) {
				this.reports.clear();
			} catch (Throwable e) {
				e.printStackTrace();
				this.reports=null;
			} finally {
				if (flt!=null) {
					flt.shutDownProver();
				}

				if (!future.isDone()) {
					future.cancel(true);
				} 
				
				executor.shutdown();
				
				this.flt = null;
				this.tr=null;
				this.infeasibleBlocks=null;
				// shutdown prover
				
				// shutdown executor
				
			}
		}
	}
	
	
}
