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
const { :sourceloc "InfeasibleCode02.java",-1,-1,-1,-1 } unique InfeasibleCode02 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Comparable, unique java.lang.CharSequence, unique java.lang.Object, unique java.io.Serializable complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "AutoCloseable.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Closeable.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :sourceloc "Flushable.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "OutputStream.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.lang.Object, unique java.io.Flushable, unique java.io.Closeable complete;
const { :sourceloc "FilterOutputStream.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "Appendable.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "PrintStream.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.lang.Appendable, unique java.io.FilterOutputStream, unique java.io.Closeable complete;
const { :sourceloc "AbstractStringBuilder.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Appendable, unique java.lang.CharSequence, unique java.lang.Object complete;
const { :sourceloc "StringBuffer.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.AbstractStringBuilder, unique java.lang.CharSequence, unique java.io.Serializable complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);        ensures $heap[$obj,$type] == obj_type;    ensures $obj != $null;    requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$alloc] == true;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];        ensures $heap[$other,$alloc] == true;    ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);        ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);

procedure void$InfeasibleCode01$$la$init$ra$$1889($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

procedure void$InfeasibleCode02$infeasible01$1890($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$InfeasibleCode02$feasible01$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$701($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$710($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure int$java.lang.String$indexOf$101($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$InfeasibleCode02$feasibe02$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure void$InfeasibleCode02$$la$init$ra$$1893($this:ref) returns ($exception:ref);    



implementation void$InfeasibleCode02$feasible01$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$314 : int;    
var hit8 : int;    
var temp$415 : int;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_1 : ref;    
var source7 : ref;    
var temp$516 : int;    
var temp$112 : ref;    
var idString9 : ref;    
var temp$213 : ref;    
var temp$011 : int;    
var this6 : ref;    
var temp$617 : int;    
var counter10 : int;
    assume $this != $null;
    this6 := $this;
    source7 := $in_parameter__0;
    hit8 := 0;
    counter10 := 0;
  block4:
    temp$011 := 0;
    hit8 := temp$011;
    call $fakelocal_0 := $new(java.lang.StringBuffer);
    temp$112 := $fakelocal_0;
    call $exception := void$java.lang.StringBuffer$$la$init$ra$$685(temp$112);
    assert { :sourceloc "InfeasibleCode02.java",31,15,31,56 } temp$112 != $null;
    call $fakelocal_1, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$112, $StringConst1);
    assert { :sourceloc "InfeasibleCode02.java",31,15,31,56 } temp$112 != $null;
    call $fakelocal_2, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$710(temp$112, counter10);
    assert { :sourceloc "InfeasibleCode02.java",31,15,31,56 } temp$112 != $null;
    call temp$213, $exception := java.lang.String$java.lang.StringBuffer$toString$738(temp$112);
    idString9 := temp$213;
    assert { :sourceloc "InfeasibleCode02.java",32,7,32,35 } source7 != $null;
    call temp$314, $exception := int$java.lang.String$indexOf$101(source7, idString9);
    if (temp$314 > -1) {
        assert { :sourceloc "InfeasibleCode02.java",32,7,32,35 } true;
        goto block5;
    } else {
        assert { :sourceloc "InfeasibleCode02.java",32,7,32,35 } true;
    }
    goto block6;
  block5:
    temp$415 := counter10;
    temp$516 := temp$415 + 1;
    counter10 := temp$516;
    temp$617 := 1;
    hit8 := temp$617;
    if (counter10 > 10000) {
        assert { :sourceloc "InfeasibleCode02.java",36,8,36,22 } true;
        goto block7;
    } else {
        assert { :sourceloc "InfeasibleCode02.java",36,8,36,22 } true;
    }
    goto block8;
  block7:
    return;
  block8:
  block6:
    if (hit8 == 0) {
        assert { :sourceloc "InfeasibleCode02.java",41,11,41,13 } true;
        goto block9;
    } else {
        assert { :sourceloc "InfeasibleCode02.java",41,11,41,13 } true;
    }
    goto block4;
  block9:
    return;
}


implementation void$InfeasibleCode02$feasibe02$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$121 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var str22 : ref;    
var htmlTag19 : ref;    
var this18 : ref;    
var temp$729 : int;    
var $fakelocal_3 : ref;    
var $fakelocal_7 : ref;    
var temp$425 : int;    
var temp$324 : ref;    
var $fakelocal_1 : ref;    
var temp$527 : ref;    
var temp$223 : ref;    
var temp$628 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_8 : ref;    
var str26 : ref;    
var $fakelocal_4 : ref;    
var temp$020 : ref;    
var str30 : ref;    
var temp$831 : ref;
    assume $this != $null;
    this18 := $this;
    htmlTag19 := $in_parameter__0;
    assert { :sourceloc "InfeasibleCode02.java",46,7,46,47 } htmlTag19 != $null;
    call temp$020, $exception := java.lang.String$java.lang.Object$toString$44(htmlTag19);
    assert { :sourceloc "InfeasibleCode02.java",46,7,46,47 } temp$020 != $null;
    call temp$121 := int$java.lang.String$compareTo$87(temp$020, $StringConst2);
    if (temp$121 == 0) {
        assert { :sourceloc "InfeasibleCode02.java",46,7,46,47 } true;
        goto block10;
    } else {
        assert { :sourceloc "InfeasibleCode02.java",46,7,46,47 } true;
    }
    goto block11;
  block10:
    call $fakelocal_0 := $new($arrayType(java.lang.String));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 2];
    temp$223 := $fakelocal_0;
    assert { :sourceloc "InfeasibleCode02.java",48,19,48,46 } 0 < $arrSizeHeap[temp$223] && 0 >= 0;
    call $fakelocal_1 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_1 := 15];
    $refArrHeap := $refArrHeap[temp$223 := $refArrHeap[temp$223][0 := $fakelocal_1]];
    assert { :sourceloc "InfeasibleCode02.java",48,19,48,46 } 1 < $arrSizeHeap[temp$223] && 1 >= 0;
    call $fakelocal_2 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_2 := 6];
    $refArrHeap := $refArrHeap[temp$223 := $refArrHeap[temp$223][1 := $fakelocal_2]];
    str22 := temp$223;
    goto block12;
  block11:
    assert { :sourceloc "InfeasibleCode02.java",50,12,50,49 } htmlTag19 != $null;
    call temp$324, $exception := java.lang.String$java.lang.Object$toString$44(htmlTag19);
    assert { :sourceloc "InfeasibleCode02.java",50,12,50,49 } temp$324 != $null;
    call temp$425 := int$java.lang.String$compareTo$87(temp$324, $StringConst3);
    if (temp$425 == 0) {
        assert { :sourceloc "InfeasibleCode02.java",50,12,50,49 } true;
        goto block13;
    } else {
        assert { :sourceloc "InfeasibleCode02.java",50,12,50,49 } true;
    }
    goto block14;
  block13:
    call $fakelocal_3 := $new($arrayType(java.lang.String));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 2];
    temp$527 := $fakelocal_3;
    assert { :sourceloc "InfeasibleCode02.java",52,19,52,42 } 0 < $arrSizeHeap[temp$527] && 0 >= 0;
    call $fakelocal_4 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_4 := 14];
    $refArrHeap := $refArrHeap[temp$527 := $refArrHeap[temp$527][0 := $fakelocal_4]];
    assert { :sourceloc "InfeasibleCode02.java",52,19,52,42 } 1 < $arrSizeHeap[temp$527] && 1 >= 0;
    call $fakelocal_5 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_5 := 3];
    $refArrHeap := $refArrHeap[temp$527 := $refArrHeap[temp$527][1 := $fakelocal_5]];
    str26 := temp$527;
    goto block15;
  block14:
    assert { :sourceloc "InfeasibleCode02.java",54,12,54,49 } htmlTag19 != $null;
    call temp$628, $exception := java.lang.String$java.lang.Object$toString$44(htmlTag19);
    assert { :sourceloc "InfeasibleCode02.java",54,12,54,49 } temp$628 != $null;
    call temp$729 := int$java.lang.String$compareTo$87(temp$628, $StringConst4);
    if (temp$729 == 0) {
        assert { :sourceloc "InfeasibleCode02.java",54,12,54,49 } true;
        goto block16;
    } else {
        assert { :sourceloc "InfeasibleCode02.java",54,12,54,49 } true;
    }
    goto block17;
  block16:
    call $fakelocal_6 := $new($arrayType(java.lang.String));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_6 := 2];
    temp$831 := $fakelocal_6;
    assert { :sourceloc "InfeasibleCode02.java",56,19,56,42 } 0 < $arrSizeHeap[temp$831] && 0 >= 0;
    call $fakelocal_7 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_7 := 14];
    $refArrHeap := $refArrHeap[temp$831 := $refArrHeap[temp$831][0 := $fakelocal_7]];
    assert { :sourceloc "InfeasibleCode02.java",56,19,56,42 } 1 < $arrSizeHeap[temp$831] && 1 >= 0;
    call $fakelocal_8 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_8 := 3];
    $refArrHeap := $refArrHeap[temp$831 := $refArrHeap[temp$831][1 := $fakelocal_8]];
    str30 := temp$831;
  block17:
  block15:
  block12:
    return;
}

