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
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique TruePositive06 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.Character : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $obj != $null;    ensures $heap[$obj,$type] == obj_type;        ensures $heap[$obj,$alloc] == true;    requires $heap[$obj,$alloc] == false;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure int$TruePositive06$doubleLoop2$1889($this:ref) returns ($return:int, $exception:ref);    

procedure void$TruePositive06$foo$1890($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Character$$la$init$ra$$1621($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure boolean$java.lang.Character$isLetterOrDigit$1668($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure void$TruePositive06$$la$init$ra$$1891($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation int$TruePositive06$doubleLoop2$1889($this:ref) returns ($return:int, $exception:ref){
    
var temp$05 : int;    
var temp$38 : int;    
var j4 : int;    
var this1 : ref;    
var temp$16 : int;    
var i3 : int;    
var ret2 : int;    
var temp$510 : int;    
var temp$27 : int;    
var temp$49 : int;
    assume { :sourceloc "a",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "a",6,2,15,2 } true;
    this1 := $this;
    assert { :sourceloc "a",7,9,7,18 } true;
    ret2 := 0;
    assert { :sourceloc "a",8,14,8,20 } true;
    i3 := 0;
  block1:
    assert { :sourceloc "a",8,23,8,26 } true;
    if (i3 < 10) {
        assert { :sourceloc "a",8,23,8,26 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "a",8,23,8,26 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a",8,23,8,26 } true;
    goto block3;
  block2:
    assert { :sourceloc "a",10,18,10,24 } true;
    j4 := 0;
  block4:
    assert { :sourceloc "a",10,27,10,30 } true;
    if (j4 < 10) {
        assert { :sourceloc "a",10,27,10,30 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "a",10,27,10,30 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a",10,27,10,30 } true;
    goto block6;
  block5:
    assert { :sourceloc "a",11,17,11,22 } true;
    temp$05 := ret2;
    assert { :sourceloc "a",11,17,11,19 } true;
    temp$16 := temp$05 + 1;
    assert { :sourceloc "a",11,17,11,19 } true;
    ret2 := temp$16;
    assert { :sourceloc "a",10,33,10,35 } true;
    temp$27 := i3;
    assert { :sourceloc "a",10,33,10,33 } true;
    temp$38 := temp$27 + 1;
    assert { :sourceloc "a",10,33,10,33 } true;
    i3 := temp$38;
    assert { :sourceloc "a",10,13,12,13 } true;
    goto block4;
  block6:
    assert { :sourceloc "a",8,29,8,31 } true;
    temp$49 := i3;
    assert { :sourceloc "a",8,29,8,29 } true;
    temp$510 := temp$49 + 1;
    assert { :sourceloc "a",8,29,8,29 } true;
    i3 := temp$510;
    assert { :sourceloc "a",8,9,13,9 } true;
    goto block1;
  block3:
    assert { :sourceloc "a",14,4,14,14 } true;
    $return := ret2;
    return;
}



