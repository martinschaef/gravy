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
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique soot.rtlib.tamiflex.DefaultHandler : javaType extends  unique java.lang.Object, unique soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.AnnotatedElement : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.AccessibleObject : javaType extends  unique java.lang.Object, unique java.lang.reflect.AnnotatedElement complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.GenericDeclaration : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.Member : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.Method : javaType extends  unique java.lang.reflect.AccessibleObject, unique java.lang.reflect.GenericDeclaration, unique java.lang.reflect.Member complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, unique java.lang.CharSequence, unique java.lang.Appendable complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.io.Serializable, unique java.lang.AbstractStringBuilder, unique java.lang.CharSequence complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.io.Serializable, unique java.lang.Comparable, unique java.lang.Object, unique java.lang.CharSequence complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.Object, unique java.lang.AutoCloseable complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.io.Flushable, unique java.io.Closeable, unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.FilterOutputStream, unique java.io.Closeable, unique java.lang.Appendable complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.Constructor : javaType extends  unique java.lang.reflect.AccessibleObject, unique java.lang.reflect.GenericDeclaration, unique java.lang.reflect.Member complete;
const unique $StringConst1 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.Type : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.Class : javaType extends  unique java.io.Serializable, unique java.lang.reflect.Type, unique java.lang.Object, unique java.lang.reflect.GenericDeclaration, unique java.lang.reflect.AnnotatedElement complete;
const unique $StringConst2 : ref extends  complete;
const unique $StringConst3 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } unique java.lang.reflect.Field : javaType extends  unique java.lang.reflect.AccessibleObject, unique java.lang.reflect.Member complete;
const unique $StringConst4 : ref extends  complete;
const unique $StringConst5 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/OpaquePredicate.class",-1,-1,-1,-1 } unique soot.rtlib.tamiflex.OpaquePredicate : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique soot.rtlib.tamiflex.ReflectiveCalls : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique java.lang.Iterable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique java.util.Collection : javaType extends  unique java.lang.Object, unique java.lang.Iterable complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique java.util.Set : javaType extends  unique java.util.Collection, unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique soot.rtlib.tamiflex.UnexpectedReflectiveCall : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique soot.rtlib.tamiflex.SootSig : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique java.util.AbstractCollection : javaType extends  unique java.util.Collection, unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique java.util.AbstractSet : javaType extends  unique java.util.AbstractCollection, unique java.util.Set complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique java.lang.Cloneable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } unique java.util.HashSet : javaType extends  unique java.io.Serializable, unique java.util.AbstractSet, unique java.util.Set, unique java.lang.Cloneable complete;
const { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } unique soot.rtlib.tamiflex.SilentHandler : javaType extends  unique java.lang.Object, unique soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.util.Map : javaType extends  unique java.lang.Object complete;
const unique $StringConst6 : ref extends  complete;
const unique $StringConst7 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.reflect.Modifier : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.ReflectiveOperationException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.NoSuchMethodException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.SecurityException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.Error : javaType extends  unique java.lang.Throwable complete;
const unique $StringConst8 : ref extends  complete;
const unique $StringConst9 : ref extends  complete;
const unique $StringConst10 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.io.Serializable, unique java.lang.AbstractStringBuilder, unique java.lang.CharSequence complete;
const unique $StringConst11 : ref extends  complete;
const unique $StringConst12 : ref extends  complete;
const unique $StringConst13 : ref extends  complete;
const unique $StringConst14 : ref extends  complete;
const unique $StringConst15 : ref extends  complete;
const unique $StringConst16 : ref extends  complete;
const unique $StringConst17 : ref extends  complete;
const unique $StringConst18 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.util.AbstractMap : javaType extends  unique java.util.Map, unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.util.concurrent.ConcurrentMap : javaType extends  unique java.util.Map, unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } unique java.util.concurrent.ConcurrentHashMap : javaType extends  unique java.io.Serializable, unique java.util.concurrent.ConcurrentMap, unique java.util.AbstractMap complete;
const unique $StringConst19 : ref extends  complete;
const unique $StringConst20 : ref extends  complete;
const { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",-1,-1,-1,-1 } unique java.lang.System : javaType extends  unique java.lang.Object complete;
const { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",-1,-1,-1,-1 } unique java.lang.ClassNotFoundException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",-1,-1,-1,-1 } unique java.lang.IllegalAccessException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const unique $StringConst21 : ref extends  complete;
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
var java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classForName319 : ref;
var java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classNewInstance320 : ref;
var java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$constructorNewInstance321 : ref;
var java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$methodInvoke322 : ref;
var java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldSet323 : ref;
var java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldGet324 : ref;
var java.util.Map$soot.rtlib.tamiflex.SootSig$constrCache328 : ref;
var java.util.Map$soot.rtlib.tamiflex.SootSig$methodCache329 : ref;
var soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325 : ref;
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
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap[$obj,$alloc] == true;    requires $heap[$obj,$alloc] == false;        ensures $heap[$obj,$type] == obj_type;    ensures $obj != $null;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];        ensures $other != $null;    ensures $heap[$other,$alloc] == true;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure void$soot.rtlib.tamiflex.DefaultHandler$$la$init$ra$$1889($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.DefaultHandler$methodInvoke$1890($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$java.lang.StringBuilder$$la$init$ra$$1902($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$java.lang.StringBuilder$append$1907($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$java.lang.StringBuilder$append$1906($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuilder$toString$1941($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.DefaultHandler$constructorNewInstance$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.DefaultHandler$classNewInstance$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.DefaultHandler$classForName$1893($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.DefaultHandler$fieldSet$1894($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.DefaultHandler$fieldGet$1895($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.OpaquePredicate$$la$init$ra$$2407($this:ref) returns ($exception:ref);    

procedure boolean$soot.rtlib.tamiflex.OpaquePredicate$getFalse$2408() returns ($return:int, $exception:ref);    

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$$la$init$ra$$2409($this:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$knownClassForName$2410($in_parameter__0:int, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.StringBuilder$java.lang.StringBuilder$append$1916($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure boolean$java.util.Set$contains$235($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$classForName$2419($in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$knownClassNewInstance$2411($in_parameter__0:int, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$java.lang.Class$getName$458($this:ref) returns ($return:ref, $exception:ref);    

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$classNewInstance$2418($in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$knownConstructorNewInstance$2412($in_parameter__0:int, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap;

procedure java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2442($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap;

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$constructorNewInstance$2420($in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$knownMethodInvoke$2413($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap;

procedure java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2443($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap;

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$methodInvoke$2421($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$knownFieldSet$2414($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2447($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$fieldSet$2422($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$knownFieldGet$2415($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$fieldGet$2423($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.ReflectiveCalls$$la$clinit$ra$$2416() returns ($exception:ref);    modifies java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classForName319, java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldSet323, java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classNewInstance320, java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$methodInvoke322, java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$constructorNewInstance321, java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldGet324;

procedure void$java.util.HashSet$$la$init$ra$$2425($this:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SilentHandler$$la$init$ra$$2514($this:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SilentHandler$methodInvoke$2515($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SilentHandler$constructorNewInstance$2516($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SilentHandler$classNewInstance$2517($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SilentHandler$classForName$2518($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SilentHandler$fieldSet$2519($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SilentHandler$fieldGet$2520($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.SootSig$$la$init$ra$$2441($this:ref) returns ($exception:ref);    

procedure java.lang.Object$java.util.Map$get$1160($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.Class$lp$$rp$$java.lang.reflect.Constructor$getParameterTypes$1089($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$lp$$rp$$soot.rtlib.tamiflex.SootSig$classesToTypeNames$2444($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $arrSizeHeap;

procedure java.lang.Class$java.lang.reflect.Constructor$getDeclaringClass$1085($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2446($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$java.util.Map$put$1161($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure int$java.lang.reflect.Method$getModifiers$1321($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.lang.reflect.Modifier$isStatic$2560($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure java.lang.Class$java.lang.reflect.Method$getDeclaringClass$1319($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$java.lang.Object$getClass$40($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.reflect.Method$getName$1320($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$lp$$rp$$java.lang.reflect.Method$getParameterTypes$1325($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.reflect.Method$java.lang.Class$getDeclaredMethod$500($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$java.lang.Class$getSuperclass$463($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.Error$$la$init$ra$$7($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Throwable$printStackTrace$21($this:ref) returns ($exception:ref);    

procedure java.lang.Class$java.lang.reflect.Method$getReturnType$1323($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$soot.rtlib.tamiflex.SootSig$getTypeName$2445($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.RuntimeException$$la$init$ra$$925($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$java.lang.Class$isArray$454($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Class$java.lang.Class$getComponentType$468($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$702($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$java.lang.reflect.Field$getDeclaringClass$1360($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$java.lang.reflect.Field$getType$1365($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.reflect.Field$getName$1361($this:ref) returns ($return:ref, $exception:ref);    

procedure void$soot.rtlib.tamiflex.SootSig$$la$clinit$ra$$2448() returns ($exception:ref);    modifies java.util.Map$soot.rtlib.tamiflex.SootSig$constrCache328, java.util.Map$soot.rtlib.tamiflex.SootSig$methodCache329;

procedure void$java.util.concurrent.ConcurrentHashMap$$la$init$ra$$2532($this:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$$la$init$ra$$2417($this:ref) returns ($exception:ref);    

procedure void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$classNewInstance$1896($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$classForName$1897($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$constructorNewInstance$1898($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$methodInvoke$1899($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$fieldSet$1900($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$fieldGet$1901($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$$la$clinit$ra$$2424() returns ($exception:ref);    modifies soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325;

procedure java.lang.String$java.lang.System$getProperty$2015($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$java.lang.Class$forName$447($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$java.lang.Class$newInstance$450($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.Error$$la$init$ra$$8($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

implementation void$soot.rtlib.tamiflex.DefaultHandler$$la$init$ra$$1889($this:ref) returns ($exception:ref){
    
var r01 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",7,-1,-1,-1 } true;
    r01 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",7,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r01);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",7,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.DefaultHandler$methodInvoke$1890($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r25 : ref;    
var $fakelocal_0 : ref;    
var $r47 : ref;    
var $r510 : ref;    
var $r713 : ref;    
var r03 : ref;    
var $r612 : ref;    
var $r36 : ref;    
var r14 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Method;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    r03 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    r14 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    r25 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    $r36 := java.io.PrintStream$java.lang.System$err236;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r47 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r47);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    call $r510, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r47, $StringConst0);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } $r510 != $null;
    call $r612, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1906($r510, r25);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } $r612 != $null;
    call $r713, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r612);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",9,-1,-1,-1 } $r36 != $null;
    call $exception := void$java.io.PrintStream$println$217($r36, $r713);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",10,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.DefaultHandler$constructorNewInstance$1891($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var $r623 : ref;    
var $r420 : ref;    
var r014 : ref;    
var $r216 : ref;    
var $r317 : ref;    
var $r522 : ref;    
var r115 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.reflect.Constructor;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    r014 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    r115 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    $r216 := java.io.PrintStream$java.lang.System$err236;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r317 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r317);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    call $r420, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r317, $StringConst1);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } $r420 != $null;
    call $r522, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1906($r420, r115);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } $r522 != $null;
    call $r623, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r522);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",13,-1,-1,-1 } $r216 != $null;
    call $exception := void$java.io.PrintStream$println$217($r216, $r623);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",14,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.DefaultHandler$classNewInstance$1892($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $r430 : ref;    
var $r327 : ref;    
var $r226 : ref;    
var $r633 : ref;    
var r024 : ref;    
var $fakelocal_0 : ref;    
var r125 : ref;    
var $r532 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Class;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    r024 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    r125 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    $r226 := java.io.PrintStream$java.lang.System$err236;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r327 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r327);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    call $r430, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r327, $StringConst2);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } $r430 != $null;
    call $r532, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1906($r430, r125);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } $r532 != $null;
    call $r633, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r532);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",17,-1,-1,-1 } $r226 != $null;
    call $exception := void$java.io.PrintStream$println$217($r226, $r633);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",18,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.DefaultHandler$classForName$1893($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var $r440 : ref;    
var r034 : ref;    
var $r643 : ref;    
var $r542 : ref;    
var $r337 : ref;    
var r135 : ref;    
var $r236 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    r034 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    r135 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    $r236 := java.io.PrintStream$java.lang.System$err236;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r337 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r337);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    call $r440, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r337, $StringConst3);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } $r440 != $null;
    call $r542, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r440, r135);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } $r542 != $null;
    call $r643, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r542);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",21,-1,-1,-1 } $r236 != $null;
    call $exception := void$java.io.PrintStream$println$217($r236, $r643);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",22,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.DefaultHandler$fieldSet$1894($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r145 : ref;    
var $fakelocal_0 : ref;    
var r044 : ref;    
var $r347 : ref;    
var $r754 : ref;    
var $r551 : ref;    
var $r653 : ref;    
var r246 : ref;    
var $r448 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Field;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    r044 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    r145 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    r246 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    $r347 := java.io.PrintStream$java.lang.System$err236;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r448 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r448);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    call $r551, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r448, $StringConst4);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } $r551 != $null;
    call $r653, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1906($r551, r246);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } $r653 != $null;
    call $r754, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r653);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",25,-1,-1,-1 } $r347 != $null;
    call $exception := void$java.io.PrintStream$println$217($r347, $r754);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",26,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.DefaultHandler$fieldGet$1895($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r156 : ref;    
var $fakelocal_0 : ref;    
var $r765 : ref;    
var $r664 : ref;    
var r257 : ref;    
var $r358 : ref;    
var $r562 : ref;    
var $r459 : ref;    
var r055 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Field;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    r055 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    r156 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    r257 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    $r358 := java.io.PrintStream$java.lang.System$err236;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r459 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r459);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    call $r562, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r459, $StringConst5);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } $r562 != $null;
    call $r664, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1906($r562, r257);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } $r664 != $null;
    call $r765, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r664);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",29,-1,-1,-1 } $r358 != $null;
    call $exception := void$java.io.PrintStream$println$217($r358, $r765);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/DefaultHandler.class",30,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.OpaquePredicate$$la$init$ra$$2407($this:ref) returns ($exception:ref){
    
var r066 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/OpaquePredicate.class",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "soot/rtlib/tamiflex/OpaquePredicate.class",3,-1,-1,-1 } true;
    r066 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/OpaquePredicate.class",3,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r066);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/OpaquePredicate.class",3,-1,-1,-1 } true;
    return;
}


implementation boolean$soot.rtlib.tamiflex.OpaquePredicate$getFalse$2408() returns ($return:int, $exception:ref){
    assert { :sourceloc "soot/rtlib/tamiflex/OpaquePredicate.class",5,-1,-1,-1 } true;
    $return := 0;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$$la$init$ra$$2409($this:ref) returns ($exception:ref){
    
var r069 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",9,-1,-1,-1 } true;
    r069 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",9,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r069);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",9,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$knownClassForName$2410($in_parameter__0:int, $in_parameter__1:ref) returns ($exception:ref){
    
var $r377 : ref;    
var $r173 : ref;    
var $r580 : ref;    
var $r479 : ref;    
var r072 : ref;    
var $z081 : int;    
var $fakelocal_0 : ref;    
var i071 : int;    
var $r274 : ref;
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    i071 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    r072 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    $r173 := java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classForName319;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r274 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r274);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    call $r377, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1916($r274, i071);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } $r377 != $null;
    call $r479, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r377, r072);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } $r479 != $null;
    call $r580, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r479);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } $r173 != $null;
    call $z081, $exception := boolean$java.util.Set$contains$235($r173, $r580);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } true;
    if ($z081 != 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } { :comment "thenblock" } true;
        goto block1;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",23,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",24,-1,-1,-1 } true;
    call $exception := void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$classForName$2419(r072);
    if ($exception != $null) {
    }
  block1:
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",26,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$knownClassNewInstance$2411($in_parameter__0:int, $in_parameter__1:ref) returns ($exception:ref){
    
var i083 : int;    
var $r592 : ref;    
var $r286 : ref;    
var r084 : ref;    
var $z094 : int;    
var $r491 : ref;    
var $r389 : ref;    
var $r185 : ref;    
var $fakelocal_0 : ref;    
var $r693 : ref;
    assume $heap[$in_parameter__1,$type] <: java.lang.Class;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    i083 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    r084 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    $r185 := java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classNewInstance320;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r286 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r286);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    call $r389, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1916($r286, i083);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } r084 != $null;
    call $r491, $exception := java.lang.String$java.lang.Class$getName$458(r084);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } $r389 != $null;
    call $r592, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r389, $r491);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } $r592 != $null;
    call $r693, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r592);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } $r185 != $null;
    call $z094, $exception := boolean$java.util.Set$contains$235($r185, $r693);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } true;
    if ($z094 != 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",30,-1,-1,-1 } true;
    call $exception := void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$classNewInstance$2418(r084);
    if ($exception != $null) {
    }
  block2:
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",32,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$knownConstructorNewInstance$2412($in_parameter__0:int, $in_parameter__1:ref) returns ($exception:ref){
    
var $r299 : ref;    
var r097 : ref;    
var i096 : int;    
var $r6106 : ref;    
var $r3102 : ref;    
var $fakelocal_0 : ref;    
var $z0107 : int;    
var $r5105 : ref;    
var $r198 : ref;    
var $r4104 : ref;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Constructor;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    i096 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    r097 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    $r198 := java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$constructorNewInstance321;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r299 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r299);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    call $r3102, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1916($r299, i096);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    call $r4104, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2442(r097);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } $r3102 != $null;
    call $r5105, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r3102, $r4104);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } $r5105 != $null;
    call $r6106, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r5105);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } $r198 != $null;
    call $z0107, $exception := boolean$java.util.Set$contains$235($r198, $r6106);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } true;
    if ($z0107 != 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } { :comment "thenblock" } true;
        goto block3;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",35,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",36,-1,-1,-1 } true;
    call $exception := void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$constructorNewInstance$2420(r097);
    if ($exception != $null) {
    }
  block3:
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",38,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$knownMethodInvoke$2413($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $r4117 : ref;    
var $r6120 : ref;    
var r0110 : ref;    
var i0109 : int;    
var $r5119 : ref;    
var $r3113 : ref;    
var $z0122 : int;    
var $r7121 : ref;    
var $fakelocal_0 : ref;    
var r1111 : ref;    
var $r2112 : ref;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$in_parameter__2,$type] <: java.lang.reflect.Method;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    i0109 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    r0110 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    r1111 := $in_parameter__2;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    $r2112 := java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$methodInvoke322;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r3113 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r3113);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    call $r4117, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1916($r3113, i0109);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    call $r5119, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2443(r0110, r1111);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } $r4117 != $null;
    call $r6120, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r4117, $r5119);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } $r6120 != $null;
    call $r7121, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r6120);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } $r2112 != $null;
    call $z0122, $exception := boolean$java.util.Set$contains$235($r2112, $r7121);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } true;
    if ($z0122 != 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",41,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",42,-1,-1,-1 } true;
    call $exception := void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$methodInvoke$2421(r0110, r1111);
    if ($exception != $null) {
    }
  block4:
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",44,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$knownFieldSet$2414($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $r4132 : ref;    
var r0126 : ref;    
var $r3129 : ref;    
var $fakelocal_0 : ref;    
var $z0137 : int;    
var i0125 : int;    
var $r2128 : ref;    
var r1127 : ref;    
var $r5134 : ref;    
var $r7136 : ref;    
var $r6135 : ref;
    assume $heap[$in_parameter__2,$type] <: java.lang.reflect.Field;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    i0125 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    r0126 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    r1127 := $in_parameter__2;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    $r2128 := java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldSet323;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r3129 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r3129);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    call $r4132, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1916($r3129, i0125);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    call $r5134, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2447(r1127);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } $r4132 != $null;
    call $r6135, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r4132, $r5134);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } $r6135 != $null;
    call $r7136, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r6135);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } $r2128 != $null;
    call $z0137, $exception := boolean$java.util.Set$contains$235($r2128, $r7136);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } true;
    if ($z0137 != 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",47,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",48,-1,-1,-1 } true;
    call $exception := void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$fieldSet$2422(r0126, r1127);
    if ($exception != $null) {
    }
  block5:
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",50,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$knownFieldGet$2415($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $r7151 : ref;    
var $r3144 : ref;    
var i0140 : int;    
var $r4147 : ref;    
var $r6150 : ref;    
var $r5149 : ref;    
var $r2143 : ref;    
var $fakelocal_0 : ref;    
var r1142 : ref;    
var r0141 : ref;    
var $z0152 : int;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$in_parameter__2,$type] <: java.lang.reflect.Field;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    i0140 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    r0141 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    r1142 := $in_parameter__2;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    $r2143 := java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldGet324;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r3144 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r3144);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    call $r4147, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1916($r3144, i0140);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    call $r5149, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2447(r1142);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } $r4147 != $null;
    call $r6150, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r4147, $r5149);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } $r6150 != $null;
    call $r7151, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r6150);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } $r2143 != $null;
    call $z0152, $exception := boolean$java.util.Set$contains$235($r2143, $r7151);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } true;
    if ($z0152 != 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } { :comment "thenblock" } true;
        goto block6;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",53,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",54,-1,-1,-1 } true;
    call $exception := void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$fieldGet$2423(r0141, r1142);
    if ($exception != $null) {
    }
  block6:
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",56,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.ReflectiveCalls$$la$clinit$ra$$2416() returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var $r3161 : ref;    
var $fakelocal_5 : ref;    
var $r4163 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_4 : ref;    
var $r1157 : ref;    
var $r0155 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_3 : ref;    
var $r2159 : ref;    
var $r5165 : ref;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",11,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.util.HashSet);
    $r0155 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",11,-1,-1,-1 } true;
    call $exception := void$java.util.HashSet$$la$init$ra$$2425($r0155);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",11,-1,-1,-1 } true;
    java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classForName319 := $r0155;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",12,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.util.HashSet);
    $r1157 := $fakelocal_1;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",12,-1,-1,-1 } true;
    call $exception := void$java.util.HashSet$$la$init$ra$$2425($r1157);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",12,-1,-1,-1 } true;
    java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$classNewInstance320 := $r1157;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",13,-1,-1,-1 } true;
    call $fakelocal_2 := $new(java.util.HashSet);
    $r2159 := $fakelocal_2;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",13,-1,-1,-1 } true;
    call $exception := void$java.util.HashSet$$la$init$ra$$2425($r2159);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",13,-1,-1,-1 } true;
    java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$constructorNewInstance321 := $r2159;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",14,-1,-1,-1 } true;
    call $fakelocal_3 := $new(java.util.HashSet);
    $r3161 := $fakelocal_3;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",14,-1,-1,-1 } true;
    call $exception := void$java.util.HashSet$$la$init$ra$$2425($r3161);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",14,-1,-1,-1 } true;
    java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$methodInvoke322 := $r3161;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",15,-1,-1,-1 } true;
    call $fakelocal_4 := $new(java.util.HashSet);
    $r4163 := $fakelocal_4;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",15,-1,-1,-1 } true;
    call $exception := void$java.util.HashSet$$la$init$ra$$2425($r4163);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",15,-1,-1,-1 } true;
    java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldSet323 := $r4163;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",16,-1,-1,-1 } true;
    call $fakelocal_5 := $new(java.util.HashSet);
    $r5165 := $fakelocal_5;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",16,-1,-1,-1 } true;
    call $exception := void$java.util.HashSet$$la$init$ra$$2425($r5165);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",16,-1,-1,-1 } true;
    java.util.Set$soot.rtlib.tamiflex.ReflectiveCalls$fieldGet324 := $r5165;
    assert { :sourceloc "soot/rtlib/tamiflex/ReflectiveCalls.class",20,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SilentHandler$$la$init$ra$$2514($this:ref) returns ($exception:ref){
    
var r0167 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",7,-1,-1,-1 } true;
    r0167 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",7,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r0167);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",7,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SilentHandler$methodInvoke$2515($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r1170 : ref;    
var r2171 : ref;    
var r0169 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Method;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",9,-1,-1,-1 } true;
    r0169 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",9,-1,-1,-1 } true;
    r1170 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",9,-1,-1,-1 } true;
    r2171 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",9,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SilentHandler$constructorNewInstance$2516($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1173 : ref;    
var r0172 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.reflect.Constructor;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",12,-1,-1,-1 } true;
    r0172 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",12,-1,-1,-1 } true;
    r1173 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",12,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SilentHandler$classNewInstance$2517($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1175 : ref;    
var r0174 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Class;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",15,-1,-1,-1 } true;
    r0174 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",15,-1,-1,-1 } true;
    r1175 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",15,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SilentHandler$classForName$2518($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1177 : ref;    
var r0176 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",18,-1,-1,-1 } true;
    r0176 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",18,-1,-1,-1 } true;
    r1177 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",18,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SilentHandler$fieldSet$2519($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r1179 : ref;    
var r0178 : ref;    
var r2180 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Field;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",21,-1,-1,-1 } true;
    r0178 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",21,-1,-1,-1 } true;
    r1179 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",21,-1,-1,-1 } true;
    r2180 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",21,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SilentHandler$fieldGet$2520($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r2183 : ref;    
var r1182 : ref;    
var r0181 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Field;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",24,-1,-1,-1 } true;
    r0181 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",24,-1,-1,-1 } true;
    r1182 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",24,-1,-1,-1 } true;
    r2183 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/SilentHandler.class",24,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.SootSig$$la$init$ra$$2441($this:ref) returns ($exception:ref){
    
var r0184 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/SootSig.class",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",10,-1,-1,-1 } true;
    r0184 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",10,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r0184);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",10,-1,-1,-1 } true;
    return;
}


implementation java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2442($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r6200 : ref;    
var $r4193 : ref;    
var r2189 : ref;    
var $r5197 : ref;    
var $fakelocal_0 : ref;    
var $r8204 : ref;    
var r0186 : ref;    
var $r7201 : ref;    
var r3190 : ref;    
var $r1187 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.reflect.Constructor;
    assume $heap[$return,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",16,-1,-1,-1 } true;
    r0186 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",16,-1,-1,-1 } true;
    $r1187 := java.util.Map$soot.rtlib.tamiflex.SootSig$constrCache328;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",16,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",16,-1,-1,-1 } $r1187 != $null;
    call $r4193, $exception := java.lang.Object$java.util.Map$get$1160($r1187, r0186);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",16,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",16,-1,-1,-1 } $heap[$r4193,$type] <: java.lang.String;
    r2189 := $r4193;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",17,-1,-1,-1 } true;
    if (r2189 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",17,-1,-1,-1 } { :comment "thenblock" } true;
        goto block7;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",17,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",18,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",18,-1,-1,-1 } r0186 != $null;
    call $r5197, $exception := java.lang.Class$lp$$rp$$java.lang.reflect.Constructor$getParameterTypes$1089(r0186);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",18,-1,-1,-1 } true;
    call r3190, $exception := java.lang.String$lp$$rp$$soot.rtlib.tamiflex.SootSig$classesToTypeNames$2444($r5197);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",19,-1,-1,-1 } true;
    call $r6200, $exception := java.lang.Class$java.lang.reflect.Constructor$getDeclaringClass$1085(r0186);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",19,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",19,-1,-1,-1 } $r6200 != $null;
    call $r7201, $exception := java.lang.String$java.lang.Class$getName$458($r6200);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",19,-1,-1,-1 } true;
    call r2189, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2446($r7201, $StringConst6, $StringConst7, r3190);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",20,-1,-1,-1 } true;
    $r8204 := java.util.Map$soot.rtlib.tamiflex.SootSig$constrCache328;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",20,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",20,-1,-1,-1 } $r8204 != $null;
    call $fakelocal_0, $exception := java.lang.Object$java.util.Map$put$1161($r8204, r0186, r2189);
    if ($exception != $null) {
    }
  block7:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",22,-1,-1,-1 } true;
    $return := r2189;
    return;
}


implementation java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2443($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var $r21255 : ref;    
var r33278 : ref;    
var $r8228 : ref;    
var $r34279 : ref;    
var $fakelocal_1 : ref;    
var $r23260 : ref;    
var r3213 : ref;    
var $r11237 : ref;    
var r4214 : ref;    
var $r7223 : ref;    
var $r16247 : ref;    
var $r25264 : ref;    
var $r27267 : ref;    
var $i0220 : int;    
var $r9229 : ref;    
var $r12239 : ref;    
var $fakelocal_0 : ref;    
var $r18250 : ref;    
var $r24263 : ref;    
var $r29272 : ref;    
var $r14243 : ref;    
var $r32277 : ref;    
var r1210 : ref;    
var $r28269 : ref;    
var $fakelocal_2 : ref;    
var r19251 : ref;    
var $fakelocal_3 : ref;    
var $r13241 : ref;    
var $r26266 : ref;    
var $r10231 : ref;    
var $z0221 : int;    
var r22257 : ref;    
var r6219 : ref;    
var $r17249 : ref;    
var $r20253 : ref;    
var r0209 : ref;    
var $r15245 : ref;    
var r2212 : ref;
    assume $heap[$return,$type] <: java.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Method;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    r0209 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    r1210 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } r1210 != $null;
    call $i0220, $exception := int$java.lang.reflect.Method$getModifiers$1321(r1210);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    call $z0221, $exception := boolean$java.lang.reflect.Modifier$isStatic$2560($i0220);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    if ($z0221 == 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } { :comment "thenblock" } true;
        goto block8;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    call $r7223, $exception := java.lang.Class$java.lang.reflect.Method$getDeclaringClass$1319(r1210);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    goto block9;
  block8:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } r0209 != $null;
    call $r7223, $exception := java.lang.Class$java.lang.Object$getClass$40(r0209);
    if ($exception != $null) {
    }
  block9:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",26,-1,-1,-1 } true;
    r2212 := $r7223;
  block10:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",29,-1,-1,-1 } true;
    r3213 := $null;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",30,-1,-1,-1 } true;
    r4214 := r2212;
  block11:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",33,-1,-1,-1 } true;
    call $r8228, $exception := java.lang.String$java.lang.reflect.Method$getName$1320(r1210);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.NoSuchMethodException) {
            assert { :clone } true;
            goto block12;
        } else {
            assert { :clone } true;
        }
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",33,-1,-1,-1 } true;
    call $r9229, $exception := java.lang.Class$lp$$rp$$java.lang.reflect.Method$getParameterTypes$1325(r1210);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.NoSuchMethodException) {
            assert { :clone } true;
            goto block12;
        } else {
            assert { :clone } true;
        }
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",33,-1,-1,-1 } true;
    if (r4214 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",33,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",33,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call r3213, $exception := java.lang.reflect.Method$java.lang.Class$getDeclaredMethod$500(r4214, $r8228, $r9229);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.SecurityException) {
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
  block14:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",36,-1,-1,-1 } true;
    goto block15;
  block12:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",34,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r10231 := $exception;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",35,-1,-1,-1 } true;
    if (r4214 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",35,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",35,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call r4214, $exception := java.lang.Class$java.lang.Class$getSuperclass$463(r4214);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
  block15:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",37,-1,-1,-1 } true;
    if (r3213 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",37,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block16;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",37,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",37,-1,-1,-1 } true;
    if (r4214 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",37,-1,-1,-1 } { :comment "thenblock" } true;
        goto block11;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",37,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block16:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",38,-1,-1,-1 } true;
    if (r3213 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",38,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block17;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",38,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.Error);
    $r11237 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.lang.StringBuilder);
    $r12239 := $fakelocal_1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r12239);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            $r12239 := $null;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    call $r13241, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r12239, $StringConst8);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    if ($r13241 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r14243, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1906($r13241, r1210);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    if ($r14243 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r15245, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r14243, $StringConst9);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    if ($r15245 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r16247, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1906($r15245, r2212);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    if ($r16247 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r17249, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907($r16247, $StringConst10);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    if ($r17249 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r18250, $exception := java.lang.String$java.lang.StringBuilder$toString$1941($r17249);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    call $exception := void$java.lang.Error$$la$init$ra$$7($r11237, $r18250);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            $r11237 := $null;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",39,-1,-1,-1 } true;
    r19251 := $r11237;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",40,-1,-1,-1 } true;
    call $exception := void$java.lang.Throwable$printStackTrace$21(r19251);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
  block17:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",43,-1,-1,-1 } true;
    $r20253 := java.util.Map$soot.rtlib.tamiflex.SootSig$methodCache329;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",43,-1,-1,-1 } true;
    if ($r20253 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",43,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",43,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r21255, $exception := java.lang.Object$java.util.Map$get$1160($r20253, r3213);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",43,-1,-1,-1 } true;
    if ($heap[$r21255,$type] <: java.lang.String) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",43,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",43,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block13;
    }
    r22257 := $r21255;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",44,-1,-1,-1 } true;
    if (r22257 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",44,-1,-1,-1 } { :comment "thenblock" } true;
        goto block18;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",44,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",45,-1,-1,-1 } true;
    if (r3213 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",45,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",45,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r23260, $exception := java.lang.Class$lp$$rp$$java.lang.reflect.Method$getParameterTypes$1325(r3213);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",45,-1,-1,-1 } true;
    call r6219, $exception := java.lang.String$lp$$rp$$soot.rtlib.tamiflex.SootSig$classesToTypeNames$2444($r23260);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
    call $r24263, $exception := java.lang.Class$java.lang.reflect.Method$getDeclaringClass$1319(r3213);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
    if ($r24263 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $r25264, $exception := java.lang.String$java.lang.Class$getName$458($r24263);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
    call $r26266, $exception := java.lang.Class$java.lang.reflect.Method$getReturnType$1323(r3213);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
    call $r27267, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$getTypeName$2445($r26266);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
    call $r28269, $exception := java.lang.String$java.lang.reflect.Method$getName$1320(r3213);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",46,-1,-1,-1 } true;
    call r22257, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2446($r25264, $r27267, $r28269, r6219);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",47,-1,-1,-1 } true;
    $r29272 := java.util.Map$soot.rtlib.tamiflex.SootSig$methodCache329;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",47,-1,-1,-1 } true;
    if ($r29272 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",47,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",47,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block13;
    }
    call $fakelocal_2, $exception := java.lang.Object$java.util.Map$put$1161($r29272, r3213, r22257);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Exception) {
            assert { :clone } true;
            goto block13;
        } else {
            assert { :clone } true;
        }
    }
  block18:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",49,-1,-1,-1 } true;
    $return := r22257;
    return;
  block13:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",50,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r32277 := $exception;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",50,-1,-1,-1 } true;
    r33278 := $r32277;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",51,-1,-1,-1 } true;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $r34279 := $fakelocal_3;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",51,-1,-1,-1 } true;
    call $exception := void$java.lang.RuntimeException$$la$init$ra$$925($r34279, r33278);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",51,-1,-1,-1 } true;
    $exception := $r34279;
    return;
}


implementation java.lang.String$lp$$rp$$soot.rtlib.tamiflex.SootSig$classesToTypeNames$2444($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r3290 : ref;    
var i2288 : int;    
var $r4305 : ref;    
var i0285 : int;    
var r0282 : ref;    
var r2286 : ref;    
var $i3292 : int;    
var i1287 : int;    
var r1284 : ref;    
var $fakelocal_0 : ref;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",56,-1,-1,-1 } true;
    r0282 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",56,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",56,-1,-1,-1 } r0282 != $null;
    $i3292 := $arrSizeHeap[r0282];
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",56,-1,-1,-1 } true;
    call $fakelocal_0 := $new($arrayType(java.lang.String));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := $i3292];
    r1284 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",57,-1,-1,-1 } true;
    i0285 := 0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } true;
    r2286 := r0282;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } r2286 != $null;
    i1287 := $arrSizeHeap[r2286];
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } true;
    i2288 := 0;
  block19:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } true;
    if (i2288 >= i1287) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } i2288 < $arrSizeHeap[r2286] && i2288 >= 0;
    r3290 := $refArrHeap[r2286][i2288];
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",59,-1,-1,-1 } true;
    call $r4305, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$getTypeName$2445(r3290);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",59,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",59,-1,-1,-1 } i0285 < $arrSizeHeap[r1284] && i0285 >= 0;
    $refArrHeap := $refArrHeap[r1284 := $refArrHeap[r1284][i0285 := $r4305]];
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",60,-1,-1,-1 } true;
    i0285 := i0285 + 1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } true;
    i2288 := i2288 + 1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",58,-1,-1,-1 } true;
    goto block19;
  block20:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",62,-1,-1,-1 } true;
    $return := r1284;
    return;
}


implementation java.lang.String$soot.rtlib.tamiflex.SootSig$getTypeName$2445($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_1 : ref;    
var $r4324 : ref;    
var r2312 : ref;    
var $r3321 : ref;    
var $fakelocal_2 : ref;    
var $z1318 : int;    
var i0310 : int;    
var $fakelocal_0 : ref;    
var $z0314 : int;    
var r1309 : ref;    
var $r8334 : ref;    
var $r10337 : ref;    
var r0307 : ref;    
var $r7333 : ref;    
var i1313 : int;
    assume $heap[$in_parameter__0,$type] <: java.lang.Class;
    assume $heap[$return,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",67,-1,-1,-1 } true;
    r0307 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",67,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",67,-1,-1,-1 } r0307 != $null;
    call $z0314, $exception := boolean$java.lang.Class$isArray$454(r0307);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",67,-1,-1,-1 } true;
    if ($z0314 == 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",67,-1,-1,-1 } { :comment "thenblock" } true;
        goto block21;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",67,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block22:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",69,-1,-1,-1 } true;
    r1309 := r0307;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",70,-1,-1,-1 } true;
    i0310 := 0;
  block23:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",71,-1,-1,-1 } true;
    if (r1309 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",71,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",71,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block24;
    }
    call $z1318, $exception := boolean$java.lang.Class$isArray$454(r1309);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block24;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",71,-1,-1,-1 } true;
    if ($z1318 == 0) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block25;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",72,-1,-1,-1 } true;
    i0310 := i0310 + 1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",73,-1,-1,-1 } true;
    call r1309, $exception := java.lang.Class$java.lang.Class$getComponentType$468(r1309);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block24;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",73,-1,-1,-1 } true;
    goto block23;
  block25:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",75,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuffer);
    $r3321 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",75,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuffer$$la$init$ra$$685($r3321);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            $r3321 := $null;
            goto block24;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",75,-1,-1,-1 } true;
    r2312 := $r3321;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",76,-1,-1,-1 } true;
    call $r4324, $exception := java.lang.String$java.lang.Class$getName$458(r1309);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block24;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",76,-1,-1,-1 } true;
    call $fakelocal_1, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$702(r2312, $r4324);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block24;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",77,-1,-1,-1 } true;
    i1313 := 0;
  block26:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",77,-1,-1,-1 } true;
    if (i1313 >= i0310) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block27;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",78,-1,-1,-1 } true;
    call $fakelocal_2, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$702(r2312, $StringConst11);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block24;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",77,-1,-1,-1 } true;
    i1313 := i1313 + 1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",77,-1,-1,-1 } true;
    goto block26;
  block27:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",80,-1,-1,-1 } true;
    call $r7333, $exception := java.lang.String$java.lang.StringBuffer$toString$738(r2312);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.Throwable) {
            assert { :clone } true;
            goto block24;
        } else {
            assert { :clone } true;
        }
    }
  block28:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",80,-1,-1,-1 } true;
    $return := $r7333;
    return;
  block24:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",81,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r8334 := $exception;
  block21:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",83,-1,-1,-1 } true;
    call $r10337, $exception := java.lang.String$java.lang.Class$getName$458(r0307);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",83,-1,-1,-1 } true;
    $return := $r10337;
    return;
}


implementation java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2446($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_9 : ref;    
var i2348 : int;    
var r1339 : ref;    
var $fakelocal_3 : ref;    
var $fakelocal_8 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_2 : ref;    
var i1347 : int;    
var r7349 : ref;    
var $r4342 : ref;    
var i0345 : int;    
var r5344 : ref;    
var $fakelocal_10 : ref;    
var $r18394 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_4 : ref;    
var r0338 : ref;    
var r6346 : ref;    
var $i3386 : int;    
var r3341 : ref;    
var $fakelocal_7 : ref;    
var r2340 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    assume $heap[$in_parameter__2,$type] <: java.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",87,-1,-1,-1 } true;
    r0338 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",87,-1,-1,-1 } true;
    r1339 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",87,-1,-1,-1 } true;
    r2340 := $in_parameter__2;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",87,-1,-1,-1 } true;
    r3341 := $in_parameter__3;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",87,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r4342 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",87,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r4342);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",87,-1,-1,-1 } true;
    r5344 := $r4342;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",88,-1,-1,-1 } true;
    call $fakelocal_1, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, $StringConst12);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",89,-1,-1,-1 } true;
    call $fakelocal_2, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, r0338);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",90,-1,-1,-1 } true;
    call $fakelocal_3, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, $StringConst13);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",91,-1,-1,-1 } true;
    call $fakelocal_4, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, r1339);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",92,-1,-1,-1 } true;
    call $fakelocal_5, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, $StringConst14);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",93,-1,-1,-1 } true;
    call $fakelocal_6, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, r2340);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",94,-1,-1,-1 } true;
    call $fakelocal_7, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, $StringConst15);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",95,-1,-1,-1 } true;
    i0345 := 0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } true;
    r6346 := r3341;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } r6346 != $null;
    i1347 := $arrSizeHeap[r6346];
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } true;
    i2348 := 0;
  block29:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } true;
    if (i2348 >= i1347) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } { :comment "thenblock" } true;
        goto block30;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } i2348 < $arrSizeHeap[r6346] && i2348 >= 0;
    r7349 := $refArrHeap[r6346][i2348];
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",97,-1,-1,-1 } true;
    i0345 := i0345 + 1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",98,-1,-1,-1 } true;
    call $fakelocal_8, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, r7349);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",99,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",99,-1,-1,-1 } r3341 != $null;
    $i3386 := $arrSizeHeap[r3341];
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",99,-1,-1,-1 } true;
    if (i0345 >= $i3386) {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",99,-1,-1,-1 } { :comment "thenblock" } true;
        goto block31;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",99,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",100,-1,-1,-1 } true;
    call $fakelocal_9, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, $StringConst16);
    if ($exception != $null) {
    }
  block31:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } true;
    i2348 := i2348 + 1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",96,-1,-1,-1 } true;
    goto block29;
  block30:
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",103,-1,-1,-1 } true;
    call $fakelocal_10, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r5344, $StringConst17);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",104,-1,-1,-1 } true;
    call $r18394, $exception := java.lang.String$java.lang.StringBuilder$toString$1941(r5344);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",104,-1,-1,-1 } true;
    $return := $r18394;
    return;
}


implementation java.lang.String$soot.rtlib.tamiflex.SootSig$sootSignature$2447($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r8412 : ref;    
var $fakelocal_7 : ref;    
var $r15426 : ref;    
var $r12420 : ref;    
var $r9413 : ref;    
var $r5405 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;    
var r0395 : ref;    
var $r1396 : ref;    
var $fakelocal_4 : ref;    
var r2398 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_3 : ref;    
var $r4404 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_5 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.reflect.Field;
    assume $heap[$return,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",108,-1,-1,-1 } true;
    r0395 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",108,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r1396 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",108,-1,-1,-1 } true;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1902($r1396);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",108,-1,-1,-1 } true;
    r2398 := $r1396;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",109,-1,-1,-1 } true;
    call $fakelocal_1, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r2398, $StringConst12);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",110,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",110,-1,-1,-1 } r0395 != $null;
    call $r4404, $exception := java.lang.Class$java.lang.reflect.Field$getDeclaringClass$1360(r0395);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",110,-1,-1,-1 } true;
    call $r5405, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$getTypeName$2445($r4404);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",110,-1,-1,-1 } true;
    call $fakelocal_2, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r2398, $r5405);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",111,-1,-1,-1 } true;
    call $fakelocal_3, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r2398, $StringConst13);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",112,-1,-1,-1 } true;
    call $r8412, $exception := java.lang.Class$java.lang.reflect.Field$getType$1365(r0395);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",112,-1,-1,-1 } true;
    call $r9413, $exception := java.lang.String$soot.rtlib.tamiflex.SootSig$getTypeName$2445($r8412);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",112,-1,-1,-1 } true;
    call $fakelocal_4, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r2398, $r9413);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",113,-1,-1,-1 } true;
    call $fakelocal_5, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r2398, $StringConst14);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",114,-1,-1,-1 } true;
    call $r12420, $exception := java.lang.String$java.lang.reflect.Field$getName$1361(r0395);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",114,-1,-1,-1 } true;
    call $fakelocal_6, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r2398, $r12420);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",115,-1,-1,-1 } true;
    call $fakelocal_7, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1907(r2398, $StringConst18);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",116,-1,-1,-1 } true;
    call $r15426, $exception := java.lang.String$java.lang.StringBuilder$toString$1941(r2398);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",116,-1,-1,-1 } true;
    $return := $r15426;
    return;
}


implementation void$soot.rtlib.tamiflex.SootSig$$la$clinit$ra$$2448() returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var $r0427 : ref;    
var $fakelocal_1 : ref;    
var $r1429 : ref;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",12,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.util.concurrent.ConcurrentHashMap);
    $r0427 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",12,-1,-1,-1 } true;
    call $exception := void$java.util.concurrent.ConcurrentHashMap$$la$init$ra$$2532($r0427);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",12,-1,-1,-1 } true;
    java.util.Map$soot.rtlib.tamiflex.SootSig$constrCache328 := $r0427;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",13,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.util.concurrent.ConcurrentHashMap);
    $r1429 := $fakelocal_1;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",13,-1,-1,-1 } true;
    call $exception := void$java.util.concurrent.ConcurrentHashMap$$la$init$ra$$2532($r1429);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",13,-1,-1,-1 } true;
    java.util.Map$soot.rtlib.tamiflex.SootSig$methodCache329 := $r1429;
    assert { :sourceloc "soot/rtlib/tamiflex/SootSig.class",13,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$$la$init$ra$$2417($this:ref) returns ($exception:ref){
    
var r0431 : ref;
    assume { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",-1,-1,-1,-1 } $this != $null;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",7,-1,-1,-1 } true;
    r0431 := $this;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",7,-1,-1,-1 } true;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r0431);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",7,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$classNewInstance$2418($in_parameter__0:ref) returns ($exception:ref){
    
var r0433 : ref;    
var $r1434 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.Class;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",23,-1,-1,-1 } true;
    r0433 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",23,-1,-1,-1 } true;
    $r1434 := soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",23,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",23,-1,-1,-1 } $r1434 != $null;
    call $exception := void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$classNewInstance$1896($r1434, r0433);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",24,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$classForName$2419($in_parameter__0:ref) returns ($exception:ref){
    
var r0436 : ref;    
var $r1437 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",27,-1,-1,-1 } true;
    r0436 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",27,-1,-1,-1 } true;
    $r1437 := soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",27,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",27,-1,-1,-1 } $r1437 != $null;
    call $exception := void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$classForName$1897($r1437, r0436);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",28,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$constructorNewInstance$2420($in_parameter__0:ref) returns ($exception:ref){
    
var $r1440 : ref;    
var r0439 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.reflect.Constructor;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",31,-1,-1,-1 } true;
    r0439 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",31,-1,-1,-1 } true;
    $r1440 := soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",31,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",31,-1,-1,-1 } $r1440 != $null;
    call $exception := void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$constructorNewInstance$1898($r1440, r0439);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",32,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$methodInvoke$2421($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r1443 : ref;    
var r0442 : ref;    
var $r2444 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Method;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",35,-1,-1,-1 } true;
    r0442 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",35,-1,-1,-1 } true;
    r1443 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",35,-1,-1,-1 } true;
    $r2444 := soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",35,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",35,-1,-1,-1 } $r2444 != $null;
    call $exception := void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$methodInvoke$1899($r2444, r0442, r1443);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",36,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$fieldSet$2422($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r1448 : ref;    
var r0447 : ref;    
var $r2449 : ref;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Field;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",39,-1,-1,-1 } true;
    r0447 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",39,-1,-1,-1 } true;
    r1448 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",39,-1,-1,-1 } true;
    $r2449 := soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",39,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",39,-1,-1,-1 } $r2449 != $null;
    call $exception := void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$fieldSet$1900($r2449, r0447, r1448);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",40,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$fieldGet$2423($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $r2454 : ref;    
var r1453 : ref;    
var r0452 : ref;
    assume $heap[$in_parameter__1,$type] <: java.lang.reflect.Field;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",43,-1,-1,-1 } true;
    r0452 := $in_parameter__0;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",43,-1,-1,-1 } true;
    r1453 := $in_parameter__1;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",43,-1,-1,-1 } true;
    $r2454 := soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",43,-1,-1,-1 } true;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",43,-1,-1,-1 } $r2454 != $null;
    call $exception := void$soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$fieldGet$1901($r2454, r0452, r1453);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",44,-1,-1,-1 } true;
    return;
}


implementation void$soot.rtlib.tamiflex.UnexpectedReflectiveCall$$la$clinit$ra$$2424() returns ($exception:ref){
    
var $r4467 : ref;    
var r1460 : ref;    
var $r5468 : ref;    
var $r6469 : ref;    
var $fakelocal_0 : ref;    
var $r3466 : ref;    
var $r2465 : ref;    
var r0459 : ref;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",12,-1,-1,-1 } true;
    call r0459, $exception := java.lang.String$java.lang.System$getProperty$2015($StringConst19, $StringConst20);
    if ($exception != $null) {
    }
  block32:
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
    call $r2465, $exception := java.lang.Class$java.lang.Class$forName$447(r0459);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.ClassNotFoundException) {
            goto block33;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
    if ($r2465 != $null) {
        assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.RuntimeException);
        goto block33;
    }
    call $r3466, $exception := java.lang.Object$java.lang.Class$newInstance$450($r2465);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.lang.IllegalAccessException) {
            goto block33;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
    if ($heap[$r3466,$type] <: soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler) {
        assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
    } else {
        assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block33;
    }
    $r4467 := $r3466;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",14,-1,-1,-1 } true;
    soot.rtlib.tamiflex.IUnexpectedReflectiveCallHandler$soot.rtlib.tamiflex.UnexpectedReflectiveCall$handler325 := $r4467;
  block34:
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",17,-1,-1,-1 } true;
    goto block35;
  block33:
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",15,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r5468 := $exception;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",15,-1,-1,-1 } true;
    r1460 := $r5468;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",16,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.Error);
    $r6469 := $fakelocal_0;
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",16,-1,-1,-1 } true;
    call $exception := void$java.lang.Error$$la$init$ra$$8($r6469, $StringConst21, r1460);
    if ($exception != $null) {
    }
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",16,-1,-1,-1 } true;
    $exception := $r6469;
    return;
  block35:
    assert { :sourceloc "soot/rtlib/tamiflex/UnexpectedReflectiveCall.class",18,-1,-1,-1 } true;
    return;
}


