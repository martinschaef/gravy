/**
 * 
 */
package org.gravy.loopunwinding;

import java.util.List;

import util.Log;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.CfgProcedure;

/**
 * @author schaef
 *
 */
public class SimpleUnwinding extends AbstractLoopUnwinding {

	public SimpleUnwinding(CfgProcedure proc, int unwindings) {
		super(proc);
		this.proc = proc;
		this.maxUnwinding = unwindings;
	}

	
	/* (non-Javadoc)
	 * @see org.gravy.loopunwinding.AbstractLoopUnwinding#unwind()
	 */
	@Override
	public void unwind() {
		BasicBlock root = proc.getRootNode();
		LoopDetection detection = new LoopDetection();
		List<LoopInfo> loops = detection.computeLoops(root);

		for (LoopInfo loop : loops) {
			Log.debug(loop);
			unwind(loop, this.maxUnwinding);
		}

	}


}
