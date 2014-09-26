type ref;
type javaType;
type Field $GenericType__0;
type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;
type boolArrHeap_type = [ref][int]bool;
type refArrHeap_type = [ref][int]ref;
type realArrHeap_type = [ref][int]int;
type intArrHeap_type = [ref][int]int;
const unique $type : Field javaType;
const unique $alloc : Field bool;
const unique $null : ref;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique InfeasibleCode01 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Appendable, unique java.lang.CharSequence, unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.AbstractStringBuilder, unique java.lang.CharSequence, unique java.io.Serializable complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Comparable, unique java.lang.CharSequence, unique java.io.Serializable, unique java.lang.Object complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.io.Flushable, unique java.io.Closeable, unique java.lang.Object complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "a.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.FilterOutputStream, unique java.lang.Appendable, unique java.io.Closeable complete;
const unique $StringConst1 : ref extends  complete;
var $heap : $heap_type;
var $intArrayType : javaType;
var $charArrayType : javaType;
var $boolArrayType : javaType;
var $byteArrayType : javaType;
var $longArrayType : javaType;
var $arrSizeHeap : [ref]int;
var $stringSizeHeap : [ref]int;
var $boolArrHeap : boolArrHeap_type;
var $refArrHeap : refArrHeap_type;
var $realArrHeap : realArrHeap_type;
var $intArrHeap : intArrHeap_type;
var InfeasibleCode01$InfeasibleCode01$bases234 : Field ref;
var java.io.PrintStream$java.lang.System$err237 : ref;
function $arrayType(t:javaType) returns ($ret:javaType);
function $intToReal(x:int) returns ($ret:real);
function $intToBool(x:int) returns ($ret:bool) { (if x == 0 then false else true) }
function $refToBool(x:ref) returns ($ret:bool) { (if x == $null then false else true) }
function $boolToInt(x:bool) returns ($ret:int) { (if x == true then 1 else 0) }
function $cmpBool(x:bool, y:bool) returns ($ret:int);
function $cmpRef(x:ref, y:ref) returns ($ret:int);
function $cmpReal(x:real, y:real) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $cmpInt(x:int, y:int) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $bitOr(x:int, y:int) returns ($ret:int);
function $bitAnd(x:int, y:int) returns ($ret:int);
function $xorInt(x:int, y:int) returns ($ret:int);
function $shlInt(x:int, y:int) returns ($ret:int);
function $ushrInt(x:int, y:int) returns ($ret:int);
function $shrInt(x:int, y:int) returns ($ret:int);
axiom (forall t : javaType :: $heap[$null,$type] <: t);
procedure $new(obj_type:javaType) returns ($obj:ref);        ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;    requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$type] == obj_type;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;    ensures $other != $null;        ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure boolean$InfeasibleCode01$foo$1889($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$java.lang.Object$hashCode$41($this:ref) returns ($return:int, $exception:ref);    

procedure int$InfeasibleCode01$infeasible0$1890($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $intArrHeap;

procedure int$InfeasibleCode01$infeasible1$1891($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$701($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode01$infeasible2$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $intArrHeap;

procedure void$InfeasibleCode01$infeasible3$1893($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure boolean$InfeasibleCode01$infeasible4$1894($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$infeasible5$1895($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure int$InfeasibleCode01$infeasible6$1896($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$infeasible07$1897($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode01$$la$init$ra$$1898($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    


implementation void$InfeasibleCode01$infeasible07$1897($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$777 : int;    
var temp$676 : int;    
var end68 : int;    
var temp$070 : int;    
var temp$878 : int;    
var temp$474 : int;    
var temp66 : ref;    
var j69 : int;    
var temp$171 : int;    
var temp$373 : int;    
var this65 : ref;    
var temp$272 : ref;    
var repos67 : int;    
var temp$575 : int;
    assume { :sourceloc "a.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "a.java",73,2,86,2 } true;
    this65 := $this;
    assert { :sourceloc "a.java",73,27,73,37 } true;
    temp66 := $in_parameter__0;
    assert { :sourceloc "a.java",74,3,74,17 } true;
    repos67 := -1;
    assert { :sourceloc "a.java",75,3,75,15 } true;
    end68 := -1;
    assert { :sourceloc "a.java",76,3,76,14 } true;
    j69 := end68;
  block19:
    assert { :sourceloc "a.java",78,4,78,7 } true;
    temp$070 := j69;
    assert { :sourceloc "a.java",78,4,78,4 } true;
    temp$171 := temp$070 + 1;
    assert { :sourceloc "a.java",78,4,78,4 } true;
    j69 := temp$171;
    assert { :sourceloc "a.java",79,8,79,19 } true;
    temp$272 := temp66;
    assert { :sourceloc "a.java",79,8,79,19 } true;
    temp$373 := j69;
    assert { :sourceloc "a.java",79,8,79,19 } true;
    assert { :sourceloc "a.java",79,8,79,19 } temp$373 < $arrSizeHeap[temp$272] && temp$373 >= 0;
    temp$474 := $intArrHeap[temp$272][temp$373];
    assert { :sourceloc "a.java",79,8,79,19 } true;
    temp$575 := temp$474;
    assert { :sourceloc "a.java",79,8,79,19 } true;
    if (temp$575 == 97) {
        assert { :sourceloc "a.java",79,8,79,19 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "a.java",80,5,80,24 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a.java",79,8,79,19 } true;
    goto block21;
  block20:
    assert { :sourceloc "a.java",80,5,80,24 } true;
    temp$676 := j69 - end68;
    assert { :sourceloc "a.java",80,5,80,24 } true;
    temp$777 := temp$676 - 1;
    assert { :sourceloc "a.java",80,5,80,9 } true;
    repos67 := temp$777;
  block21:
    assert { :sourceloc "a.java",82,12,82,22 } true;
    if (repos67 == -1) {
        assert { :sourceloc "a.java",82,12,82,22 } { :clone } { :comment "thenblock" } true;
        goto block22;
    } else {
        assert { :sourceloc "a.java",82,27,82,41 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a.java",82,12,82,22 } true;
    goto block23;
  block22:
    assert { :sourceloc "a.java",82,27,82,41 } true;
    assert { :sourceloc "a.java",82,27,82,41 } temp66 != $null;
    temp$878 := $arrSizeHeap[temp66];
    assert { :sourceloc "a.java",82,27,82,41 } true;
    if (j69 < temp$878) {
        assert { :sourceloc "a.java",82,27,82,41 } { :comment "thenblock" } true;
        goto block19;
    } else {
        assert { :sourceloc "a.java",78,4,78,7 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a.java",82,27,82,41 } true;
    goto block23;
  block23:
    assert { :sourceloc "a.java",83,7,83,17 } true;
    if (repos67 == -1) {
        assert { :sourceloc "a.java",83,7,83,17 } { :clone } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "a.java",84,4,84,8 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a.java",83,7,83,17 } true;
    goto block24;
  block24:
    assert { :sourceloc "a.java",84,4,84,8 } true;
    return;
}

