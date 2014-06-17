/**
 * 
 */
package gravy_test;

import static org.junit.Assert.fail;

import org.gravy.Options;
import org.gravy.ProgramAnalysis;
import org.junit.Test;

/**
 * @author schaef
 *
 */
public class InfeasibleCodeDetectionTest {

	@Test
	public void test() {
		String fname = "regression/infeasible_code/infeasiblecode001.bpl";	
		
		long expectedFeasibleBlocks = 56;
		long expectedInfeasibleBlocks = 4;
		long expectedInfeasibleBlocksUnderPost = 0;
		//set the checker to GradualVerification (default)
		Options.v().setChecker(1);
		
		try {
			ProgramAnalysis pa = new ProgramAnalysis(fname);
			pa.runFullProgramAnalysis();
			
			if (pa.feasibleBlocks!=expectedFeasibleBlocks 
					|| pa.infeasibleBlocks!=expectedInfeasibleBlocks 
					|| pa.infeasibleBlocksUnderPost != expectedInfeasibleBlocksUnderPost) {
				StringBuilder sb = new StringBuilder();
				sb.append("Analysis failed:\nExpected Result:\n");
				sb.append("Feasible Blocks "+pa.feasibleBlocks+"\t but epxected \t"+expectedFeasibleBlocks+"\n");
				sb.append("Infeasible Blocks "+pa.infeasibleBlocks+"\t but epxected \t"+expectedInfeasibleBlocks+"\n");
				sb.append("Infeasible Blocks under Postcondition "+pa.infeasibleBlocksUnderPost+"\t but epxected \t"+expectedInfeasibleBlocksUnderPost+"\n");
				fail(sb.toString());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			org.junit.Assert.assertTrue(e.toString(), false);
		}
		
		org.junit.Assert.assertTrue(true);
	}

}
