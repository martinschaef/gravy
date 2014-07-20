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
const { :SourceLocation "SimpleThreads.java",-1,-1,-1,-1 } unique SimpleThreads : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Throwable.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, unique java.io.Serializable complete;
const { :SourceLocation "Exception.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :SourceLocation "RuntimeException.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :SourceLocation "NullPointerException.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :SourceLocation "Iterable.java",-1,-1,-1,-1 } unique java.lang.Iterable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Iterator.java",-1,-1,-1,-1 } unique java.util.Iterator : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Number.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.lang.Object, unique java.io.Serializable complete;
const { :SourceLocation "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Integer.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Number, unique java.lang.Comparable complete;
const { :SourceLocation "ClassCastException.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :SourceLocation "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, unique java.io.Serializable, unique java.lang.Comparable, unique java.lang.CharSequence complete;
const { :SourceLocation "AutoCloseable.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Closeable.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.Object, unique java.lang.AutoCloseable complete;
const { :SourceLocation "Flushable.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "OutputStream.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, unique java.io.Flushable, unique java.io.Closeable complete;
const { :SourceLocation "FilterOutputStream.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :SourceLocation "Appendable.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
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
var int$SimpleThreads$SIZE0 : int;
var java.util.List$SimpleThreads$list234 : Field ref;
var java.io.PrintStream$java.lang.System$err237 : ref;
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
procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);    

procedure void$SimpleThreads$$la$clinit$ra$$1889() returns ($exception:ref);    modifies int$SimpleThreads$SIZE0;

procedure void$SimpleThreads$main$1890($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.util.Iterator$java.lang.Iterable$iterator$653($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.util.Iterator$hasNext$1051($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.Iterator$next$1052($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Integer$toString$979($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Throwable$toString$20($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$SimpleThreads$$la$init$ra$$1891($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    


implementation void$SimpleThreads$main$1890($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_3 : ref;    
var temp$512 : ref;    
var $fakelocal_2 : ref;    
var temp$613 : ref;    
var $fakelocal_4 : ref;    
var this2 : ref;    
var temp$28 : int;    
var $fakelocal_5 : ref;    
var temp$05 : ref;    
var args3 : ref;    
var temp$16 : ref;    
var out4 : ref;    
var temp$410 : ref;    
var x7 : ref;    
var temp$39 : ref;    
var e11 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    this2 := $this;
    args3 := $in_parameter__0;
    out4 := $null;
  block1:
    if (this2 != $null) {
        assert { :SourceLocation "SimpleThreads.java",52,52,24,27 } true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_0;
        assume !$heap[$fakelocal_0,$alloc];
        $heap := $heap[$fakelocal_0,$alloc := true];
        assume $fakelocal_0 != $null;
        $heap := $heap[$fakelocal_0,$type := java.lang.NullPointerException];
        $exception := $fakelocal_0;
        goto block2;
    }
    temp$05 := $heap[this2,java.util.List$SimpleThreads$list234];
    if (temp$05 != $null) {
        assert { :SourceLocation "SimpleThreads.java",52,52,24,27 } true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_1;
        assume !$heap[$fakelocal_1,$alloc];
        $heap := $heap[$fakelocal_1,$alloc := true];
        assume $fakelocal_1 != $null;
        $heap := $heap[$fakelocal_1,$type := java.lang.NullPointerException];
        $exception := $fakelocal_1;
        goto block2;
    }
    call temp$16, $exception := java.util.Iterator$java.lang.Iterable$iterator$653(temp$05);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block2;
    }
  block3:
    if (temp$16 != $null) {
        assert { :SourceLocation "SimpleThreads.java",52,52,24,27 } true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_2;
        assume !$heap[$fakelocal_2,$alloc];
        $heap := $heap[$fakelocal_2,$alloc := true];
        assume $fakelocal_2 != $null;
        $heap := $heap[$fakelocal_2,$type := java.lang.NullPointerException];
        $exception := $fakelocal_2;
        goto block2;
    }
    call temp$28, $exception := boolean$java.util.Iterator$hasNext$1051(temp$16);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block2;
    }
    if (temp$28 == 0) {
        goto block4;
    }
    if (temp$16 != $null) {
        assert { :SourceLocation "SimpleThreads.java",52,52,24,27 } true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_3;
        assume !$heap[$fakelocal_3,$alloc];
        $heap := $heap[$fakelocal_3,$alloc := true];
        assume $fakelocal_3 != $null;
        $heap := $heap[$fakelocal_3,$type := java.lang.NullPointerException];
        $exception := $fakelocal_3;
        goto block2;
    }
    call temp$39, $exception := java.lang.Object$java.util.Iterator$next$1052(temp$16);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block2;
    }
    if ($heap[temp$39,$type] <: java.lang.Integer) {
        assert { :SourceLocation "SimpleThreads.java",52,52,24,27 } true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_4;
        assume !$heap[$fakelocal_4,$alloc];
        $heap := $heap[$fakelocal_4,$alloc := true];
        assume $fakelocal_4 != $null;
        $heap := $heap[$fakelocal_4,$type := java.lang.ClassCastException];
        $exception := $fakelocal_4;
        goto block2;
    }
    x7 := temp$39;
    if (x7 != $null) {
        assert { :SourceLocation "SimpleThreads.java",53,53,11,23 } true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_5;
        assume !$heap[$fakelocal_5,$alloc];
        $heap := $heap[$fakelocal_5,$alloc := true];
        assume $fakelocal_5 != $null;
        $heap := $heap[$fakelocal_5,$type := java.lang.NullPointerException];
        $exception := $fakelocal_5;
        goto block2;
    }
    call temp$410, $exception := java.lang.String$java.lang.Integer$toString$979(x7);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block2;
    }
    goto block3;
  block4:
    goto block5;
  block2:
    assert { :SourceLocation "SimpleThreads.java",55,57,5,3 } $exception != $null;
    assume { :NoCode } $heap[$exception,$type] <: java.lang.Throwable;
    e11 := $exception;
    temp$512 := java.io.PrintStream$java.lang.System$err237;
    assert { :SourceLocation "SimpleThreads.java",56,56,4,36 } e11 != $null;
    call temp$613, $exception := java.lang.String$java.lang.Throwable$toString$20(e11);
    assert { :SourceLocation "SimpleThreads.java",56,56,4,36 } temp$512 != $null;
    call $exception := void$java.io.PrintStream$println$217(temp$512, temp$613);
    goto block5;
  block5:
    return;
}



