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
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique CornerCases01 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.lang.Iterable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.util.Collection : javaType extends  unique java.lang.Iterable, unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } unique java.util.List : javaType extends  unique java.lang.Object, unique java.util.Collection complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap[$obj,$alloc] == true;    requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$type] == obj_type;        ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $heap[$other,$type] == $heap[$this,$type];    ensures $heap[$other,$alloc] == true;    ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure void$CornerCases01$decideCondition$1889($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$java.lang.RuntimeException$$la$init$ra$$922($this:ref) returns ($exception:ref);    

procedure int$CornerCases01$decisions$1890($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure int$CornerCases01$getNewIndex$1891($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:ref) returns ($return:int, $exception:ref);    modifies $heap;

procedure int$java.util.List$size$152($this:ref) returns ($return:int, $exception:ref);    modifies $heap;

procedure int$CornerCases01$getInt$1892($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure void$CornerCases01$$la$init$ra$$1893($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation void$CornerCases01$decideCondition$1889($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var temp$04 : ref;    
var this1 : ref;    
var notEqual3 : int;    
var truthValue2 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",10,2,25,2 } true;
    this1 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",10,30,10,43 } true;
    truthValue2 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",10,46,10,61 } true;
    notEqual3 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,7,14,14 } true;
    if (notEqual3 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",15,4,15,10 } true;
        goto block1;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,7,14,14 } true;
    goto block2;
  block2:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,7,14,14 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,19,14,33 } true;
    if (truthValue2 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,19,14,33 } true;
        goto block3;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,19,14,33 } true;
    goto block1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,19,14,33 } true;
    goto block3;
  block3:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",14,19,14,33 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",15,4,15,10 } true;
    return;
  block1:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",15,4,15,10 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,14,16,21 } true;
    if (notEqual3 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",18,4,18,10 } true;
        goto block4;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,14,16,21 } true;
    goto block5;
  block5:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,14,16,21 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,26,16,40 } true;
    if (truthValue2 == 1) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,26,16,40 } true;
        goto block6;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,26,16,40 } true;
    goto block4;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,26,16,40 } true;
    goto block6;
  block6:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",16,26,16,40 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",18,4,18,10 } true;
    return;
  block4:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",18,4,18,10 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,15,19,22 } true;
    if (notEqual3 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,15,19,22 } true;
        goto block7;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,15,19,22 } true;
    goto block8;
  block7:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,15,19,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,27,19,41 } true;
    if (truthValue2 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,27,19,41 } true;
        goto block9;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,27,19,41 } true;
    goto block8;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,27,19,41 } true;
    goto block9;
  block9:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",19,27,19,41 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",20,4,20,10 } true;
    return;
  block8:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",20,4,20,10 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,15,21,22 } true;
    if (notEqual3 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,15,21,22 } true;
        goto block10;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,15,21,22 } true;
    goto block11;
  block10:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,15,21,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,27,21,41 } true;
    if (truthValue2 == 1) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,27,21,41 } true;
        goto block12;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,27,21,41 } true;
    goto block11;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,27,21,41 } true;
    goto block12;
  block12:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",21,27,21,41 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",22,4,22,10 } true;
    return;
  block11:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",22,4,22,10 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",24,4,24,32 } true;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    temp$04 := $fakelocal_0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",24,10,24,31 } true;
    call $exception := void$java.lang.RuntimeException$$la$init$ra$$922(temp$04);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",24,10,24,31 } true;
    $exception := temp$04;
    return;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",24,10,24,31 } true;
    return;
}


implementation int$CornerCases01$decisions$1890($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var uppercheck7 : int;    
var temp$311 : int;    
var this5 : ref;    
var temp$19 : int;    
var temp$08 : int;    
var temp$210 : int;    
var lowercheck6 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",27,2,32,2 } true;
    this5 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",27,23,27,40 } true;
    lowercheck6 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",27,43,27,60 } true;
    uppercheck7 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,13,28,22 } true;
    if (lowercheck6 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,39,28,47 } true;
        goto block13;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,13,28,22 } true;
    goto block14;
  block14:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,13,28,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,27,28,36 } true;
    if (uppercheck7 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,39,28,47 } true;
        goto block13;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,27,28,36 } true;
    goto block15;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,27,28,36 } true;
    goto block15;
  block15:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,27,28,36 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,27,28,36 } true;
    temp$08 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,39,28,47 } true;
    $return := temp$08;
    return;
  block13:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",28,39,28,47 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,18,29,27 } true;
    if (lowercheck6 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,45,29,53 } true;
        goto block16;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,18,29,27 } true;
    goto block17;
  block17:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,18,29,27 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,33,29,42 } true;
    if (uppercheck7 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,33,29,42 } true;
        goto block18;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,33,29,42 } true;
    goto block16;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,33,29,42 } true;
    goto block18;
  block18:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,33,29,42 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,33,29,42 } true;
    temp$19 := 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,45,29,53 } true;
    $return := temp$19;
    return;
  block16:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",29,45,29,53 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,19,30,28 } true;
    if (lowercheck6 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,19,30,28 } true;
        goto block19;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,19,30,28 } true;
    goto block20;
  block19:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,19,30,28 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,33,30,42 } true;
    if (uppercheck7 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,45,30,53 } true;
        goto block20;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,33,30,42 } true;
    goto block21;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,33,30,42 } true;
    goto block21;
  block21:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,33,30,42 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,33,30,42 } true;
    temp$210 := 2;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,45,30,53 } true;
    $return := temp$210;
    return;
  block20:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,45,30,53 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",30,45,30,53 } true;
    temp$311 := 3;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",31,14,31,22 } true;
    $return := temp$311;
    return;
}


implementation int$CornerCases01$getNewIndex$1891($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:ref) returns ($return:int, $exception:ref){
    
var temp$1030 : int;    
var temp$019 : int;    
var rand27 : int;    
var chars15 : ref;    
var temp$221 : int;    
var temp$423 : int;    
var max18 : int;    
var temp$828 : int;    
var temp$524 : int;    
var temp$120 : int;    
var booleans17 : ref;    
var temp$625 : int;    
var index13 : int;    
var ints14 : ref;    
var temp$929 : int;    
var this12 : ref;    
var temp$1131 : int;    
var bytes16 : ref;    
var temp$726 : int;    
var temp$1232 : int;    
var temp$322 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__2,$type] <: java.util.List;
    assume $heap[$in_parameter__1,$type] <: java.util.List;
    assume $heap[$in_parameter__4,$type] <: java.util.List;
    assume $heap[$in_parameter__3,$type] <: java.util.List;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",35,2,57,5 } true;
    this12 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",35,25,35,33 } true;
    index13 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",35,36,35,52 } true;
    ints14 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",35,55,35,72 } true;
    chars15 := $in_parameter__2;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",36,4,36,21 } true;
    bytes16 := $in_parameter__3;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",36,24,36,44 } true;
    booleans17 := $in_parameter__4;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",37,7,37,18 } true;
    max18 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,11,38,29 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,11,38,29 } booleans17 != $null;
    call temp$019, $exception := int$java.util.List$size$152(booleans17);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,11,38,29 } true;
    if (temp$019 > 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,11,38,29 } true;
        goto block22;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,11,38,29 } true;
    goto block23;
  block22:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,11,38,29 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,34,38,43 } true;
    if (index13 < 63) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,34,38,43 } true;
        goto block24;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,34,38,43 } true;
    goto block23;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,34,38,43 } true;
    goto block24;
  block24:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,34,38,43 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",39,9,39,11 } true;
    temp$120 := 64;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",39,9,39,11 } true;
    max18 := temp$120;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,7,45,17 } true;
    goto block25;
  block23:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",38,7,45,17 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,16,40,31 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,16,40,31 } bytes16 != $null;
    call temp$221, $exception := int$java.util.List$size$152(bytes16);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,16,40,31 } true;
    if (temp$221 > 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,16,40,31 } true;
        goto block26;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,16,40,31 } true;
    goto block27;
  block26:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,16,40,31 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,36,40,45 } true;
    if (index13 < 56) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,36,40,45 } true;
        goto block28;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,36,40,45 } true;
    goto block27;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,36,40,45 } true;
    goto block28;
  block28:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,36,40,45 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",41,9,41,11 } true;
    temp$322 := 57;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",41,9,41,11 } true;
    max18 := temp$322;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,12,45,17 } true;
    goto block29;
  block27:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",40,12,45,17 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,16,42,31 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,16,42,31 } chars15 != $null;
    call temp$423, $exception := int$java.util.List$size$152(chars15);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,16,42,31 } true;
    if (temp$423 > 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,16,42,31 } true;
        goto block30;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,16,42,31 } true;
    goto block31;
  block30:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,16,42,31 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,36,42,45 } true;
    if (index13 < 48) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,36,42,45 } true;
        goto block32;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,36,42,45 } true;
    goto block31;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,36,42,45 } true;
    goto block32;
  block32:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,36,42,45 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",43,9,43,11 } true;
    temp$524 := 49;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",43,9,43,11 } true;
    max18 := temp$524;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,12,45,17 } true;
    goto block33;
  block31:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",42,12,45,17 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,16,44,30 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,16,44,30 } ints14 != $null;
    call temp$625, $exception := int$java.util.List$size$152(ints14);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,16,44,30 } true;
    if (temp$625 > 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,16,44,30 } true;
        goto block34;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,16,44,30 } true;
    goto block35;
  block34:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,16,44,30 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,35,44,44 } true;
    if (index13 < 32) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,35,44,44 } true;
        goto block36;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,35,44,44 } true;
    goto block35;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,35,44,44 } true;
    goto block36;
  block36:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",44,35,44,44 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",45,9,45,11 } true;
    temp$726 := 33;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",45,9,45,11 } true;
    max18 := temp$726;
  block35:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",45,9,45,11 } true;
  block33:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",45,9,45,11 } true;
  block29:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",45,9,45,11 } true;
  block25:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",45,9,45,11 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",47,11,47,18 } true;
    if (max18 != 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",47,11,47,18 } true;
        goto block37;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",47,11,47,18 } true;
    goto block38;
  block37:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",47,11,47,18 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",48,20,48,28 } true;
    call temp$828, $exception := int$CornerCases01$getInt$1892(this12, 4);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",48,20,48,28 } true;
    rand27 := temp$828;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",49,9,49,26 } true;
    temp$929 := max18 - index13;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",49,9,49,11 } true;
    max18 := temp$929;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",50,13,50,22 } true;
    if (max18 > rand27) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",50,13,50,22 } true;
        goto block39;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",50,13,50,22 } true;
    goto block40;
  block39:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",50,13,50,22 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",51,11,51,13 } true;
    max18 := rand27;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",50,9,53,28 } true;
    goto block41;
  block40:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",50,9,53,28 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",52,18,52,25 } true;
    if (max18 != 1) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",52,18,52,25 } true;
        goto block42;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",52,18,52,25 } true;
    goto block43;
  block42:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",52,18,52,25 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",53,17,53,27 } true;
    call temp$1030, $exception := int$CornerCases01$getInt$1892(this12, max18);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",53,11,53,13 } true;
    max18 := temp$1030;
  block43:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",53,11,53,13 } true;
  block41:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",53,11,53,13 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",54,9,54,19 } true;
    temp$1131 := index13;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",54,9,54,19 } true;
    temp$1232 := temp$1131 + max18;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",54,9,54,13 } true;
    index13 := temp$1232;
  block38:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",54,9,54,13 } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",56,7,56,19 } true;
    $return := index13;
    return;
}


implementation int$CornerCases01$getInt$1892($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
    
var i34 : int;    
var this33 : ref;    
var temp$035 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",59,2,62,2 } true;
    this33 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",59,21,59,25 } true;
    i34 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",59,21,59,25 } true;
    temp$035 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",61,3,61,11 } true;
    $return := temp$035;
    return;
}


implementation void$CornerCases01$$la$init$ra$$1893($this:ref) returns ($exception:ref){
    
var this36 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",5,-1,-1,-1 } true;
    this36 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",5,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this36);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/corner_cases/cc01/CornerCases01.java",5,-1,-1,-1 } true;
    return;
}


