procedure void$org.joogie.tests.InfeasibleCodeSnippets$main$1867($in_parameter__0:ref) returns ($exception:ref)
    modifies $heap, $stringSizeHeap;
{
    var $ex_return : bool;
    var s10 : ref;
    var $fakelocal_3 : ref;
    var temp$011 : ref;
    var temp$112 : ref;
    var args9 : ref;
    var $fakelocal_0 : ref;
    var $fakelocal_2 : ref;
    var $fakelocal_1 : ref;
    var temp$213 : ref;

    $ex_return := false;
    args9 := $in_parameter__0;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 5];
    s10 := $fakelocal_0;
    if (s10 != $null) {
        $exception := $exception;
    } else {
        havoc $fakelocal_1;
        assume !$heap[$fakelocal_1,$alloc];
        $heap := $heap[$fakelocal_1,$alloc := true];
        assume $fakelocal_1 != $null;
        $heap := $heap[$fakelocal_1,$type := java.lang.NullPointerException];
        $exception := $fakelocal_1;
        $ex_return := true;
        return;
    }
    if ($heap[s10,$type] <: java.lang.String && java.lang.String <: $heap[s10,$type]) {
        call temp$011, $exception := java.lang.String$java.lang.String$toLowerCase$120(s10);
        assume temp$011 != $null;
        assume $heap[temp$011,$type] <: java.lang.String;
        assume java.lang.String <: $heap[temp$011,$type];
    }
    if (temp$011 != $null) {
        $exception := $exception;
    } else {
        havoc $fakelocal_2;
        assume !$heap[$fakelocal_2,$alloc];
        $heap := $heap[$fakelocal_2,$alloc := true];
        assume $fakelocal_2 != $null;
        $heap := $heap[$fakelocal_2,$type := java.lang.NullPointerException];
        $exception := $fakelocal_2;
        $ex_return := true;
        return;
    }
    if ($heap[temp$011,$type] <: java.lang.String && java.lang.String <: $heap[temp$011,$type]) {
        call temp$112, $exception := java.lang.String$java.lang.String$substring$108(temp$011, 0, 1);
        assume temp$112 != $null;
        assume $heap[temp$112,$type] <: java.lang.String;
        assume java.lang.String <: $heap[temp$112,$type];
    }
    if (temp$112 != $null) {
        $exception := $exception;
    } else {
        havoc $fakelocal_3;
        assume !$heap[$fakelocal_3,$alloc];
        $heap := $heap[$fakelocal_3,$alloc := true];
        assume $fakelocal_3 != $null;
        $heap := $heap[$fakelocal_3,$type := java.lang.NullPointerException];
        $exception := $fakelocal_3;
        $ex_return := true;
        return;
    }
    if ($heap[temp$112,$type] <: java.lang.String && java.lang.String <: $heap[temp$112,$type]) {
        call temp$213, $exception := java.lang.String$java.lang.String$toUpperCase$122(temp$112);
        assume temp$213 != $null;
        assume $heap[temp$213,$type] <: java.lang.String;
        assume java.lang.String <: $heap[temp$213,$type];
    }
    return;
}

procedure int$org.joogie.tests.InfeasibleCodeSnippets$test1$1865($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref)
    modifies ;
{
    var this1 : ref;
    var y3 : int;
    var x2 : int;
    var temp$04 : int;
    var $ex_return : bool;
    var temp$15 : int;

    assume $this != $null;
    $ex_return := false;
    this1 := $this;
    x2 := $in_parameter__0;
    y3 := 0;
    temp$04 := y3;
    temp$15 := temp$04 + x2;
    $return := temp$15;
    return;
}

procedure java.lang.String$java.lang.String$substring$108($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);
    modifies ;
    ensures $return != $null;

var $stringSizeHeap : [ref]int;
var $charArrayType : javaType;
function $shrInt(x:int, y:int) returns ($ret:int);
procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);
    modifies ;

const unique $alloc : Field bool extends  complete;
function $refToBool(x:ref) returns ($ret:bool) { (if x == $null then false else true) }
function $boolToInt(x:bool) returns ($ret:int) { (if x == true then 1 else 0) }
var $intArrayType : javaType;
procedure void$org.joogie.tests.InfeasibleCodeSnippets$$la$init$ra$$1868($this:ref) returns ($exception:ref)
    modifies ;
{
    var $ex_return : bool;
    var this14 : ref;

    assume $this != $null;
    $ex_return := false;
    this14 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this14);
    return;
}

function $intToBool(x:int) returns ($ret:bool) { (if x == 0 then false else true) }
type ref;
const unique java.lang.Object : javaType extends  complete;
const unique $null : ref extends  complete;
function $realToInt(x:real) returns ($ret:int);
var $boolArrayType : javaType;
procedure java.lang.String$java.lang.String$toLowerCase$120($this:ref) returns ($return:ref, $exception:ref);
    modifies ;
    ensures $return != $null;

var $boolArrHeap : [ref][int]bool;
procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);
    ensures $return != $null;
    modifies ;

const unique java.lang.Throwable : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
function $bitAnd(x:int, y:int) returns ($ret:int);
const unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
type Field $GenericType__0;
function $cmpBool(x:bool, y:bool) returns ($ret:int);
function $arrayType(t:javaType) returns ($ret:javaType);
var $refArrHeap : [ref][int]ref;
procedure java.lang.String$org.joogie.tests.InfeasibleCodeSnippets$test2$1866($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref)
    modifies $heap;
{
    var x7 : ref;
    var this6 : ref;
    var temp$08 : ref;
    var $ex_return : bool;
    var $fakelocal_0 : ref;

    assume $this != $null;
    $ex_return := false;
    this6 := $this;
    x7 := $in_parameter__0;
    if (x7 != $null) {
        $exception := $exception;
    } else {
        havoc $fakelocal_0;
        assume !$heap[$fakelocal_0,$alloc];
        $heap := $heap[$fakelocal_0,$alloc := true];
        assume $fakelocal_0 != $null;
        $heap := $heap[$fakelocal_0,$type := java.lang.NullPointerException];
        $exception := $fakelocal_0;
        $ex_return := true;
        return;
    }
    if ($heap[x7,$type] <: java.lang.String && java.lang.String <: $heap[x7,$type]) {
        call temp$08, $exception := java.lang.String$java.lang.Object$toString$44(x7);
        assume temp$08 != $null;
        assume $heap[temp$08,$type] <: java.lang.String;
        assume java.lang.String <: $heap[temp$08,$type];
    }
    if ($heap[x7,$type] <: java.lang.Object && java.lang.Object <: $heap[x7,$type]) {
        call temp$08, $exception := java.lang.String$java.lang.Object$toString$44(x7);
        assume temp$08 != $null;
        assume $heap[temp$08,$type] <: java.lang.String;
        assume java.lang.String <: $heap[temp$08,$type];
    }
    $return := temp$08;
    return;
}

function $shlInt(x:int, y:int) returns ($ret:int);
var $byteArrayType : javaType;
const unique java.lang.String : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.CharSequence, unique java.lang.Object complete;
function $intToReal(x:int) returns ($ret:real);
function $cmpReal(x:real, y:real) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $ushrInt(x:int, y:int) returns ($ret:int);
const unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
type void;
const unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
function $cmpRef(x:ref, y:ref) returns ($ret:int);
function $xorInt(x:int, y:int) returns ($ret:int);
procedure java.lang.String$java.lang.String$toUpperCase$122($this:ref) returns ($return:ref, $exception:ref);
    ensures $return != $null;
    modifies ;

type javaType;
const unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
var $heap : <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;
var $realArrHeap : [ref][int]int;
const unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
function $bitOr(x:int, y:int) returns ($ret:int);
const unique $type : Field javaType extends  complete;
const unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
var $intArrHeap : [ref][int]int;
const unique org.joogie.tests.InfeasibleCodeSnippets : javaType extends  unique java.lang.Object complete;
function $cmpInt(x:int, y:int) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
var $longArrayType : javaType;
var $arrSizeHeap : [ref]int;
