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
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique FalsePositives08 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, unique java.io.Serializable complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Comparable, unique java.lang.CharSequence, unique java.lang.Object, unique java.io.Serializable complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
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
var java.lang.Object$FalsePositives08$constraintsLock234 : Field ref;
var java.lang.String$lp$$rp$$FalsePositives08$constraints235 : Field ref;
var java.lang.String$FalsePositives08$constraint236 : Field ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;    ensures $heap[$obj,$type] == obj_type;    requires $heap[$obj,$alloc] == false;    

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure void$FalsePositives08$fp01$1889($this:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap;

procedure void$FalsePositives08$$la$init$ra$$1890($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation void$FalsePositives08$fp01$1889($this:ref) returns ($exception:ref){
    
var temp$1216 : int;    
var i7 : int;    
var temp$610 : ref;    
var $fakelocal_0 : ref;    
var this1 : ref;    
var temp$812 : ref;    
var temp$36 : int;    
var temp$1014 : ref;    
var temp$25 : int;    
var temp$1620 : ref;    
var temp$1418 : ref;    
var temp$1317 : ref;    
var temp$48 : ref;    
var temp$711 : int;    
var temp$59 : int;    
var temp$14 : ref;    
var temp$1721 : ref;    
var temp$913 : int;    
var results3 : ref;    
var temp$1115 : int;    
var temp$02 : ref;    
var temp$1519 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",8,2,19,2 } true;
    this1 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,23,10,37 } true;
    temp$02 := $heap[this1,java.lang.Object$FalsePositives08$constraintsLock234];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,23,10,37 } true;
    havoc temp$02, this1, $exception, $heap;
  block1:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,23,10,37 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",12,28,12,38 } true;
    temp$14 := $heap[this1,java.lang.String$lp$$rp$$FalsePositives08$constraints235];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",12,28,12,38 } true;
    if (temp$14 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",12,28,12,38 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block2;
    }
    temp$25 := $arrSizeHeap[temp$14];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",12,28,12,38 } true;
    temp$36 := temp$25 + 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",12,28,12,38 } true;
    call $fakelocal_0 := $new($arrayType(java.lang.String));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := temp$36];
    results3 := $fakelocal_0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,18,13,26 } true;
    i7 := 0;
  block3:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,18,13,26 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,33,13,43 } true;
    temp$48 := $heap[this1,java.lang.String$lp$$rp$$FalsePositives08$constraints235];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,33,13,43 } true;
    if (temp$48 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,33,13,43 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block2;
    }
    temp$59 := $arrSizeHeap[temp$48];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,33,13,43 } true;
    if (i7 < temp$59) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,33,13,43 } true;
        goto block4;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,33,13,43 } true;
    goto block5;
  block4:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,33,13,43 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,17,14,44 } true;
    temp$610 := results3;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,17,14,44 } true;
    temp$711 := i7;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,30,14,40 } true;
    temp$812 := $heap[this1,java.lang.String$lp$$rp$$FalsePositives08$constraints235];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,30,14,40 } true;
    temp$913 := i7;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,30,14,40 } true;
    if (temp$913 < $arrSizeHeap[temp$812] && temp$913 >= 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,30,14,40 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block2;
    }
    temp$1014 := $refArrHeap[temp$812][temp$913];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,24,14,26 } true;
    if (temp$711 < $arrSizeHeap[temp$610] && temp$711 >= 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,24,14,26 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block2;
    }
    $refArrHeap := $refArrHeap[temp$610 := $refArrHeap[temp$610][temp$711 := temp$1014]];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",14,24,14,26 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,53,13,55 } true;
    temp$1115 := i7;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,53,13,53 } true;
    temp$1216 := temp$1115 + 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,53,13,53 } true;
    i7 := temp$1216;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,13,14,44 } true;
    goto block3;
  block5:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",13,13,14,44 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",15,4,15,44 } true;
    temp$1317 := results3;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",15,12,15,22 } true;
    temp$1418 := $heap[this1,java.lang.String$lp$$rp$$FalsePositives08$constraints235];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",15,12,15,22 } true;
    if (temp$1418 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",15,12,15,22 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block2;
    }
    temp$1519 := $arrSizeHeap[temp$1418];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",15,34,15,43 } true;
    temp$1620 := $heap[this1,java.lang.String$FalsePositives08$constraint236];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",15,11,15,30 } true;
    if (temp$1519 < $arrSizeHeap[temp$1317] && temp$1519 >= 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",15,11,15,30 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block2;
    }
    $refArrHeap := $refArrHeap[temp$1317 := $refArrHeap[temp$1317][temp$1519 := temp$1620]];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",16,13,16,23 } true;
    $heap := $heap[this1,java.lang.String$lp$$rp$$FalsePositives08$constraints235 := results3];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    goto block6;
  block2:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    temp$1721 := $exception;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    $exception := temp$1721;
    goto block2;
  block6:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",10,9,17,9 } true;
    return;
}


implementation void$FalsePositives08$$la$init$ra$$1890($this:ref) returns ($exception:ref){
    
var this22 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",3,-1,-1,-1 } true;
    this22 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",3,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this22);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp08/FalsePositives08.java",3,-1,-1,-1 } true;
    return;
}


