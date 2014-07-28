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
const { :SourceLocation "DeleteRowTest.java",-1,-1,-1,-1 } unique DeleteRowTest : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "DTDConstants.java",-1,-1,-1,-1 } unique javax.swing.text.html.parser.DTDConstants : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Element.java",-1,-1,-1,-1 } unique javax.swing.text.html.parser.Element : javaType extends  unique java.lang.Object, unique java.io.Serializable, unique javax.swing.text.html.parser.DTDConstants complete;
const { :SourceLocation "Throwable.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, unique java.io.Serializable complete;
const { :SourceLocation "Exception.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :SourceLocation "BadLocationException.java",-1,-1,-1,-1 } unique javax.swing.text.BadLocationException : javaType extends  unique java.lang.Exception complete;
const { :SourceLocation "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.CharSequence complete;
const unique $StringConst0 : ref extends  complete;
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
var int$DeleteRowTest$pos0 : Field int;
var int$DeleteRowTest$len0 : Field int;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap[$obj,$type] == obj_type;    ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;        requires $heap[$obj,$alloc] == false;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $heap[$other,$alloc] == true;        ensures $other != $null;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);        ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);

procedure void$DeleteRowTest$deleteTableRow$1892($this:ref) returns ($exception:ref);    

procedure javax.swing.text.html.parser.Element$DeleteRowTest$magic$1890($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure javax.swing.text.html.parser.Element$DeleteRowTest$magic$1889($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$javax.swing.text.html.parser.Element$getName$1896($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.String$equals$83($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$DeleteRowTest$num$1891($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$DeleteRowTest$$la$init$ra$$1893($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

implementation void$DeleteRowTest$deleteTableRow$1892($this:ref) returns ($exception:ref){
    
var temp$27 : ref;    
var caretPos2 : int;    
var temp$613 : int;    
var temp$815 : int;    
var temp$1017 : int;    
var temp$15 : ref;    
var startPoint8 : int;    
var temp$04 : int;    
var endPoint9 : int;    
var temp$512 : ref;    
var temp$1118 : int;    
var temp$714 : int;    
var temp$411 : int;    
var temp$916 : ref;    
var this1 : ref;    
var elementParent6 : ref;    
var temp$310 : ref;    
var element3 : ref;
    assume $this != $null;
    this1 := $this;
    assert { :SourceLocation "DeleteRowTest.java",16,16,18,20 } this1 != $null;
    caretPos2 := $heap[this1,int$DeleteRowTest$pos0];
    assert { :SourceLocation "DeleteRowTest.java",17,17,27,29 } this1 != $null;
    temp$04 := $heap[this1,int$DeleteRowTest$pos0];
    assert { :SourceLocation "DeleteRowTest.java",17,17,27,29 } this1 != $null;
    call temp$15, $exception := javax.swing.text.html.parser.Element$DeleteRowTest$magic$1890(this1, temp$04);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    element3 := temp$15;
    assert { :SourceLocation "DeleteRowTest.java",18,18,27,40 } this1 != $null;
    call temp$27, $exception := javax.swing.text.html.parser.Element$DeleteRowTest$magic$1889(this1, element3);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    elementParent6 := temp$27;
    startPoint8 := -1;
    endPoint9 := -1;
  block1:
    if (elementParent6 != $null) {
        assert { :SourceLocation "DeleteRowTest.java",21,21,10,30 } true;
        goto block2;
    } else {
        assert { :SourceLocation "DeleteRowTest.java",21,21,10,30 } true;
    }
    goto block3;
  block2:
    assert { :SourceLocation "DeleteRowTest.java",21,21,60,73 } elementParent6 != $null;
    call temp$310, $exception := java.lang.String$javax.swing.text.html.parser.Element$getName$1896(elementParent6);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    assert { :SourceLocation "DeleteRowTest.java",21,21,60,73 } temp$310 != $null;
    call temp$411, $exception := boolean$java.lang.String$equals$83(temp$310, $StringConst0);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    if (temp$411 == 0) {
        assert { :SourceLocation "DeleteRowTest.java",21,21,60,73 } true;
        goto block4;
    } else {
        assert { :SourceLocation "DeleteRowTest.java",21,21,60,73 } true;
    }
    goto block3;
    goto block4;
  block4:
    assert { :SourceLocation "DeleteRowTest.java",22,22,32,43 } elementParent6 != $null;
    call temp$512, $exception := java.lang.String$javax.swing.text.html.parser.Element$getName$1896(elementParent6);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    assert { :SourceLocation "DeleteRowTest.java",22,22,32,43 } temp$512 != $null;
    call temp$613, $exception := boolean$java.lang.String$equals$83(temp$512, $StringConst1);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    if (temp$613 == 0) {
        assert { :SourceLocation "DeleteRowTest.java",25,25,5,10 } true;
        goto block5;
    } else {
        assert { :SourceLocation "DeleteRowTest.java",22,22,32,43 } true;
    }
    goto block6;
  block6:
    assert { :SourceLocation "DeleteRowTest.java",23,23,18,35 } this1 != $null;
    call temp$714, $exception := int$DeleteRowTest$num$1891(this1, elementParent6);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    startPoint8 := temp$714;
    assert { :SourceLocation "DeleteRowTest.java",24,24,16,33 } this1 != $null;
    call temp$815, $exception := int$DeleteRowTest$num$1891(this1, elementParent6);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    endPoint9 := temp$815;
    goto block3;
  block5:
    assert { :SourceLocation "DeleteRowTest.java",27,27,21,40 } this1 != $null;
    call temp$916, $exception := javax.swing.text.html.parser.Element$DeleteRowTest$magic$1889(this1, elementParent6);
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        return;
    }
    elementParent6 := temp$916;
    goto block1;
  block3:
    if (startPoint8 > -1) {
        assert { :SourceLocation "DeleteRowTest.java",30,30,7,21 } true;
        goto block7;
    } else {
        assert { :SourceLocation "DeleteRowTest.java",30,30,7,21 } true;
    }
    goto block8;
  block7:
    if (endPoint9 > startPoint8) {
        assert { :SourceLocation "DeleteRowTest.java",30,30,26,46 } true;
        goto block9;
    } else {
        assert { :SourceLocation "DeleteRowTest.java",30,30,26,46 } true;
    }
    goto block8;
    goto block9;
  block9:
    assert { :SourceLocation "DeleteRowTest.java",31,31,20,22 } this1 != $null;
    temp$1017 := $heap[this1,int$DeleteRowTest$len0];
    if (caretPos2 >= temp$1017) {
        assert { :SourceLocation "DeleteRowTest.java",31,31,20,22 } true;
        goto block10;
    } else {
        assert { :SourceLocation "DeleteRowTest.java",31,31,20,22 } true;
    }
    goto block11;
  block10:
    assert { :SourceLocation "DeleteRowTest.java",32,32,16,18 } this1 != $null;
    temp$1118 := $heap[this1,int$DeleteRowTest$len0];
    caretPos2 := temp$1118;
  block11:
  block8:
    return;
}


implementation void$DeleteRowTest$$la$init$ra$$1893($this:ref) returns ($exception:ref){
    
var this19 : ref;
    assume $this != $null;
    this19 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(this19);
    return;
}


