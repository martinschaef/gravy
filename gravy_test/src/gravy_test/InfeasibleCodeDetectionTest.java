/**
 * 
 */
package gravy_test;

import java.io.File;
import java.util.Collection;
import java.util.LinkedList;

import org.gravy.Options;
import org.gravy.ProgramAnalysis;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.Parameterized;

/**
 * @author schaef
 *
 */
@RunWith(Parameterized.class)
public class InfeasibleCodeDetectionTest {

	public static Long time=0L;
	public static Long timeOuts=0L;
	
	@Parameterized.Parameters (name = "{index}: parse({1})")
	public static Collection<Object[]> data() {
		LinkedList<Object[]> filenames = new LinkedList<Object[]>();
		  File dir = new File("./regression/infeasible_code");
		  File[] directoryListing = dir.listFiles();
		  if (directoryListing != null) {
		    for (File child : directoryListing) {		    	
		    	if (child.getName().endsWith(".bpl")) {
		    		filenames.add(new Object[] {child.getAbsolutePath(), child.getName()});
		    	} else {
		    		//Ignore
		    	}
		    }
		  } else {
		    // Handle the case where dir is not really a directory.
		    // Checking dir.isDirectory() above would not be sufficient
		    // to avoid race conditions with another process that deletes
		    // directories.
		  }				  
	   return filenames;
   }
	
    private String input;
    private String shortname;
    public InfeasibleCodeDetectionTest(String input, String shortname) {
        this.input = input;
        this.shortname = shortname;
    }

		
	@Test
	public void test() {
		
//		ProgramFactory pf = null;
//		System.out.println("TEST: "+this.shortname);
//		try {
//			pf = new ProgramFactory(this.input);
		System.out.println("TEST: "+this.shortname);
		
		String fname = this.input;	
		
		//set the checker to GradualVerification (default)
		Options.v().setChecker(3);
		
		try {
			
			ProgramAnalysis.runProgramAnalysis(fname);
			timeOuts+=ProgramAnalysis.timeouts;
			time+=ProgramAnalysis.totalTime;
			
			System.err.println("Cumulative time: "+time.toString());
			System.err.println("Cumulative timeouts: "+timeOuts.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
			org.junit.Assert.assertTrue(e.toString(), false);
		}
		
		org.junit.Assert.assertTrue(true);
	}

	
	
}
