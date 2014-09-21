/*
 * Joogie, CFG-Plugin
 *
 * Copyright (C) 2013 Philipp Ruemmer
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

package org.joogie.cfgPlugin

import scala.collection.mutable.{HashMap => MHashMap}

object Util {

  def toStream[A](f : Int => A) : Stream[A] =
    toStreamHelp(0, f)
  
  private def toStreamHelp[A](n : Int, f : Int => A) : Stream[A] =
    f(n) #:: toStreamHelp(n + 1, f)
  
  //////////////////////////////////////////////////////////////////////////////

  abstract sealed class Dag[+D] {
    def isEmpty : Boolean
    val size : Int

    def map[E](f : D => E) : Dag[E]
    def foreach[U](f : D => U) : Unit

    def reverseMap[E](f : (DagNode[D], Dag[E]) => Dag[E]) : Dag[E]
    
//    def toTree[B >: D] : Tree[B]
    def drop(n : Int) : Dag[D]
    def apply(n : Int) : D

    def updated[B >: D](updates : Map[Int, (B, List[Int])]) : Dag[B] =
      updatedHelp(0, updates)
    protected[Util]
      def updatedHelp[B >: D](depth : Int,
                              updates : Map[Int, (B, List[Int])]) : Dag[B]

    def head = apply(0)
    def tail = drop(1)

    def subdagIterator = new Iterator[DagNode[D]] {
      private var rem = Dag.this
      def hasNext = DagEmpty != rem
      def next = {
        val res = rem.asInstanceOf[DagNode[D]]
        rem = res.next
        res
      }
    }

    def iterator : Iterator[D] =
      for (DagNode(d, _, _) <- subdagIterator) yield d

    def incoming(n : Int) : Seq[(Int, Int)] = incomingIterator(n).toList
    def incomingIterator(n : Int) : Iterator[(Int, Int)] =
      for ((DagNode(_, children, _), i) <- subdagIterator.zipWithIndex;
           (c, ci) <- children.iterator.zipWithIndex;
           if (i + c == n)) yield (i, ci)

    def pathFromRoot(n : Int) : Seq[(Int, Int)] = {
      var res = List[(Int, Int)]()
      var k = n
      while (k > 0) {
        val p@(nextk, _) = incomingIterator(k).next
        res = p :: res
        k = nextk
      }
      res
    }

    def elimUnconnectedNodes : Dag[D] = elimUnconnectedNodesHelp(0, Set(0))._1

    protected[Util]
      def elimUnconnectedNodesHelp(depth : Int, refs : Set[Int])
                                  : (Dag[D], List[Boolean])

    def prettyPrint : Unit =
      for ((DagNode(d, children, _), i) <- subdagIterator.zipWithIndex)
        println("" + i + ": " + d + " -> " +
                (for (ind <- children) yield (i + ind)).mkString(", "))

    def dotPrint(reverse : Boolean) : Unit = {
      println("digraph dag {")
      for ((DagNode(d, children, _), i) <- subdagIterator.zipWithIndex) {
        println("" + i + "[label=\"" + d + "\"];")
        for (c <- children)
          if (reverse)
            println("" + (i + c) + "->" + i + ";")
          else
            println("" + i + "->" + (i + c) + ";")
      }
      println("}")
    }
  }

  case class DagNode[+D](d : D, children : List[Int],
                         next : Dag[D]) extends Dag[D] {
    def isEmpty = false
    val size : Int = next.size + 1
    def map[E](f : D => E) : Dag[E] = {
      val newD = f(d)
      DagNode(newD, children, next map f)
    }

    def foreach[U](f : D => U) : Unit = {
      f(d)
      next foreach f
    }
    
    def reverseMap[E](f : (DagNode[D], Dag[E]) => Dag[E]) : Dag[E] =
      f(this, next reverseMap f)
      
    def drop(n : Int) : Dag[D] =
      if (n == 0) this else (next drop (n-1))

    protected[Util]
       def elimUnconnectedNodesHelp(depth : Int, refs : Set[Int])
                                   : (Dag[D], List[Boolean]) =
      if (refs contains depth) {
        // this node has to be kept
        val (newNext, shifts) =
          next.elimUnconnectedNodesHelp(depth + 1,
                                        refs ++ (for (c <- children.iterator)
                                                 yield (depth + c)))
        (DagNode(d,
                 for (c <- children)
                 yield (1 + shifts.iterator.take(c-1).count(x => !x)),
                 newNext),
         false :: shifts)
      } else {
        // drop this node
        val (newNext, shifts) = next.elimUnconnectedNodesHelp(depth + 1, refs)
        (newNext, true :: shifts)
      }

    def apply(n : Int) : D =
      if (n == 0) d else next(n-1)
//    def toTree[B >: D] : Tree[B] =
//      Tree(d, for (i <- children) yield drop(i).toTree[B])

    protected[Util]
      def updatedHelp[B >: D](
                 depth : Int,
                 updates : Map[Int, (B, List[Int])]) : Dag[B] = {
      val newNext = next.updatedHelp(depth + 1, updates)
      (updates get depth) match {
        case None =>
          if (newNext eq next) this else DagNode(d, children, newNext)
        case Some((newD, newChildren)) =>
          DagNode(newD, newChildren, newNext)
      }
    }
  }

  case object DagEmpty extends Dag[Nothing] {
    def isEmpty = true
    val size : Int = 0
    def map[E](f : Nothing => E) : Dag[E] = this
    def foreach[U](f : Nothing => U) : Unit = {}
    def reverseMap[E](f : (DagNode[Nothing], Dag[E]) => Dag[E]) : Dag[E] = DagEmpty
    def drop(n : Int) : Dag[Nothing] = {
      if (n != 0)
        throw new IllegalArgumentException
      this
    }
    protected[Util]
      def elimUnconnectedNodesHelp(depth : Int, refs : Set[Int])
                                  : (Dag[Nothing], List[Boolean]) = (this, List())
    def apply(n : Int) : Nothing =
      throw new UnsupportedOperationException
//    def toTree[B >: Nothing] : Tree[B] =
//      throw new UnsupportedOperationException
    protected[Util]
      def updatedHelp[B >: Nothing](
               depth : Int,
               updates : Map[Int, (B, List[Int])]) : Dag[B] = this
  }
  
}