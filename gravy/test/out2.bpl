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
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique InfeasibleCode01 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, unique java.lang.CharSequence, unique java.lang.Appendable complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.AbstractStringBuilder, unique java.io.Serializable, unique java.lang.CharSequence complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, unique java.io.Serializable, unique java.lang.CharSequence, unique java.lang.Comparable complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, unique java.io.Closeable, unique java.io.Flushable complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.FilterOutputStream, unique java.io.Closeable, unique java.lang.Appendable complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap[$obj,$type] == obj_type;        ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;    requires $heap[$obj,$alloc] == false;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $other != $null;    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $heap[$other,$alloc] == true;

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

implementation boolean$InfeasibleCode01$foo$1889($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var temp$58 : ref;    
var this1 : ref;    
var temp$14 : ref;    
var temp$811 : int;    
var temp$25 : int;    
var temp$69 : int;    
var other2 : ref;    
var temp$710 : int;    
var temp$36 : ref;    
var temp$03 : ref;    
var temp$47 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: InfeasibleCode01;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",10,2,24,2 } true;
    this1 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",10,14,10,35 } true;
    other2 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",11,7,11,11 } true;
    temp$03 := $heap[this1,InfeasibleCode01$InfeasibleCode01$bases234];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",11,7,11,11 } true;
    if (temp$03 == $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",11,7,11,11 } { :comment "thenblock" } true;
        goto block1;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",11,7,11,11 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",11,7,11,11 } true;
    goto block2;
  block1:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",11,7,11,11 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } other2 != $null;
    temp$14 := $heap[other2,InfeasibleCode01$InfeasibleCode01$bases234];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } true;
    if (temp$14 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } { :comment "thenblock" } true;
        goto block3;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } true;
    goto block4;
  block3:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",12,8,12,26 } true;
    temp$25 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",13,5,13,17 } true;
    $return := temp$25;
    return;
  block4:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",13,5,13,17 } true;
  block2:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",13,5,13,17 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    temp$36 := $heap[this1,InfeasibleCode01$InfeasibleCode01$bases234];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } temp$36 != $null;
    call temp$47, $exception := int$java.lang.Object$hashCode$41(temp$36);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } other2 != $null;
    temp$58 := $heap[other2,InfeasibleCode01$InfeasibleCode01$bases234];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } temp$58 != $null;
    call temp$69, $exception := int$java.lang.Object$hashCode$41(temp$58);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    if (temp$47 != temp$69) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    goto block6;
  block5:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",16,7,16,11 } true;
    temp$710 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",17,4,17,16 } true;
    $return := temp$710;
    return;
  block6:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",17,4,17,16 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",17,4,17,16 } true;
    temp$811 := 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",23,3,23,14 } true;
    $return := temp$811;
    return;
}

