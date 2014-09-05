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
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique TruePositive04 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object, unique java.lang.CharSequence complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.awt.Font : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const unique $StringConst0 : ref extends  complete;
const unique $StringConst1 : ref extends  complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.lang.Character : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.awt.image.ImageObserver : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.awt.MenuContainer : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.awt.Component : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique java.awt.image.ImageObserver, unique java.awt.MenuContainer complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.awt.Container : javaType extends  unique java.awt.Component complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique javax.swing.TransferHandler$HasGetTransferHandler : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique javax.swing.JComponent : javaType extends  unique java.awt.Container, unique javax.swing.TransferHandler$HasGetTransferHandler, unique java.io.Serializable complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique java.awt.ItemSelectable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique javax.swing.SwingConstants : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique javax.swing.AbstractButton : javaType extends  unique javax.swing.JComponent, unique javax.swing.SwingConstants, unique java.awt.ItemSelectable complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique javax.accessibility.Accessible : javaType extends  unique java.lang.Object complete;
const { :sourceloc "foo",-1,-1,-1,-1 } unique javax.swing.JToggleButton : javaType extends  unique javax.swing.AbstractButton, unique javax.accessibility.Accessible complete;
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
var int$TruePositive04$UNICODEBLOCKSIZE0 : int;
var java.awt.Font$TruePositive04$buttonFont235 : Field ref;
var javax.swing.JToggleButton$lp$$rp$$TruePositive04$buttonArray236 : Field ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;    ensures $heap[$obj,$type] == obj_type;        requires $heap[$obj,$alloc] == false;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $other != $null;    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $heap[$other,$alloc] == true;    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure void$TruePositive04$$la$clinit$ra$$1889() returns ($exception:ref);    modifies int$TruePositive04$UNICODEBLOCKSIZE0;

procedure void$TruePositive04$init$1890($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$java.awt.Font$$la$init$ra$$1897($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure void$TruePositive04$foo$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Character$$la$init$ra$$1621($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure boolean$java.lang.Character$isLetterOrDigit$1668($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure void$TruePositive04$$la$init$ra$$1892($this:ref) returns ($exception:ref);    modifies $heap, $arrSizeHeap;

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

procedure void$InfeasibleCode01$infeasible2$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $intArrHeap;

implementation void$TruePositive04$foo$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var this8 : ref;    
var temp9 : ref;    
var temp$921 : int;    
var temp$012 : int;    
var temp$416 : int;    
var temp$1022 : int;    
var $fakelocal_0 : ref;    
var j11 : int;    
var end10 : int;    
var temp$517 : int;    
var temp$719 : ref;    
var temp$214 : ref;    
var temp$618 : ref;    
var temp$820 : int;    
var temp$113 : int;    
var temp$315 : ref;
    assume { :sourceloc "foo",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "foo",57,2,67,2 } true;
    this8 := $this;
    assert { :sourceloc "foo",57,18,57,28 } true;
    temp9 := $in_parameter__0;
    assert { :sourceloc "foo",58,3,58,15 } true;
    end10 := -1;
    assert { :sourceloc "foo",59,3,59,22 } true;
    assert { :sourceloc "foo",59,3,59,22 } temp9 != $null;
    j11 := $arrSizeHeap[temp9];
  block5:
    assert { :sourceloc "foo",60,3,65,32 } true;
    assert { :sourceloc "foo",61,4,61,7 } true;
    temp$012 := j11;
    assert { :sourceloc "foo",61,4,61,4 } true;
    temp$113 := temp$012 + -1;
    assert { :sourceloc "foo",61,4,61,4 } true;
    j11 := temp$113;
    assert { :sourceloc "foo",62,31,62,54 } true;
    call $fakelocal_0 := $new(java.lang.Character);
    temp$214 := $fakelocal_0;
    assert { :sourceloc "foo",62,31,62,54 } true;
    temp$315 := temp9;
    assert { :sourceloc "foo",62,31,62,54 } true;
    temp$416 := j11;
    assert { :sourceloc "foo",62,31,62,54 } true;
    assert { :sourceloc "foo",62,31,62,54 } temp$416 < $arrSizeHeap[temp$315] && temp$416 >= 0;
    temp$517 := $intArrHeap[temp$315][temp$416];
    assert { :sourceloc "foo",62,8,62,29 } true;
    call $exception := void$java.lang.Character$$la$init$ra$$1621(temp$214, temp$517);
    assert { :sourceloc "foo",62,8,62,29 } true;
    temp$618 := temp$214;
    assert { :sourceloc "foo",62,8,62,29 } true;
    temp$719 := temp9;
    assert { :sourceloc "foo",62,8,62,29 } true;
    temp$820 := j11;
    assert { :sourceloc "foo",62,8,62,29 } true;
    assert { :sourceloc "foo",62,8,62,29 } temp$820 < $arrSizeHeap[temp$719] && temp$820 >= 0;
    temp$921 := $intArrHeap[temp$719][temp$820];
    assert { :sourceloc "foo",62,8,62,29 } true;
    call temp$1022, $exception := boolean$java.lang.Character$isLetterOrDigit$1668(temp$921);
    assert { :sourceloc "foo",62,8,62,29 } true;
    if (temp$1022 == 0) {
        assert { :sourceloc "foo",63,5,63,7 } true;
        goto block6;
    }
    assert { :sourceloc "foo",62,8,62,29 } true;
    goto block7;
  block7:
    assert { :sourceloc "foo",62,8,62,29 } true;
    assert { :sourceloc "foo",63,5,63,7 } true;
    end10 := j11;
  block6:
    assert { :sourceloc "foo",63,5,63,7 } true;
    assert { :sourceloc "foo",63,5,63,7 } true;
    assert { :sourceloc "foo",65,12,65,20 } true;
    if (end10 == -1) {
        assert { :sourceloc "foo",65,12,65,20 } true;
        goto block8;
    }
    assert { :sourceloc "foo",65,12,65,20 } true;
    goto block9;
  block8:
    assert { :sourceloc "foo",65,12,65,20 } true;
    assert { :sourceloc "foo",65,25,65,30 } true;
    if (j11 >= 0) {
        assert { :sourceloc "foo",60,3,65,32 } true;
        goto block5;
    }
    assert { :sourceloc "foo",65,25,65,30 } true;
    goto block9;
    assert { :sourceloc "foo",65,25,65,30 } true;
    goto block5;
  block9:
    assert { :sourceloc "foo",65,25,65,30 } true;
    assert { :sourceloc "foo",66,3,66,3 } true;
    j11 := end10;
    assert { :sourceloc "foo",66,3,66,3 } true;
    return;
}




implementation void$InfeasibleCode01$infeasible2$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$234 : int;    
var i31 : int;    
var temp$032 : int;    
var this29 : ref;    
var temp$133 : ref;    
var arr30 : ref;    
var temp$436 : int;    
var temp$335 : int;
    assume { :sourceloc "bar",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "bar",41,2,45,2 } true;
    this29 := $this;
    assert { :sourceloc "bar",41,26,41,35 } true;
    arr30 := $in_parameter__0;
    assert { :sourceloc "bar",42,8,42,14 } true;
    i31 := 0;
  block9:
    assert { :sourceloc "bar",42,8,42,14 } true;
    assert { :sourceloc "bar",42,17,42,29 } true;
    assert { :sourceloc "bar",42,17,42,29 } arr30 != $null;
    temp$032 := $arrSizeHeap[arr30];
    assert { :sourceloc "bar",42,17,42,29 } true;
    if (i31 <= temp$032) {
        assert { :sourceloc "bar",42,17,42,29 } true;
        goto block10;
    }
    assert { :sourceloc "bar",42,17,42,29 } true;
    goto block11;
  block10:
    assert { :sourceloc "bar",42,17,42,29 } true;
    assert { :sourceloc "bar",43,4,43,12 } true;
    temp$133 := arr30;
    assert { :sourceloc "bar",43,4,43,12 } true;
    temp$234 := i31;
    assert { :sourceloc "bar",43,7,43,9 } true;
    assert { :sourceloc "bar",43,7,43,9 } temp$234 < $arrSizeHeap[temp$133] && temp$234 >= 0;
    $intArrHeap := $intArrHeap[temp$133 := $intArrHeap[temp$133][temp$234 := i31]];
    assert { :sourceloc "bar",43,7,43,9 } true;
    assert { :sourceloc "bar",42,31,42,33 } true;
    temp$335 := i31;
    assert { :sourceloc "bar",42,31,42,31 } true;
    temp$436 := temp$335 + 1;
    assert { :sourceloc "bar",42,31,42,31 } true;
    i31 := temp$436;
    assert { :sourceloc "bar",42,3,44,3 } true;
    goto block9;
  block11:
    assert { :sourceloc "bar",42,3,44,3 } true;
    assert { :sourceloc "bar",42,3,44,3 } true;
    return;
}

