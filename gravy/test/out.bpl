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
const { :SourceLocation "Object.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :SourceLocation "InfeasibleCode01.java",-1,-1,-1,-1 } unique InfeasibleCode01 : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.CharSequence complete;
const { :SourceLocation "Appendable.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "AbstractStringBuilder.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, unique java.lang.Appendable, unique java.lang.CharSequence complete;
const { :SourceLocation "StringBuffer.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.AbstractStringBuilder, unique java.io.Serializable, unique java.lang.CharSequence complete;
const { :SourceLocation "AutoCloseable.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Closeable.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.Object, unique java.lang.AutoCloseable complete;
const { :SourceLocation "Flushable.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "OutputStream.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.io.Closeable, unique java.io.Flushable, unique java.lang.Object complete;
const { :SourceLocation "FilterOutputStream.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :SourceLocation "PrintStream.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.Closeable, unique java.io.FilterOutputStream, unique java.lang.Appendable complete;
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
var $DUMMYVAR__0 : ref;
var $DUMMYVAR__1 : ref;
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
procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref)    modifies $heap;{
    havoc $other;
    assume !$heap[$other,$alloc];
    $heap := $heap[$other,$alloc := true];
    assume $other != $null;
    $heap := $heap[$other,$type := $heap[$this,$type]];
}


procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);    

procedure int$InfeasibleCode01$infeasible0$1889($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $intArrHeap;

procedure int$InfeasibleCode01$infeasible1$1890($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $heap;

procedure int$java.lang.Object$hashCode$41($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$701($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode01$infeasible2$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $intArrHeap;

procedure void$InfeasibleCode01$infeasible3$1892($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure boolean$InfeasibleCode01$infeasible4$1893($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$infeasible5$1894($this:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure int$InfeasibleCode01$infeasible6$1895($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode01$$la$init$ra$$1896($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation int$InfeasibleCode01$infeasible0$1889($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var temp$04 : ref;    
var temp$26 : int;    
var i3 : int;    
var this1 : ref;    
var temp$37 : ref;    
var $ex_return : bool;    
var temp$15 : int;    
var temp$48 : int;    
var arr2 : ref;    
var temp$59 : int;
    assume $this != $null;
    $ex_return := false;
    this1 := $this;
    arr2 := $in_parameter__0;
    assert { :SourceLocation "InfeasibleCode01.java",28,28,3,21 } arr2 != $null;
    i3 := $arrSizeHeap[arr2];
    temp$04 := arr2;
    temp$15 := 3;
    temp$26 := 3;
    assert { :SourceLocation "InfeasibleCode01.java",29,29,6,8 } temp$15 < $arrSizeHeap[temp$04] && temp$15 >= 0;
    $intArrHeap := $intArrHeap[temp$04 := $intArrHeap[temp$04][temp$15 := temp$26]];
    temp$37 := arr2;
    temp$48 := i3;
    assert { :SourceLocation "InfeasibleCode01.java",29,29,6,8 } temp$48 < $arrSizeHeap[temp$37] && temp$48 >= 0;
    temp$59 := $intArrHeap[temp$37][temp$48];
    $return := temp$59;
    return;
}


implementation int$InfeasibleCode01$infeasible1$1890($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $fakelocal_2 : ref;    
var $fakelocal_1 : ref;    
var temp$012 : int;    
var temp$315 : ref;    
var temp$416 : ref;    
var temp$517 : int;    
var $fakelocal_0 : ref;    
var temp$113 : ref;    
var temp$214 : ref;    
var this10 : ref;    
var $ex_return : bool;    
var o11 : ref;
    assume $this != $null;
    $ex_return := false;
    this10 := $this;
    o11 := $in_parameter__0;
    if (o11 != $null) {
        goto block1;
    }
    goto block2;
  block1:
    assert { :SourceLocation "InfeasibleCode01.java",34,34,7,13 } o11 != $null;
    if ($heap[o11,$type] <: java.lang.String && java.lang.String <: $heap[o11,$type]) {
        call temp$012, $exception := int$java.lang.Object$hashCode$41(o11);
    }
    if ($heap[o11,$type] <: java.lang.Object && java.lang.Object <: $heap[o11,$type]) {
        call temp$012, $exception := int$java.lang.Object$hashCode$41(o11);
    }
    $return := temp$012;
    return;
  block2:
    temp$113 := java.io.PrintStream$java.lang.System$err236;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.StringBuffer];
    temp$214 := $fakelocal_0;
    call $exception := void$java.lang.StringBuffer$$la$init$ra$$685(temp$214);
    assert { :SourceLocation "InfeasibleCode01.java",37,37,22,53 } o11 != $null;
    if ($heap[o11,$type] <: java.lang.String && java.lang.String <: $heap[o11,$type]) {
        call temp$315, $exception := java.lang.String$java.lang.Object$toString$44(o11);
    }
    if ($heap[o11,$type] <: java.lang.Object && java.lang.Object <: $heap[o11,$type]) {
        call temp$315, $exception := java.lang.String$java.lang.Object$toString$44(o11);
    }
    assert { :SourceLocation "InfeasibleCode01.java",37,37,22,53 } temp$214 != $null;
    if ($heap[temp$214,$type] <: java.lang.StringBuffer && java.lang.StringBuffer <: $heap[temp$214,$type]) {
        call $fakelocal_1, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$214, temp$315);
    }
    assert { :SourceLocation "InfeasibleCode01.java",37,37,22,53 } temp$214 != $null;
    if ($heap[temp$214,$type] <: java.lang.StringBuffer && java.lang.StringBuffer <: $heap[temp$214,$type]) {
        call $fakelocal_2, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$214, $DUMMYVAR__0);
    }
    assert { :SourceLocation "InfeasibleCode01.java",37,37,22,53 } temp$214 != $null;
    if ($heap[temp$214,$type] <: java.lang.StringBuffer && java.lang.StringBuffer <: $heap[temp$214,$type]) {
        call temp$416, $exception := java.lang.String$java.lang.StringBuffer$toString$738(temp$214);
    }
    assert { :SourceLocation "InfeasibleCode01.java",37,37,22,53 } temp$113 != $null;
    if ($heap[temp$113,$type] <: java.io.PrintStream && java.io.PrintStream <: $heap[temp$113,$type]) {
        call $exception := void$java.io.PrintStream$println$217(temp$113, temp$416);
    }
    temp$517 := 2;
    $return := temp$517;
    return;
}


implementation void$InfeasibleCode01$infeasible2$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var i20 : int;    
var temp$122 : ref;    
var $ex_return : bool;    
var arr19 : ref;    
var temp$223 : int;    
var this18 : ref;    
var temp$425 : int;    
var temp$324 : int;    
var temp$021 : int;
    assume $this != $null;
    $ex_return := false;
    this18 := $this;
    arr19 := $in_parameter__0;
    i20 := 0;
  block3:
    assert { :SourceLocation "InfeasibleCode01.java",42,42,17,29 } arr19 != $null;
    temp$021 := $arrSizeHeap[arr19];
    if (i20 <= temp$021) {
        goto block4;
    }
    goto block5;
  block4:
    temp$122 := arr19;
    temp$223 := i20;
    assert { :SourceLocation "InfeasibleCode01.java",43,43,7,9 } temp$223 < $arrSizeHeap[temp$122] && temp$223 >= 0;
    $intArrHeap := $intArrHeap[temp$122 := $intArrHeap[temp$122][temp$223 := i20]];
    temp$324 := i20;
    temp$425 := temp$324 + 1;
    i20 := temp$425;
    goto block3;
  block5:
    return;
}


implementation void$InfeasibleCode01$infeasible3$1892($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref){
    
var temp$433 : int;    
var this26 : ref;    
var a27 : int;    
var $ex_return : bool;    
var temp$332 : int;    
var temp$029 : int;    
var temp$231 : int;    
var temp$534 : int;    
var b28 : int;    
var temp$130 : int;
    assume $this != $null;
    $ex_return := false;
    this26 := $this;
    a27 := $in_parameter__0;
    b28 := $in_parameter__1;
    temp$029 := 1;
    b28 := temp$029;
    if (a27 > 0) {
        goto block6;
    }
    goto block7;
  block6:
    temp$130 := b28;
    temp$231 := temp$130 + -1;
    b28 := temp$231;
  block7:
    assert { :SourceLocation "InfeasibleCode01.java",50,50,3,8 } b28 != 0;
    temp$332 := 1 div b28;
    b28 := temp$332;
    if (a27 <= 0) {
        goto block8;
    }
    goto block9;
  block8:
    temp$433 := 1 - b28;
    assert { :SourceLocation "InfeasibleCode01.java",51,51,13,22 } temp$433 != 0;
    temp$534 := 1 div temp$433;
    b28 := temp$534;
  block9:
    return;
}


implementation boolean$InfeasibleCode01$infeasible4$1893($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var temp$340 : int;    
var temp$037 : ref;    
var this35 : ref;    
var temp$138 : ref;    
var temp$239 : int;    
var o36 : ref;
    assume $this != $null;
    $ex_return := false;
    this35 := $this;
    o36 := $in_parameter__0;
    temp$037 := java.io.PrintStream$java.lang.System$err236;
    assert { :SourceLocation "InfeasibleCode01.java",55,55,3,35 } o36 != $null;
    if ($heap[o36,$type] <: java.lang.String && java.lang.String <: $heap[o36,$type]) {
        call temp$138, $exception := java.lang.String$java.lang.Object$toString$44(o36);
    }
    if ($heap[o36,$type] <: java.lang.Object && java.lang.Object <: $heap[o36,$type]) {
        call temp$138, $exception := java.lang.String$java.lang.Object$toString$44(o36);
    }
    assert { :SourceLocation "InfeasibleCode01.java",55,55,3,35 } temp$037 != $null;
    if ($heap[temp$037,$type] <: java.io.PrintStream && java.io.PrintStream <: $heap[temp$037,$type]) {
        call $exception := void$java.io.PrintStream$println$217(temp$037, temp$138);
    }
    if (o36 == $null) {
        goto block10;
    }
    goto block11;
  block10:
    temp$239 := 0;
    $return := temp$239;
    return;
  block11:
    temp$340 := 1;
    $return := temp$340;
    return;
}


implementation void$InfeasibleCode01$infeasible5$1894($this:ref) returns ($exception:ref){
    
var temp$144 : ref;    
var $ex_return : bool;    
var $fakelocal_0 : ref;    
var temp$043 : int;    
var this41 : ref;    
var test42 : ref;
    assume $this != $null;
    $ex_return := false;
    this41 := $this;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 8];
    test42 := $fakelocal_0;
    temp$043 := $stringSizeHeap[test42];
    if (temp$043 == 3) {
        goto block12;
    }
    goto block13;
  block12:
    temp$144 := java.io.PrintStream$java.lang.System$err236;
    assert { :SourceLocation "InfeasibleCode01.java",65,65,4,37 } temp$144 != $null;
    if ($heap[temp$144,$type] <: java.io.PrintStream && java.io.PrintStream <: $heap[temp$144,$type]) {
        call $exception := void$java.io.PrintStream$println$217(temp$144, $DUMMYVAR__1);
    }
  block13:
    return;
}


implementation int$InfeasibleCode01$infeasible6$1895($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var temp$451 : int;    
var temp$552 : int;    
var arr46 : ref;    
var temp$653 : int;    
var temp$148 : int;    
var temp$249 : int;    
var temp$047 : ref;    
var this45 : ref;    
var $ex_return : bool;    
var temp$350 : ref;
    assume $this != $null;
    $ex_return := false;
    this45 := $this;
    arr46 := $in_parameter__0;
    temp$047 := arr46;
    temp$148 := -1;
    assert { :SourceLocation "InfeasibleCode01.java",69,69,25,33 } temp$148 < $arrSizeHeap[temp$047] && temp$148 >= 0;
    temp$249 := $intArrHeap[temp$047][temp$148];
    temp$350 := arr46;
    assert { :SourceLocation "InfeasibleCode01.java",69,69,25,33 } arr46 != $null;
    temp$451 := $arrSizeHeap[arr46];
    assert { :SourceLocation "InfeasibleCode01.java",69,69,25,33 } temp$451 < $arrSizeHeap[temp$350] && temp$451 >= 0;
    temp$552 := $intArrHeap[temp$350][temp$451];
    temp$653 := temp$249 + temp$552;
    $return := temp$653;
    return;
}


implementation void$InfeasibleCode01$$la$init$ra$$1896($this:ref) returns ($exception:ref){
    
var this54 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    this54 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this54);
    return;
}


