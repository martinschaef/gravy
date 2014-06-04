/**
 * 
 */
package org.gravy;

import org.kohsuke.args4j.CmdLineException;
import org.kohsuke.args4j.CmdLineParser;

import util.Log;

/**
 * @author schaef
 *
 */
public class Main {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Options options = Options.v();
		CmdLineParser parser = new CmdLineParser(options);

		try {
			// parse command-line arguments
			parser.parseArgument(args);			
			ProgramAnalysis pa = new ProgramAnalysis(options.getBoogieFile());
			Log.info("Parsed "+ options.getBoogieFile());			
			pa.runFullProgramAnalysis();			
		} catch (CmdLineException e) {
			Log.error(e.getMessage());			
			parser.printUsage(System.err);
		} catch (Exception e) {
			Log.error("Could not parse "+options.getBoogieFile());
			Log.error(e.toString());
			e.printStackTrace();
		}
		

	}

}
