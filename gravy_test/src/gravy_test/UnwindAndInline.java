/**
 * 
 */
package gravy_test;

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
		
		//set the checker to GradualVerification (default)
		Options.v().setChecker(1);
		
		try {			
			ProgramAnalysis.runProgramAnalysis(fname);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			org.junit.Assert.assertTrue(e.toString(), false);
		}
		
		org.junit.Assert.assertTrue(true);
	}

}
