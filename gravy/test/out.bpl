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
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.CharSequence, unique java.lang.Object, unique java.lang.Appendable complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.io.Serializable, unique java.lang.CharSequence, unique java.lang.AbstractStringBuilder complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.io.Serializable, unique java.lang.CharSequence, unique java.lang.Object, unique java.lang.Comparable complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.io.Flushable, unique java.lang.Object, unique java.io.Closeable complete;
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
var int$InfeasibleCode01$beginEndTag0 : Field int;
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
procedure $new(obj_type:javaType) returns ($obj:ref);        requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$type] == obj_type;    ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;        ensures $heap[$other,$alloc] == true;

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

procedure void$InfeasibleCode01$infeasible08$1898($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    

procedure int$java.lang.String$indexOf$102($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$$la$init$ra$$1899($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    


implementation void$InfeasibleCode01$infeasible08$1898($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref){
    
var interncaret83 : int;    
var temphitpoint84 : int;    
var temp$592 : int;    
var this80 : ref;    
var temp$087 : int;    
var temp$491 : int;    
var searchString82 : ref;    
var temp$289 : int;    
var temp$895 : int;    
var temp$794 : int;    
var temp$390 : int;    
var hitUp86 : int;    
var temp$188 : int;    
var source81 : ref;    
var temp$693 : int;    
var flaghitup85 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",89,2,110,2 } true;
    this80 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",89,27,89,39 } true;
    source81 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",89,42,89,60 } true;
    searchString82 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",89,63,89,77 } true;
    interncaret83 := $in_parameter__2;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",90,3,90,24 } true;
    temphitpoint84 := -1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",91,3,91,28 } true;
    flaghitup85 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",92,3,92,16 } true;
    hitUp86 := 0;
  block27:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",93,3,103,21 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",95,4,95,12 } true;
    temp$087 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",95,4,95,12 } true;
    flaghitup85 := temp$087;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",96,4,96,60 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",96,4,96,60 } source81 != $null;
    call temp$188, $exception := int$java.lang.String$indexOf$102(source81, searchString82, interncaret83);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",96,4,96,15 } true;
    temphitpoint84 := temp$188;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,7,97,22 } true;
    if (temphitpoint84 > 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,7,97,22 } true;
        goto block28;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,7,97,22 } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,7,97,22 } true;
    goto block29;
  block28:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,7,97,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } this80 != $null;
    temp$289 := $heap[this80,int$InfeasibleCode01$beginEndTag0];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } true;
    if (temphitpoint84 < temp$289) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } true;
        goto block30;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } true;
    goto block29;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } true;
    goto block30;
  block30:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",97,42,97,52 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",99,5,99,12 } true;
    temp$390 := hitUp86;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",99,5,99,9 } true;
    temp$491 := temp$390 + 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",99,5,99,9 } true;
    hitUp86 := temp$491;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",100,5,100,13 } true;
    temp$592 := 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",100,5,100,13 } true;
    flaghitup85 := temp$592;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",101,5,101,55 } true;
    temp$693 := temphitpoint84;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",101,5,101,55 } true;
    temp$794 := $stringSizeHeap[searchString82];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",101,5,101,55 } true;
    temp$895 := temp$693 + temp$794;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",101,5,101,15 } true;
    interncaret83 := temp$895;
  block29:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",101,5,101,15 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",101,5,101,15 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",103,11,103,19 } true;
    if (flaghitup85 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",103,11,103,19 } true;
        goto block31;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",103,11,103,19 } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",103,11,103,19 } true;
    goto block27;
  block31:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",103,11,103,19 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",104,6,104,15 } true;
    if (hitUp86 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",104,6,104,15 } true;
        goto block32;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",104,6,104,15 } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",104,6,104,15 } true;
    goto block33;
  block32:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",104,6,104,15 } true;
  block33:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",104,6,104,15 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/true_positives/tp01/InfeasibleCode01.java",104,6,104,15 } true;
    return;
}


