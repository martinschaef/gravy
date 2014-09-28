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
const { :sourceloc "a",-1,-1,-1,-1 } unique InfeasibleCode02 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique java.lang.CharSequence, unique java.lang.Comparable complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.Object, unique java.lang.AutoCloseable complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, unique java.io.Flushable, unique java.io.Closeable complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.lang.Appendable, unique java.io.FilterOutputStream, unique java.io.Closeable complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Appendable, unique java.lang.Object, unique java.lang.CharSequence complete;
const { :sourceloc "a",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.AbstractStringBuilder, unique java.io.Serializable, unique java.lang.CharSequence complete;
const unique $StringConst1 : ref extends  complete;
const unique $StringConst2 : ref extends  complete;
const unique $StringConst3 : ref extends  complete;
const unique $StringConst4 : ref extends  complete;
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
var java.io.PrintStream$java.lang.System$err236 : ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$type] == obj_type;    ensures $heap[$obj,$alloc] == true;        ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure void$InfeasibleCode02$infeasible01$1889($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode02$feasible01$1890($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$701($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$710($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure int$java.lang.String$indexOf$101($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode02$feasibe02$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure void$InfeasibleCode02$infeasible03$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode02$$la$init$ra$$1893($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    



implementation void$InfeasibleCode02$infeasible03$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$238 : ref;    
var temp$844 : int;    
var temp$541 : int;    
var temp$440 : int;    
var temp$339 : int;    
var j35 : int;    
var temp$137 : int;    
var end34 : int;    
var this31 : ref;    
var repos33 : int;    
var temp32 : ref;    
var temp$743 : int;    
var temp$642 : int;    
var temp$036 : int;
    assume { :sourceloc "a",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "a",61,2,74,1 } true;
    this31 := $this;
    assert { :sourceloc "a",61,27,61,37 } true;
    temp32 := $in_parameter__0;
    assert { :sourceloc "a",62,2,62,16 } true;
    repos33 := -1;
    assert { :sourceloc "a",63,2,63,14 } true;
    end34 := -1;
    assert { :sourceloc "a",64,2,64,13 } true;
    j35 := end34;
  block15:
    assert { :sourceloc "a",66,3,66,6 } true;
    temp$036 := j35;
    assert { :sourceloc "a",66,3,66,3 } true;
    temp$137 := temp$036 + 1;
    assert { :sourceloc "a",66,3,66,3 } true;
    j35 := temp$137;
    assert { :sourceloc "a",67,7,67,18 } true;
    temp$238 := temp32;
    assert { :sourceloc "a",67,7,67,18 } true;
    temp$339 := j35;
    assert { :sourceloc "a",67,7,67,18 } true;
    assert { :sourceloc "a",67,7,67,18 } temp$339 < $arrSizeHeap[temp$238] && temp$339 >= 0;
    temp$440 := $intArrHeap[temp$238][temp$339];
    assert { :sourceloc "a",67,7,67,18 } true;
    temp$541 := temp$440;
    assert { :sourceloc "a",67,7,67,18 } true;
    if (temp$541 == 97) {
        assert { :sourceloc "a",67,7,67,18 } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "a",67,7,67,18 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a",67,7,67,18 } true;
    goto block17;
  block16:
    assert { :sourceloc "a",68,4,68,23 } true;
    temp$642 := j35 - end34;
    assert { :sourceloc "a",68,4,68,23 } true;
    temp$743 := temp$642 - 1;
    assert { :sourceloc "a",68,4,68,8 } true;
    repos33 := temp$743;
  block17:
    assert { :sourceloc "a",70,11,70,21 } true;
    if (repos33 == -1) {
        assert { :sourceloc "a",70,11,70,21 } { :clone } { :comment "thenblock" } true;
        goto block18;
    } else {
        assert { :sourceloc "a",70,11,70,21 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a",70,11,70,21 } true;
    goto block19;
  block18:
    assert { :sourceloc "a",70,26,70,40 } true;
    assert { :sourceloc "a",70,26,70,40 } temp32 != $null;
    temp$844 := $arrSizeHeap[temp32];
    assert { :sourceloc "a",70,26,70,40 } true;
    if (j35 < temp$844) {
        assert { :sourceloc "a",70,26,70,40 } { :comment "thenblock" } true;
        goto block15;
    } else {
        assert { :sourceloc "a",70,26,70,40 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a",70,26,70,40 } true;
    goto block19;
  block19:
    assert { :sourceloc "a",71,6,71,16 } true;
    if (repos33 == -1) {
        assert { :sourceloc "a",71,6,71,16 } { :clone } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "a",71,6,71,16 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "a",71,6,71,16 } true;
    goto block20;
  block20:
    assert { :sourceloc "a",72,3,72,7 } true;
    return;
}


implementation void$InfeasibleCode02$$la$init$ra$$1893($this:ref) returns ($exception:ref){
    
var this46 : ref;
    assume { :sourceloc "a",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "a",7,-1,-1,-1 } true;
    this46 := $this;
    assert { :sourceloc "a",7,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this46);
    assert { :sourceloc "a",7,-1,-1,-1 } true;
    return;
}

