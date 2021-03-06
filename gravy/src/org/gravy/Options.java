/*
 * jimple2boogie - Translates Jimple (or Java) Programs to Boogie
 * Copyright (C) 2013 Martin Schaeaeaeaeaeaeaeaeaef and Stephan Arlt
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

package org.gravy;

import org.kohsuke.args4j.Argument;
import org.kohsuke.args4j.Option;

/**
 * Options
 * 
 * @author schaef, schaef
 */
public class Options {
		
	/**
	 * Boogie input file
	 */	
	@Argument(required = true, index = 0, metaVar = "BoogieFile",
			usage = "File that will be analyzed")
	private String boogieFile=null;

	public String getBoogieFile() {
		return boogieFile;
	}
	
	@Option(name = "-t", usage = "Timeout per prover query in ms")
	private int timeOut = 40000; //after 20 seconds
	
	public int getTimeOut() {
		return timeOut;
	}

	public void setTimeOut(int milliSec) {
		timeOut = milliSec;
	}

	@Option(name = "-f", usage = "Only analyze one Function")
	private String functionName = null; //after 20 seconds
	public String getFunctionName() {
		return this.functionName;
	}
	
	
	
	public boolean stopTime = false;
	
	
	
	@Option(name = "-unwind", usage = "Number of loop unwindings. Default: -1 means use havoc instead of unwindings")
	private int unwindings = -1; //-1 means no unwindings
	
	public int getUnwindings() {
		return unwindings;
	}

	@Option(name = "-loopmode", usage = "Method for abstracting loops.\n \t0: (default) use havoc instead of unwindings.\n"
			+ "\t1: use havoc and unwind the last iteration (experimental)")
	private int loopmode = 1; //-1 means no unwindings
	
	public int getLoopMode() {
		return loopmode;
	}
	
	public void setLoopMode(int lm) {
		loopmode=lm;
	}
	
	
	@Option(name = "-checker", usage = "Which check should be used:\n\t0\t: Gradual Verification\n\t1\t: Infeasible Code Detection")
	private int checker = 0; 	
	public int getChecker() {
		return checker;
	}
	public void setChecker(int ch) {
		checker = ch;
	}
	
	
	@Option(name = "-debug", usage = "Print Debug output and files")
	private boolean debugMode = false;	
	public boolean getDebugMode() {
		return debugMode;
	}
	
	
	/**
	 * Option object
	 */
	private static Options options;

	/**
	 * Singleton method
	 * 
	 * @return Options
	 */
	public static Options v() {
		if (null == options) {
			options = new Options();
		}
		return options;
	}

	public static void resetInstance() {
		options = null;		
	}
	
	
	/**
	 * C-tor
	 */
	private Options() {
		// do nothing
	}

}
