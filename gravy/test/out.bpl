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
const { :sourceloc "Appendable.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AbstractStringBuilder.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, unique java.lang.Appendable, unique java.lang.CharSequence complete;
const { :sourceloc "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StringBuffer.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.io.Serializable, unique java.lang.AbstractStringBuilder, unique java.lang.CharSequence complete;
const { :sourceloc "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique java.lang.Comparable, unique java.lang.CharSequence complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "AutoCloseable.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Closeable.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :sourceloc "Flushable.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "OutputStream.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, unique java.io.Closeable, unique java.io.Flushable complete;
const { :sourceloc "FilterOutputStream.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "PrintStream.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.Closeable, unique java.lang.Appendable, unique java.io.FilterOutputStream complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);        requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;    ensures $heap[$obj,$type] == obj_type;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);        ensures $heap[$other,$alloc] == true;    ensures $other != $null;    ensures $heap[$other,$type] == $heap[$this,$type];

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);    

procedure int$InfeasibleCode01$infeasible0$1889($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $intArrHeap;

procedure int$InfeasibleCode01$infeasible1$1890($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$java.lang.Object$hashCode$41($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$701($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode01$infeasible2$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $intArrHeap;

procedure void$InfeasibleCode01$infeasible3$1892($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure boolean$InfeasibleCode01$infeasible4$1893($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$infeasible5$1894($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure int$InfeasibleCode01$infeasible6$1895($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$$la$init$ra$$1896($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation void$InfeasibleCode01$infeasible2$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$122 : ref;    
var temp$021 : int;    
var temp$324 : int;    
var i20 : int;    
var this18 : ref;    
var arr19 : ref;    
var temp$223 : int;    
var temp$425 : int;
    assume $this != $null;
    this18 := $this;
    arr19 := $in_parameter__0;
    i20 := 0;
  block3:
    assert { :sourceloc "InfeasibleCode01.java",42,17,42,29 } arr19 != $null;
    temp$021 := $arrSizeHeap[arr19];
    if (i20 <= temp$021) {
        assert { :sourceloc "InfeasibleCode01.java",42,17,42,29 } true;
        goto block4;
    } else {
        assert { :sourceloc "InfeasibleCode01.java",42,17,42,29 } true;
    }
    goto block5;
  block4:
    temp$122 := arr19;
    temp$223 := i20;
    assert { :sourceloc "InfeasibleCode01.java",43,7,43,9 } temp$223 < $arrSizeHeap[temp$122] && temp$223 >= 0;
    $intArrHeap := $intArrHeap[temp$122 := $intArrHeap[temp$122][temp$223 := i20]];
    temp$324 := i20;
    temp$425 := temp$324 + 1;
    i20 := temp$425;
    goto block3;
  block5:
	assert { :sourceloc "InfeasibleCode01.java",100,17,100,29 } true;
    return;
}



