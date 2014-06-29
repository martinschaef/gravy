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
const unique java.lang.Object : javaType extends  complete;
const unique InfeasibleCode01 : javaType extends  unique java.lang.Object complete;
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
procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref, $exception:ref)    modifies $heap;{
    havoc $other;
    assume !$heap[$other,$alloc];
    $heap := $heap[$other,$alloc := true];
    assume $other != $null;
    $heap := $heap[$other,$type := $heap[$this,$type]];
}


procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int, $exception:ref);    ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);    

procedure boolean$InfeasibleCode01$foo$1889($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$java.lang.Object$hashCode$41($this:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$$la$init$ra$$1890($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation boolean$InfeasibleCode01$foo$1889($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var temp$36 : ref;    
var this1 : ref;    
var temp$58 : ref;    
var temp$03 : ref;    
var other2 : ref;    
var temp$47 : int;    
var $ex_return : bool;    
var temp$25 : int;    
var temp$69 : int;    
var temp$811 : int;    
var temp$14 : ref;    
var temp$710 : int;
    assume $this != $null;
    $ex_return := false;
    this1 := $this;
    other2 := $in_parameter__0;
    assert this1 != $null;
    temp$03 := $heap[this1,InfeasibleCode01$InfeasibleCode01$bases234];
    if (temp$03 == $null) {
        goto block1;
    }
    goto block2;
  block1:
    assert other2 != $null;
    temp$14 := $heap[other2,InfeasibleCode01$InfeasibleCode01$bases234];
    if (temp$14 != $null) {
        goto block3;
    }
    goto block4;
  block3:
    temp$25 := 0;
    $return := temp$25;
    return;
  block4:
  block2:
    assert this1 != $null;
    temp$36 := $heap[this1,InfeasibleCode01$InfeasibleCode01$bases234];
    assert temp$36 != $null;
    if ($heap[temp$36,$type] <: InfeasibleCode01 && InfeasibleCode01 <: $heap[temp$36,$type]) {
        call temp$47, $exception := int$java.lang.Object$hashCode$41(temp$36);
    }
    assert other2 != $null;
    temp$58 := $heap[other2,InfeasibleCode01$InfeasibleCode01$bases234];
    assert temp$58 != $null;
    if ($heap[temp$58,$type] <: InfeasibleCode01 && InfeasibleCode01 <: $heap[temp$58,$type]) {
        call temp$69, $exception := int$java.lang.Object$hashCode$41(temp$58);
    }
    if (temp$47 != temp$69) {
        goto block5;
    }
    goto block6;
  block5:
    temp$710 := 0;
    $return := temp$710;
    return;
  block6:
    temp$811 := 1;
    $return := temp$811;
    return;
}


implementation void$InfeasibleCode01$$la$init$ra$$1890($this:ref) returns ($exception:ref){
    
var this12 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    this12 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this12);
    return;
}


