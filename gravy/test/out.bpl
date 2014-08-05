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
const { :sourceloc "InfeasibleCode01.java",-1,-1,-1,-1 } unique InfeasibleCode01 : javaType extends  unique java.lang.Object complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $obj != $null;        ensures $heap[$obj,$type] == obj_type;    requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$alloc] == true;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $other != $null;    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);        ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);

procedure void$InfeasibleCode01$feasible01$1889($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode01$$la$init$ra$$1890($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation void$InfeasibleCode01$feasible01$1889($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var this1 : ref;    
var temp$410 : int;    
var temp2 : ref;    
var temp$814 : int;    
var temp$39 : int;    
var j5 : int;    
var temp$612 : int;    
var temp$511 : int;    
var temp$17 : int;    
var repos3 : int;    
var temp$06 : int;    
var temp$28 : ref;    
var temp$713 : int;    
var end4 : int;    
var temp$915 : int;
    assume $this != $null;
    this1 := $this;
    temp2 := $in_parameter__0;
    repos3 := -1;
    end4 := -1;
    assert { :sourceloc "InfeasibleCode01.java",76,3,76,22 } temp2 != $null;
    j5 := $arrSizeHeap[temp2];
    j5 := end4;
  block1:
    temp$06 := j5;
    temp$17 := temp$06 + 1;
    j5 := temp$17;
    temp$28 := temp2;
    temp$39 := j5;
    assert { :sourceloc "InfeasibleCode01.java",86,8,86,19 } temp$39 < $arrSizeHeap[temp$28] && temp$39 >= 0;
    temp$410 := $intArrHeap[temp$28][temp$39];
    temp$511 := temp$410;
    if (temp$511 == 97) {
        assert { :sourceloc "InfeasibleCode01.java",86,8,86,19 } true;
        goto block2;
    } else {
        assert { :sourceloc "InfeasibleCode01.java",86,8,86,19 } true;
    }
    goto block3;
  block2:
    temp$612 := j5 - end4;
    temp$713 := temp$612 - 1;
    repos3 := temp$713;
  block3:
    if (repos3 == -1) {
        assert { :sourceloc "InfeasibleCode01.java",89,12,89,22 } true;
        goto block4;
    } else {
        assert { :sourceloc "InfeasibleCode01.java",89,12,89,22 } true;
    }
    goto block5;
  block4:
    assert { :sourceloc "InfeasibleCode01.java",89,27,89,41 } temp2 != $null;
    temp$814 := $arrSizeHeap[temp2];
    if (j5 < temp$814) {
        assert { :sourceloc "InfeasibleCode01.java",84,3,89,43 } true;
        goto block1;
    } else {
        assert { :sourceloc "InfeasibleCode01.java",89,27,89,41 } true;
    }
    goto block5;
    goto block1;
  block5:
    if (repos3 == -1) {
        assert { :sourceloc "InfeasibleCode01.java",90,7,90,17 } true;
        goto block6;
    } else {
        assert { :sourceloc "InfeasibleCode01.java",90,7,90,17 } true;
    }
    goto block7;
  block6:
    temp$915 := 0;
    repos3 := temp$915;
  block7:
    return;
}

