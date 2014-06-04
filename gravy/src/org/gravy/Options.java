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

import org.kohsuke.args4j.Option;

/**
 * Options
 * 
 * @author arlt, schaef
 */
public class Options {
	
	/**
	 * Boogie input file
	 */
	@Option(name = "-b", usage = "Boogie File", required = true)
	private String boogieFile;
	
	public String getBoogieFile() {
		return boogieFile;
	}
	
	@Option(name = "-t", usage = "Timeout per prover query", required = false)
	private int timeOut;
	
	public int getTimeOut() {
		return timeOut;
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

	/**
	 * C-tor
	 */
	private Options() {
		// do nothing
	}

}
