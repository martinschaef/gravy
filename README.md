##Gravy
=====
###Discontinued and now integrated in [Bixie](https://github.com/martinschaef/bixie)!

GraVy is a static checker for Boogie programs. Similar to a deductive verifier, such as [Boogie](http://boogie.codeplex.com/), it checks a boogie program one procedure at a time. The difference is that, instead of checking if there exists an execution of the procedure that may violate the postcondition, GraVy collects all (feasible) paths that have normal terminating executions. In a second path, GraVy collects all paths that are only feasible if the postcondition is ignored. Every statement that is not covered by any of these paths is infeasible. 


GraVy support two modes of checking Boogie files:
- **[Inconsistent code detection](http://iist.unu.edu/sites/iist.unu.edu/files/biblio/cav12.pdf)**. Inconsistent code detection checks for the existence of statements, that are either not forward or not backward reachable on any feasible path. To run the inconsistent code detection on Java, use our new [Bixie](www.csl.sri.com/projects/bixie/) tool.

- **[Gradual verification](http://www.csl.sri.com/users/schaef/nfm14.pdf)**. In gradual verification, every assertion of the form *assert(e)* is turned into a conditional choice *if(!e){$AssertionFailure=true;return;}*. This way, GraVy can be used to check if an assertion never fails (the assignment *$AssertionFailure=true* does not occur on any feasible path), if it may fail (both branches of the conditional are reachable), if it must fail, or if it is unreachable.  

**more details will follow soon**

####Requirements
- Java >= 7

####Usage:
For a quick start, download the all-in-one [jar file](https://github.com/martinschaef/gravy/blob/master/gravy/dist/gravy.jar). For gradual verification of a Boogie file call:
    java -jar gravy.jar [myFile.bpl]
    
for inconsistent code detection call: 

    java -jar gravy.jar [myFile.bpl] -checker 1 -loopmode 1

or for an experimental but faster checker use:

    java -jar gravy.jar [myFile.bpl] -checker 5 -loopmode 1
    
It makes sense to provide GraVy with a lot of memory when checking real programs. We use:

    java -Xmx2g -Xms2g -Xss4m -jar gravy.jar -checker 1 [myFile.bpl]
    
**For our old googlecode website which has much more information check [here](https://code.google.com/p/jimple2boogie/) and [here](https://code.google.com/p/joogie/)**    
    
