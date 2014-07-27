/**
 * 
 */
package gravy_test;

import static org.junit.Assert.*;

import org.gravy.Options;
import org.gravy.ProgramAnalysis;
import org.junit.Test;

/**
 * @author schaef
 *
 */
public class UnwindAndInline {

	@Test
	public void test() {
		String fname = "regression/unwind_inline/unw_inl001.bpl";	
		
		long expectedFeasibleBlocks = 56;
		long expectedInfeasibleBlocks = 4;
		long expectedInfeasibleBlocksUnderPost = 0;
		//set the checker to GradualVerification (default)
		Options.v().setChecker(1);
		
		try {			
			ProgramAnalysis.runProgramAnalysis(fname);
			
			if (ProgramAnalysis.feasibleBlocks!=expectedFeasibleBlocks 
					|| ProgramAnalysis.infeasibleBlocks!=expectedInfeasibleBlocks 
					|| ProgramAnalysis.infeasibleBlocksUnderPost != expectedInfeasibleBlocksUnderPost) {
				StringBuilder sb = new StringBuilder();
				sb.append("Analysis failed:\nExpected Result:\n");
				sb.append("Feasible Blocks "+ProgramAnalysis.feasibleBlocks+"\t but epxected \t"+expectedFeasibleBlocks+"\n");
				sb.append("Infeasible Blocks "+ProgramAnalysis.infeasibleBlocks+"\t but epxected \t"+expectedInfeasibleBlocks+"\n");
				sb.append("Infeasible Blocks under Postcondition "+ProgramAnalysis.infeasibleBlocksUnderPost+"\t but epxected \t"+expectedInfeasibleBlocksUnderPost+"\n");
				fail(sb.toString());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			org.junit.Assert.assertTrue(e.toString(), false);
		}
		
		org.junit.Assert.assertTrue(true);
	}

}
