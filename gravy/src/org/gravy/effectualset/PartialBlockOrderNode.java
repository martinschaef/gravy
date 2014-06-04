/*
 * Copyright (C) 2011 Martin Schaef and Stephan Arlt
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

package org.gravy.effectualset;

import java.util.HashSet;

import util.Log;
import boogie.controlflow.BasicBlock;

/**
 * @author schaef
 */
public class PartialBlockOrderNode {
	
	HashSet<BasicBlock> currentClass = new HashSet<BasicBlock>();		
	HashSet<BasicBlock> unavoidables = new HashSet<BasicBlock>();
	private int height = 0;
	
	public int getHeight() {
		return height;
	}

	PartialBlockOrderNode parent = null;
	public PartialBlockOrderNode getParent() {
		return parent;
	}

	HashSet<PartialBlockOrderNode> successors = new HashSet<PartialBlockOrderNode>();
	
	
	public HashSet<PartialBlockOrderNode> getSuccessors() {
		return successors;
	}

	public PartialBlockOrderNode() {
		
	}

	public PartialBlockOrderNode(BasicBlock b, HashSet<BasicBlock> unav, int height) {
		this(b,unav);
		this.height = height;
	}
	
	
	public PartialBlockOrderNode(BasicBlock b, HashSet<BasicBlock> unav) {
		this.unavoidables = unav;
		this.currentClass.add(b);
	}

	public void printLeafInfo() {
		if (this.successors.size()==0) {
			Log.info("LEAF: ");
			StringBuilder sb = new StringBuilder();
			sb.append("Blocks: ");
			for (BasicBlock b : this.currentClass) {
				sb.append(b.getLabel() + ", ");
			}
			Log.info(sb.toString());
			sb = new StringBuilder();
			sb.append("Unavoidables: ");
			for (BasicBlock b : this.unavoidables) {
				sb.append(b.getLabel() + ", ");
			}
			Log.info(sb.toString());
			Log.info("============= ");
		}
		for (PartialBlockOrderNode next : this.successors) {
			next.printLeafInfo();
		}
	}
	
	public HashSet<BasicBlock> getElements() {
		return this.currentClass;
	}
	
	public HashSet<BasicBlock> getLeafRepresentatives() {
		HashSet<BasicBlock> ret = new HashSet<BasicBlock>();
		if (this.successors.size()==0) {
			BasicBlock b = this.currentClass.iterator().next();
			ret.add(b);
		}
		for (PartialBlockOrderNode next : this.successors) {
			ret.addAll(next.getLeafRepresentatives());
		}
		return ret;
	}
	
	private boolean subset(HashSet<BasicBlock> a, HashSet<BasicBlock> b) {
	  return a.size() <= b.size() && b.containsAll(a);
	}
	
	public boolean insert(BasicBlock b, HashSet<BasicBlock> unav) {
	    if (subset(unavoidables, unav)) {
	      
	        if (subset(unav, unavoidables)) {
	            this.currentClass.add(b);
	            //return true, because we found a node that fits
	            return true;
	        } else {
	            //the unavoidables of the new node are a clear super-set of the current one
	            //so try it with all the children
	            for (PartialBlockOrderNode succ : this.successors) {
	                //if we can insert it in a child, we are done.
	                if (succ.insert(b, unav))  return true;
	            }
	            //if not, we have to check how many children
	            //will be children of the new node.
	            PartialBlockOrderNode newnode = new PartialBlockOrderNode(b,unav, this.height+1);
	            for (PartialBlockOrderNode succ : new HashSet<PartialBlockOrderNode>(this.successors)) {
	                if (subset(unav, succ.unavoidables)) {
	                    disconnectAfromB(this, succ);
	                    connectAtoB(newnode,succ);
	                    succ.increaseHeight();
	                }
	            }           
	            connectAtoB(this, newnode);
	            return true;
	        }
	        
	    }
	    
	    return false;
	}
	
	public void increaseHeight() {
		this.height++;
		for (PartialBlockOrderNode succ : this.successors) {
			succ.increaseHeight();
		}
	}
	
	private void connectAtoB(PartialBlockOrderNode a, PartialBlockOrderNode b) {
		b.parent = a;
		a.successors.add(b);
	}

	private void disconnectAfromB(PartialBlockOrderNode a, PartialBlockOrderNode b) {
		b.parent = null;
		a.successors.remove(b);
	}
		
}
