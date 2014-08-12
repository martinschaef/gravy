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
public class SmackInfeasibleTest {
	
	@Parameterized.Parameters (name = "{index}: parse({1})")
	public static Collection<Object[]> data() {
		LinkedList<Object[]> filenames = new LinkedList<Object[]>();
		String dirname = System.getProperty("user.dir")+"/regression/smack_infeasible";
		  File dir = new File(dirname);
		  
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

    public SmackInfeasibleTest(String input, String shortname) {
        this.input = input;
        this.shortname = shortname;
    }

	
	@Test
	public void test() {
		System.out.println("Test :"+this.shortname);
		Options.v().setChecker(1);
		try {
			ProgramAnalysis.runProgramAnalysis(this.input);
		} catch (Exception e) {
			e.printStackTrace();
			org.junit.Assert.assertTrue(e.toString(), false);
		}
		org.junit.Assert.assertTrue(true);
	}
	
	


}
