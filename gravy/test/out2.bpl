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


implementation int$InfeasibleCode01$infeasible0$1890($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var temp$015 : ref;    
var temp$419 : int;    
var arr13 : ref;    
var temp$217 : int;    
var temp$116 : int;    
var i14 : int;    
var this12 : ref;    
var temp$520 : int;    
var temp$318 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",27,2,31,2 } true;
    this12 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",27,25,27,33 } true;
    arr13 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",28,3,28,21 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",28,3,28,21 } arr13 != $null;
    i14 := $arrSizeHeap[arr13];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,3,29,11 } true;
    temp$015 := arr13;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,3,29,11 } true;
    temp$116 := 3;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,6,29,8 } true;
    temp$217 := 3;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,6,29,8 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,6,29,8 } temp$116 < $arrSizeHeap[temp$015] && temp$116 >= 0;
    $intArrHeap := $intArrHeap[temp$015 := $intArrHeap[temp$015][temp$116 := temp$217]];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,6,29,8 } true;
    temp$318 := arr13;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,6,29,8 } true;
    temp$419 := i14;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,6,29,8 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",29,6,29,8 } temp$419 < $arrSizeHeap[temp$318] && temp$419 >= 0;
    temp$520 := $intArrHeap[temp$318][temp$419];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",30,3,30,16 } true;
    $return := temp$520;
    return;
}


implementation int$InfeasibleCode01$infeasible1$1891($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var this21 : ref;    
var temp$528 : int;    
var temp$124 : ref;    
var $fakelocal_0 : ref;    
var temp$023 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_1 : ref;    
var temp$225 : ref;    
var temp$326 : ref;    
var temp$427 : ref;    
var o22 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",33,2,39,2 } true;
    this21 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",33,25,33,32 } true;
    o22 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",34,7,34,13 } true;
    if (o22 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",34,7,34,13 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",34,7,34,13 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",34,7,34,13 } true;
    goto block8;
  block7:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",34,7,34,13 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",34,7,34,13 } true;
    call temp$023, $exception := int$java.lang.Object$hashCode$41(o22);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",35,4,35,23 } true;
    $return := temp$023;
    return;
  block8:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",35,4,35,23 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,3,37,55 } true;
    temp$124 := java.io.PrintStream$java.lang.System$err237;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,3,37,55 } true;
    call $fakelocal_0 := $new(java.lang.StringBuffer);
    temp$225 := $fakelocal_0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } true;
    call $exception := void$java.lang.StringBuffer$$la$init$ra$$685(temp$225);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } o22 != $null;
    call temp$326, $exception := java.lang.String$java.lang.Object$toString$44(o22);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } true;
    call $fakelocal_1, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$225, temp$326);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } true;
    call $fakelocal_2, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$225, $StringConst0);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } true;
    call temp$427, $exception := java.lang.String$java.lang.StringBuffer$toString$738(temp$225);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } temp$124 != $null;
    call $exception := void$java.io.PrintStream$println$217(temp$124, temp$427);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",37,22,37,53 } true;
    temp$528 := 2;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",38,3,38,11 } true;
    $return := temp$528;
    return;
}


implementation void$InfeasibleCode01$infeasible2$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$335 : int;    
var this29 : ref;    
var temp$436 : int;    
var temp$032 : int;    
var temp$133 : ref;    
var temp$234 : int;    
var i31 : int;    
var arr30 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",41,2,45,2 } true;
    this29 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",41,26,41,35 } true;
    arr30 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,8,42,14 } true;
    i31 := 0;
  block9:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,8,42,14 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,17,42,29 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,17,42,29 } arr30 != $null;
    temp$032 := $arrSizeHeap[arr30];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,17,42,29 } true;
    if (i31 <= temp$032) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,17,42,29 } { :comment "thenblock" } true;
        goto block10;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,17,42,29 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,17,42,29 } true;
    goto block11;
  block10:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,17,42,29 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",43,4,43,12 } true;
    temp$133 := arr30;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",43,4,43,12 } true;
    temp$234 := i31;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",43,7,43,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",43,7,43,9 } temp$234 < $arrSizeHeap[temp$133] && temp$234 >= 0;
    $intArrHeap := $intArrHeap[temp$133 := $intArrHeap[temp$133][temp$234 := i31]];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",43,7,43,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,31,42,33 } true;
    temp$335 := i31;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,31,42,31 } true;
    temp$436 := temp$335 + 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,31,42,31 } true;
    i31 := temp$436;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,3,44,3 } true;
    goto block9;
  block11:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,3,44,3 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",42,3,44,3 } true;
    return;
}


implementation void$InfeasibleCode01$infeasible3$1893($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref){
    
var temp$141 : int;    
var a38 : int;    
var temp$343 : int;    
var temp$040 : int;    
var b39 : int;    
var temp$545 : int;    
var temp$444 : int;    
var temp$242 : int;    
var this37 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",47,2,52,2 } true;
    this37 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",47,26,47,30 } true;
    a38 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",47,33,47,37 } true;
    b39 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",48,3,48,3 } true;
    temp$040 := 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",48,3,48,3 } true;
    b39 := temp$040;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,7,49,9 } true;
    if (a38 > 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,7,49,9 } { :comment "thenblock" } true;
        goto block12;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,7,49,9 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,7,49,9 } true;
    goto block13;
  block12:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,7,49,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,12,49,15 } true;
    temp$141 := b39;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,12,49,12 } true;
    temp$242 := temp$141 + -1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,12,49,12 } true;
    b39 := temp$242;
  block13:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",49,12,49,12 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",50,3,50,8 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",50,3,50,8 } b39 != 0;
    temp$343 := 1 div b39;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",50,3,50,3 } true;
    b39 := temp$343;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,7,51,10 } true;
    if (a38 <= 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,7,51,10 } { :comment "thenblock" } true;
        goto block14;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,7,51,10 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,7,51,10 } true;
    goto block15;
  block14:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,7,51,10 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,13,51,22 } true;
    temp$444 := 1 - b39;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,13,51,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,13,51,22 } temp$444 != 0;
    temp$545 := 1 div temp$444;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,13,51,13 } true;
    b39 := temp$545;
  block15:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,13,51,13 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",51,13,51,13 } true;
    return;
}


implementation boolean$InfeasibleCode01$infeasible4$1894($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var o47 : ref;    
var temp$048 : ref;    
var temp$351 : int;    
var temp$250 : int;    
var this46 : ref;    
var temp$149 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",54,2,60,2 } true;
    this46 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",54,29,54,36 } true;
    o47 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",55,3,55,35 } true;
    temp$048 := java.io.PrintStream$java.lang.System$err237;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",55,3,55,35 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",55,3,55,35 } o47 != $null;
    call temp$149, $exception := java.lang.String$java.lang.Object$toString$44(o47);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",55,3,55,35 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",55,3,55,35 } temp$048 != $null;
    call $exception := void$java.io.PrintStream$println$217(temp$048, temp$149);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",56,7,56,13 } true;
    if (o47 == $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",56,7,56,13 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",56,7,56,13 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",56,7,56,13 } true;
    goto block17;
  block16:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",56,7,56,13 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",56,7,56,13 } true;
    temp$250 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",57,4,57,16 } true;
    $return := temp$250;
    return;
  block17:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",57,4,57,16 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",57,4,57,16 } true;
    temp$351 := 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",59,3,59,14 } true;
    $return := temp$351;
    return;
}


implementation void$InfeasibleCode01$infeasible5$1895($this:ref) returns ($exception:ref){
    
var temp$054 : int;    
var test53 : ref;    
var $fakelocal_0 : ref;    
var temp$155 : ref;    
var this52 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",62,2,67,2 } true;
    this52 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",63,3,63,25 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 8];
    test53 := $fakelocal_0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",64,7,64,22 } true;
    temp$054 := $stringSizeHeap[test53];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",64,7,64,22 } true;
    if (temp$054 == 3) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",64,7,64,22 } { :comment "thenblock" } true;
        goto block18;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",64,7,64,22 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",64,7,64,22 } true;
    goto block19;
  block18:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",64,7,64,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",65,4,65,37 } true;
    temp$155 := java.io.PrintStream$java.lang.System$err237;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",65,4,65,37 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",65,4,65,37 } temp$155 != $null;
    call $exception := void$java.io.PrintStream$println$217(temp$155, $StringConst1);
  block19:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",65,4,65,37 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",65,4,65,37 } true;
    return;
}


implementation int$InfeasibleCode01$infeasible6$1896($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var temp$664 : int;    
var temp$159 : int;    
var this56 : ref;    
var temp$462 : int;    
var temp$361 : ref;    
var arr57 : ref;    
var temp$563 : int;    
var temp$058 : ref;    
var temp$260 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,2,71,2 } true;
    this56 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    arr57 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    temp$058 := arr57;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    temp$159 := -1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } temp$159 < $arrSizeHeap[temp$058] && temp$159 >= 0;
    temp$260 := $intArrHeap[temp$058][temp$159];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    temp$361 := arr57;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } arr57 != $null;
    temp$462 := $arrSizeHeap[arr57];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } temp$462 < $arrSizeHeap[temp$361] && temp$462 >= 0;
    temp$563 := $intArrHeap[temp$361][temp$462];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",69,25,69,33 } true;
    temp$664 := temp$260 + temp$563;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",70,3,70,35 } true;
    $return := temp$664;
    return;
}


implementation void$InfeasibleCode01$infeasible07$1897($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var end68 : int;    
var temp$777 : int;    
var temp$070 : int;    
var temp$676 : int;    
var this65 : ref;    
var repos67 : int;    
var temp66 : ref;    
var temp$272 : ref;    
var temp$575 : int;    
var temp$171 : int;    
var j69 : int;    
var temp$373 : int;    
var temp$474 : int;    
var temp$979 : int;    
var temp$878 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",73,2,86,2 } true;
    this65 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",73,27,73,37 } true;
    temp66 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",74,3,74,17 } true;
    repos67 := -1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",75,3,75,15 } true;
    end68 := -1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",76,3,76,14 } true;
    j69 := end68;
  block20:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",77,3,82,43 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",78,4,78,7 } true;
    temp$070 := j69;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",78,4,78,4 } true;
    temp$171 := temp$070 + 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",78,4,78,4 } true;
    j69 := temp$171;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } true;
    temp$272 := temp66;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } true;
    temp$373 := j69;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } temp$373 < $arrSizeHeap[temp$272] && temp$373 >= 0;
    temp$474 := $intArrHeap[temp$272][temp$373];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } true;
    temp$575 := temp$474;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } true;
    if (temp$575 == 97) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } { :comment "thenblock" } true;
        goto block21;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } true;
    goto block22;
  block21:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",79,8,79,19 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",80,5,80,24 } true;
    temp$676 := j69 - end68;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",80,5,80,24 } true;
    temp$777 := temp$676 - 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",80,5,80,9 } true;
    repos67 := temp$777;
  block22:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",80,5,80,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",80,5,80,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,12,82,22 } true;
    if (repos67 == -1) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,12,82,22 } { :clone } { :comment "thenblock" } true;
        goto block23;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,12,82,22 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,12,82,22 } true;
    goto block24;
  block23:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,12,82,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } temp66 != $null;
    temp$878 := $arrSizeHeap[temp66];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } true;
    if (j69 < temp$878) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } true;
    goto block24;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } true;
    goto block20;
  block24:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",82,27,82,41 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",83,7,83,17 } true;
    if (repos67 == -1) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",83,7,83,17 } { :clone } { :comment "thenblock" } true;
        goto block25;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",83,7,83,17 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",83,7,83,17 } true;
    goto block26;
  block25:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",83,7,83,17 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",84,4,84,8 } true;
    temp$979 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",84,4,84,8 } true;
    repos67 := temp$979;
  block26:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",84,4,84,8 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",84,4,84,8 } true;
    return;
}

