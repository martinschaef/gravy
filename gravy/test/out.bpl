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
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique FalsePositive16 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.CharSequence, unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const unique $StringConst1 : ref extends  complete;
const unique $LongConst0 : int extends  complete;
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
procedure $new(obj_type:javaType) returns ($obj:ref);        ensures $heap[$obj,$alloc] == true;    requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$type] == obj_type;    ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;    ensures $heap[$other,$alloc] == true;    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure void$FalsePositive16$sendMessage$1889($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure java.lang.Object$FalsePositive16$getSender$1892($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.Exception$$la$init$ra$$628($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.NullPointerException$$la$init$ra$$1888($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$FalsePositive16$addFaultyMember$1891($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure int$java.lang.Object$hashCode$41($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure void$FalsePositive16$returnSender$1890($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$FalsePositive16$foo$1893($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$FalsePositive16$decideCondition$1894($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$java.lang.RuntimeException$$la$init$ra$$922($this:ref) returns ($exception:ref);    

procedure int$FalsePositive16$decisions$1895($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure void$FalsePositive16$$la$init$ra$$1896($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation void$FalsePositive16$sendMessage$1889($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var temp$1118 : ref;    
var temp$613 : ref;    
var i8 : int;    
var temp$29 : int;    
var this1 : ref;    
var temp$714 : int;    
var cx6 : ref;    
var $fakelocal_1 : ref;    
var temp$815 : int;    
var $fakelocal_2 : int;    
var destination2 : ref;    
var msg3 : ref;    
var sender4 : ref;    
var temp$05 : ref;    
var temp$512 : ref;    
var temp$17 : ref;    
var $fakelocal_3 : ref;    
var $fakelocal_0 : ref;    
var temp$411 : int;    
var temp$310 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",13,2,32,2 } true;
    this1 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",13,26,13,45 } true;
    destination2 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",13,48,13,57 } true;
    msg3 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",14,3,14,23 } true;
    sender4 := $null;
  block1:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",16,13,16,23 } true;
    call temp$05, $exception := java.lang.Object$FalsePositive16$getSender$1892(this1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",16,4,16,9 } true;
    sender4 := temp$05;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",17,8,17,21 } true;
    if (sender4 == $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",17,8,17,21 } { :clone } { :comment "thenblock" } true;
        goto block3;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",17,8,17,21 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",17,8,17,21 } true;
    goto block4;
  block3:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",18,5,19,65 } true;
    call $fakelocal_0 := $new(java.lang.Exception);
    temp$17 := $fakelocal_0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",18,20,19,64 } true;
    call $exception := void$java.lang.Exception$$la$init$ra$$628(temp$17, $StringConst0);
    if ($exception != $null) {
        temp$17 := $null;
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",18,20,19,64 } true;
    cx6 := temp$17;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,10,20,18 } true;
    i8 := 0;
  block5:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,21,20,42 } true;
    if (destination2 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,21,20,42 } true;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,21,20,42 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block2;
    }
    temp$29 := $arrSizeHeap[destination2];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,21,20,42 } true;
    if (i8 < temp$29) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,21,20,42 } { :comment "thenblock" } true;
        goto block6;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,21,20,42 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,21,20,42 } true;
    goto block7;
  block6:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,6,22,59 } true;
    temp$310 := destination2;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,6,22,59 } true;
    temp$411 := i8;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,6,22,59 } true;
    if (temp$411 < $arrSizeHeap[temp$310] && temp$411 >= 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,6,22,59 } true;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,6,22,59 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block2;
    }
    temp$512 := $refArrHeap[temp$310][temp$411];
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,6,22,59 } true;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    temp$613 := $fakelocal_1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,38,22,58 } true;
    call $exception := void$java.lang.NullPointerException$$la$init$ra$$1888(temp$613, $StringConst1);
    if ($exception != $null) {
        temp$613 := $null;
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",21,38,22,58 } true;
    call $exception := void$FalsePositive16$addFaultyMember$1891(this1, temp$512, temp$613);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,45,20,47 } true;
    temp$714 := i8;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,45,20,45 } true;
    temp$815 := temp$714 + 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,45,20,45 } true;
    i8 := temp$815;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",20,5,22,60 } true;
    goto block5;
  block7:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",23,5,23,13 } true;
    $exception := cx6;
    goto block2;
  block4:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",25,5,25,22 } true;
    call $fakelocal_2, $exception := int$java.lang.Object$hashCode$41(sender4);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",27,4,27,21 } true;
    call $fakelocal_3, $exception := java.lang.String$java.lang.Object$toString$44(sender4);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } true;
    if (sender4 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } true;
    goto block9;
  block8:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",30,5,30,24 } { :clone } true;
    call $exception := void$FalsePositive16$returnSender$1890(this1, sender4);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block2;
        } else {
            assert { :clone } true;
        }
    }
  block9:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",15,3,31,3 } true;
    goto block10;
  block2:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",15,3,31,3 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    temp$1118 := $exception;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } true;
    if (sender4 != $null) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",29,8,29,21 } { :clone } true;
    goto block12;
  block11:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",30,5,30,24 } { :clone } true;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",30,5,30,24 } { :clone } this1 != $null;
    call $exception := void$FalsePositive16$returnSender$1890(this1, sender4);
  block12:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",30,5,30,24 } { :clone } true;
    $exception := temp$1118;
    return;
  block10:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",28,5,31,3 } true;
    return;
}


implementation void$FalsePositive16$returnSender$1890($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var sender20 : ref;    
var this19 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",34,2,37,2 } true;
    this19 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",34,28,34,40 } true;
    sender20 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",34,28,34,40 } true;
    return;
}


implementation void$FalsePositive16$addFaultyMember$1891($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var object22 : ref;    
var nullPointerException23 : ref;    
var this21 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.NullPointerException;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",39,2,43,2 } true;
    this21 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",39,31,39,43 } true;
    object22 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",40,4,40,44 } true;
    nullPointerException23 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",40,4,40,44 } true;
    return;
}


implementation java.lang.Object$FalsePositive16$getSender$1892($this:ref) returns ($return:ref, $exception:ref){
    
var temp$025 : ref;    
var this24 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: java.lang.Object;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",45,2,48,2 } true;
    this24 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",45,2,48,2 } true;
    temp$025 := $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",47,3,47,14 } true;
    $return := temp$025;
    return;
}


implementation void$FalsePositive16$foo$1893($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var temp$028 : int;    
var temp$129 : int;    
var this26 : ref;    
var available27 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",55,2,59,2 } true;
    this26 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",55,18,55,31 } true;
    available27 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,8,56,21 } true;
    temp$028 := $cmpInt(available27, 0);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,8,56,21 } true;
    if (temp$028 <= 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,8,56,21 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,8,56,21 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,8,56,21 } true;
    goto block14;
  block14:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,28,56,53 } true;
    temp$129 := $cmpInt(available27, $LongConst0);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,28,56,53 } true;
    if (temp$129 >= 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,28,56,53 } { :comment "thenblock" } true;
        goto block13;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,28,56,53 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",56,28,56,53 } true;
    goto block13;
  block13:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",57,4,57,12 } true;
    return;
}


implementation void$FalsePositive16$decideCondition$1894($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref){
    
var this31 : ref;    
var truthValue32 : int;    
var $fakelocal_0 : ref;    
var temp$034 : ref;    
var notEqual33 : int;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",64,2,79,2 } true;
    this31 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",64,30,64,43 } true;
    truthValue32 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",64,46,64,61 } true;
    notEqual33 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,7,68,14 } true;
    if (notEqual33 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,7,68,14 } { :clone } { :comment "thenblock" } true;
        goto block15;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,7,68,14 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,7,68,14 } true;
    goto block16;
  block16:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,19,68,33 } true;
    if (truthValue32 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,19,68,33 } { :clone } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,19,68,33 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",68,19,68,33 } true;
    goto block15;
  block17:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",69,4,69,10 } true;
    return;
  block15:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,14,70,21 } true;
    if (notEqual33 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,14,70,21 } { :clone } { :comment "thenblock" } true;
        goto block18;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,14,70,21 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,14,70,21 } true;
    goto block19;
  block19:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,26,70,40 } true;
    if (truthValue32 == 1) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,26,70,40 } { :clone } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,26,70,40 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",70,26,70,40 } true;
    goto block18;
  block20:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",72,4,72,10 } true;
    return;
  block18:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,15,73,22 } true;
    if (notEqual33 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,15,73,22 } { :clone } { :comment "thenblock" } true;
        goto block21;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,15,73,22 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,15,73,22 } true;
    goto block22;
  block21:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,27,73,41 } true;
    if (truthValue32 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,27,73,41 } { :clone } { :comment "thenblock" } true;
        goto block23;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,27,73,41 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",73,27,73,41 } true;
    goto block22;
  block23:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",74,4,74,10 } true;
    return;
  block22:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,15,75,22 } true;
    if (notEqual33 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,15,75,22 } { :clone } { :comment "thenblock" } true;
        goto block24;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,15,75,22 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,15,75,22 } true;
    goto block25;
  block24:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,27,75,41 } true;
    if (truthValue32 == 1) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,27,75,41 } { :clone } { :comment "thenblock" } true;
        goto block26;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,27,75,41 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",75,27,75,41 } true;
    goto block25;
  block26:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",76,4,76,10 } true;
    return;
  block25:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",78,4,78,32 } true;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    temp$034 := $fakelocal_0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",78,10,78,31 } true;
    call $exception := void$java.lang.RuntimeException$$la$init$ra$$922(temp$034);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",78,10,78,31 } true;
    $exception := temp$034;
    return;
}


implementation int$FalsePositive16$decisions$1895($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var temp$139 : int;    
var lowercheck36 : int;    
var temp$240 : int;    
var temp$038 : int;    
var uppercheck37 : int;    
var temp$341 : int;    
var this35 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",82,2,87,2 } true;
    this35 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",82,23,82,40 } true;
    lowercheck36 := $in_parameter__0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",82,43,82,60 } true;
    uppercheck37 := $in_parameter__1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,13,83,22 } true;
    if (lowercheck36 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,13,83,22 } { :clone } { :comment "thenblock" } true;
        goto block27;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,13,83,22 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,13,83,22 } true;
    goto block28;
  block28:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,27,83,36 } true;
    if (uppercheck37 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,27,83,36 } { :clone } { :comment "thenblock" } true;
        goto block27;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,27,83,36 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,27,83,36 } true;
    goto block29;
  block29:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,27,83,36 } true;
    temp$038 := 0;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",83,39,83,47 } true;
    $return := temp$038;
    return;
  block27:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,13,84,22 } true;
    if (lowercheck36 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,13,84,22 } { :clone } { :comment "thenblock" } true;
        goto block30;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,13,84,22 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,13,84,22 } true;
    goto block31;
  block31:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,28,84,37 } true;
    if (uppercheck37 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,28,84,37 } { :clone } { :comment "thenblock" } true;
        goto block32;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,28,84,37 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,28,84,37 } true;
    goto block30;
  block32:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,28,84,37 } true;
    temp$139 := 1;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",84,40,84,48 } true;
    $return := temp$139;
    return;
  block30:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,19,85,28 } true;
    if (lowercheck36 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,19,85,28 } { :clone } { :comment "thenblock" } true;
        goto block33;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,19,85,28 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,19,85,28 } true;
    goto block34;
  block33:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,33,85,42 } true;
    if (uppercheck37 == 0) {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,33,85,42 } { :clone } { :comment "thenblock" } true;
        goto block34;
    } else {
        assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,33,85,42 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,33,85,42 } true;
    goto block35;
  block35:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,33,85,42 } true;
    temp$240 := 2;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,45,85,53 } true;
    $return := temp$240;
    return;
  block34:
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",85,45,85,53 } true;
    temp$341 := 3;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",86,14,86,22 } true;
    $return := temp$341;
    return;
}


implementation void$FalsePositive16$$la$init$ra$$1896($this:ref) returns ($exception:ref){
    
var this42 : ref;
    assume { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",5,-1,-1,-1 } true;
    this42 := $this;
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",5,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this42);
    assert { :sourceloc "/Users/schaef/git/jar2bpl/jar2bpl_test/regression/false_positives/fp16/FalsePositive16.java",5,-1,-1,-1 } true;
    return;
}


