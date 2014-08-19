type ref;
type javaType;
type Field $GenericType__0;
type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

const unique $type : Field javaType;
const unique $alloc : Field bool;
const unique $null : ref;
const { :sourceloc "Object.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "FalsePositives03.java",-1,-1,-1,-1 } unique FalsePositives03 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Context.java",-1,-1,-1,-1 } unique javax.naming.Context : javaType extends  unique java.lang.Object complete;
var $heap : $heap_type;


function $intToReal(x:int) returns ($ret:real);
function $intToBool(x:int) returns ($ret:bool) { (if x == 0 then false else true) }
function $refToBool(x:ref) returns ($ret:bool) { (if x == $null then false else true) }
function $boolToInt(x:bool) returns ($ret:int) { (if x == true then 1 else 0) }




procedure void$FalsePositives03$foo$1889($this:ref, $in_parameter__0:ref) returns ($exception:ref);    


implementation void$FalsePositives03$foo$1889($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var temp$03 : int;    
var ctx4 : ref;    
var this1 : ref;    
var container2 : ref;
    assume $this != $null;
    this1 := $this;
    container2 := $in_parameter__0;
    temp$03 := $boolToInt($heap[container2,$type] <: javax.naming.Context);
    if (temp$03 == 0) {
        assert { :sourceloc "FalsePositives03.java",15,13,15,40 } true;
        goto block1;
    } else {
        assert { :sourceloc "FalsePositives03.java",15,13,15,40 } true;
    }
    goto block2;
  block1:
    if (container2 == $null) {
        assert { :sourceloc "FalsePositives03.java",15,45,15,61 } true;
        goto block2;
    } else {
        assert { :sourceloc "FalsePositives03.java",15,45,15,61 } true;
    }
    goto block3;
    goto block3;
  block2:
    assert { :sourceloc "FalsePositives03.java",16,13,16,48 } $heap[container2,$type] <: javax.naming.Context;
    ctx4 := container2;
    goto block4;
  block3:
  block4:
    return;
}


