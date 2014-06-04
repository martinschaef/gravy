/**
 * 
 */
package gravy_test;

import static org.junit.Assert.fail;

import org.gravy.ProgramAnalysis;
import org.junit.Test;

/**
 * @author schaef
 *
 */
public class InfeasibleCodeDetectionTest {

	@Test
	public void test() {
		
		try {
			String fname = "regression/infeasible_code/infeasiblecode.bpl";			
			ProgramAnalysis pa = new ProgramAnalysis(fname);
			pa.runFullProgramAnalysis();			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		//TODO: tests not implemented!
		fail("Not yet implemented");
	}

}
