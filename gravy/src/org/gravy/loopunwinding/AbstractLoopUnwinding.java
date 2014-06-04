package org.gravy.loopunwinding;

import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 */
public abstract class AbstractLoopUnwinding {

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
