type ref;
type javaType;
type Field $GenericType__0;
type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;
type boolArrHeap_type = [ref][int]bool;
type refArrHeap_type = [ref][int]ref;
type realArrHeap_type = [ref][int]int;
type intArrHeap_type = [ref][int]int;
const unique $null : ref;
const unique $type : Field javaType;
const unique $alloc : Field bool;
const { :sourceloc "Object.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "FalsePositives.java",-1,-1,-1,-1 } unique FalsePositives : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Enumeration.java",-1,-1,-1,-1 } unique java.util.Enumeration : javaType extends  unique java.lang.Object complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.io.Serializable, unique java.lang.CharSequence, unique java.lang.Object, unique java.lang.Comparable complete;
const { :sourceloc "Throwable.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "Exception.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "RuntimeException.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "ClassCastException.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
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
var java.lang.String$lp$$rp$$FalsePositives$sourceKeys234 : Field ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap[$obj,$type] == obj_type;    ensures $heap[$obj,$alloc] == true;        requires $heap[$obj,$alloc] == false;    ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;        ensures $heap[$other,$alloc] == true;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);        ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);

procedure int$FalsePositives$foo$1889($this:ref) returns ($return:int, $exception:ref);    

procedure java.util.Enumeration$FalsePositives$bar$1890($this:ref) returns ($return:ref, $exception:ref);    

procedure void$FalsePositives$removeAttribute$1891($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.lang.String$toString$124($this:ref) returns ($return:ref, $exception:ref);    

procedure void$FalsePositives$$la$init$ra$$1892($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation void$FalsePositives$removeAttribute$1891($this:ref) returns ($exception:ref){
    
var temp$210 : int;    
var temp$311 : ref;    
var temp$08 : ref;    
var temp$1119 : int;    
var countSource7 : int;    
var temp$1220 : int;    
var temp$715 : ref;    
var temp$917 : ref;    
var temp$614 : int;    
var hit6 : int;    
var this5 : ref;    
var temp$1018 : ref;    
var temp$412 : int;    
var cce21 : ref;    
var temp$816 : int;    
var temp$19 : int;    
var temp$513 : ref;
    assume $this != $null;
    this5 := $this;
  block1:
    hit6 := 0;
    countSource7 := 0;
  block2:
    assert { :sourceloc "FalsePositives.java",24,43,24,52 } this5 != $null;
    temp$08 := $heap[this5,java.lang.String$lp$$rp$$FalsePositives$sourceKeys234];
    assert { :sourceloc "FalsePositives.java",24,43,24,52 } temp$08 != $null;
    temp$19 := $arrSizeHeap[temp$08];
    if (countSource7 < temp$19) {
        assert { :sourceloc "FalsePositives.java",24,43,24,52 } true;
        goto block3;
    } else {
        assert { :sourceloc "FalsePositives.java",24,43,24,52 } true;
    }
    goto block4;
  block3:
    temp$210 := 0;
    hit6 := temp$210;
    assert { :sourceloc "FalsePositives.java",27,8,27,17 } this5 != $null;
    temp$311 := $heap[this5,java.lang.String$lp$$rp$$FalsePositives$sourceKeys234];
    temp$412 := countSource7;
    assert { :sourceloc "FalsePositives.java",27,8,27,17 } temp$412 < $arrSizeHeap[temp$311] && temp$412 >= 0;
    temp$513 := $refArrHeap[temp$311][temp$412];
    if (temp$513 == $StringConst0) {
        assert { :sourceloc "FalsePositives.java",27,8,27,17 } true;
        goto block5;
    } else {
        assert { :sourceloc "FalsePositives.java",27,8,27,17 } true;
    }
    goto block6;
  block5:
    temp$614 := 1;
    hit6 := temp$614;
  block6:
    if (hit6 == 0) {
        assert { :sourceloc "FalsePositives.java",33,9,33,11 } true;
        goto block7;
    } else {
        assert { :sourceloc "FalsePositives.java",33,9,33,11 } true;
    }
    goto block8;
  block7:
    assert { :sourceloc "FalsePositives.java",36,6,36,15 } this5 != $null;
    temp$715 := $heap[this5,java.lang.String$lp$$rp$$FalsePositives$sourceKeys234];
    temp$816 := countSource7;
    assert { :sourceloc "FalsePositives.java",36,6,36,15 } temp$816 < $arrSizeHeap[temp$715] && temp$816 >= 0;
    temp$917 := $refArrHeap[temp$715][temp$816];
    assert { :sourceloc "FalsePositives.java",36,6,36,15 } temp$917 != $null;
    call temp$1018, $exception := java.lang.String$java.lang.String$toString$124(temp$917);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassCastException) {
        goto block9;
    }
  block8:
    temp$1119 := countSource7;
    temp$1220 := temp$1119 + 1;
    countSource7 := temp$1220;
    goto block2;
  block4:
    goto block10;
  block9:
    assert { :sourceloc "FalsePositives.java",40,3,43,3 } $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    cce21 := $exception;
    goto block10;
  block10:
    return;
}

