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

import ap._
import ap.parser._
import Util._

object Main extends App {
  ap.util.Debug.enableAllAssertions(true)
  val p = SimpleAPI.spawnWithAssertions
  
  import IExpression._
  import SimpleAPI.ProverStatus
  import p._

  val blockFlags@Seq(entry, a, b, c, d, e, exit) = createBooleanVariables(7)
  val ineffFlags = createBooleanVariables(blockFlags.size)

  val cfg =
    DagNode(entry, List(1, 5),
    DagNode(a, List(1, 2),
    DagNode(b, List(2),
    DagNode(c, List(1),
    DagNode(d, List(2),
    DagNode(e, List(1),
    DagNode(exit, List(),
    DagEmpty
    )))))))

  cfg.prettyPrint

  !! (entry)
  !! (entry ==> (a | e))
  !! (a ==> (b | c))
  !! (b ==> d)
  !! (c ==> d)
  !! (d ==> exit)
  !! (e ==> exit)

  var remainingBlocks = blockFlags zip ineffFlags
  var coveredBlocks = Set[IFormula]()

  for (k <- List(8, 4, 2, 1)) scope {
    println("k = " + k)

    val (remBlocks, remIneffFlags) = remainingBlocks.unzip
    setupTheoryPlugin(CFGPlugin(cfg, remBlocks, remIneffFlags, k))
    
    while (??? == ProverStatus.Sat) {
      println(???)

      for (p <- blockFlags)
        print("" + eval(p) + "\t")
      println

      val ineffClause =
        and(for ((p, f) <- remainingBlocks.iterator;
                 if (!(coveredBlocks contains p) && eval(p))) yield {
              coveredBlocks = coveredBlocks + p
              f
            })

      println(coveredBlocks)

      !! (ineffClause)
    }

    println(???)

    remainingBlocks = for ((p, f) <- remainingBlocks;
                           if (!(coveredBlocks contains p))) yield (p, f)
  }

  shutDown
}