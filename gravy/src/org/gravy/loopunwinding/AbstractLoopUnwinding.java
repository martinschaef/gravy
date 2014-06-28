package org.gravy.loopunwinding;

import org.gravy.Options;

import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 */
public abstract class AbstractLoopUnwinding {

	public static void unwindeLoops(CfgProcedure proc) {
		AbstractLoopUnwinding unwinder = null;
		if (Options.v().getUnwindings()<0) {
			unwinder = new HavocOnlyUnwinding(proc);
		} else {
			unwinder = new SimpleUnwinding(proc, Options.v().getUnwindings());
		}
		unwinder.unwind();
	}
	
	/**
	 * Boogie procedure
	 */
	protected CfgProcedure proc;

	/**
	 * C-tor
	 * 
	 * @param proc
	 *            Boogie procedure
	 */
	protected AbstractLoopUnwinding(CfgProcedure proc) {
		this.proc = proc;
	}

	/**
	 * Unwinds the loops
	 */
	public abstract void unwind();
}
