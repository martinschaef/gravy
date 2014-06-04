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
public class GardualVerificationTest {

	@Test
	public void test() {
		
		try {
			String fname = "regression/gradual_verification/gradualverification.bpl";			
			ProgramAnalysis pa = new ProgramAnalysis(fname);
			pa.runFullProgramAnalysis();			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		//TODO: tests not implemented!
		fail("Not yet implemented");
	}

}
