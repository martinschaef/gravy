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
const { :SourceLocation "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Enum.java",-1,-1,-1,-1 } unique java.lang.Enum : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "ExampleMode.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.ExampleMode : javaType extends  unique java.lang.Enum complete;
const { :SourceLocation "ExampleMode.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.ExampleMode$1 : javaType extends  unique org.kohsuke.args4j.ExampleMode complete;
const unique CC$org$_$kohsuke$_$args4j$_$ExampleMode : ref extends  complete;
const unique $StringConst0 : ref extends  complete;
const { :SourceLocation "ExampleMode.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.ExampleMode$2 : javaType extends  unique org.kohsuke.args4j.ExampleMode complete;
const unique $StringConst1 : ref extends  complete;
const { :SourceLocation "OptionDef.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.OptionDef : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Annotation.java",-1,-1,-1,-1 } unique java.lang.annotation.Annotation : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Argument.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.Argument : javaType extends  unique java.lang.annotation.Annotation, unique java.lang.Object complete;
const { :SourceLocation "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Comparable, unique java.lang.CharSequence, unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "GenericDeclaration.java",-1,-1,-1,-1 } unique java.lang.reflect.GenericDeclaration : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Type.java",-1,-1,-1,-1 } unique java.lang.reflect.Type : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "AnnotatedElement.java",-1,-1,-1,-1 } unique java.lang.reflect.AnnotatedElement : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Class.java",-1,-1,-1,-1 } unique java.lang.Class : javaType extends  unique java.lang.reflect.Type, unique java.io.Serializable, unique java.lang.reflect.GenericDeclaration, unique java.lang.Object, unique java.lang.reflect.AnnotatedElement complete;
const { :SourceLocation "Throwable.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "Error.java",-1,-1,-1,-1 } unique java.lang.Error : javaType extends  unique java.lang.Throwable complete;
const { :SourceLocation "IllegalAnnotationError.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.IllegalAnnotationError : javaType extends  unique java.lang.Error complete;
const { :SourceLocation "Starter.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.Starter : javaType extends  unique java.lang.Object complete;
const unique $StringConst2 : ref extends  complete;
const { :SourceLocation "System.java",-1,-1,-1,-1 } unique java.lang.System : javaType extends  unique java.lang.Object complete;
const unique $StringConst3 : ref extends  complete;
const { :SourceLocation "AutoCloseable.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Closeable.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :SourceLocation "Flushable.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "OutputStream.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.io.Flushable, unique java.io.Closeable, unique java.lang.Object complete;
const { :SourceLocation "FilterOutputStream.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :SourceLocation "Appendable.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "PrintStream.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.Closeable, unique java.lang.Appendable, unique java.io.FilterOutputStream complete;
const { :SourceLocation "Exception.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :SourceLocation "ReflectiveOperationException.java",-1,-1,-1,-1 } unique java.lang.ReflectiveOperationException : javaType extends  unique java.lang.Exception complete;
const { :SourceLocation "ClassNotFoundException.java",-1,-1,-1,-1 } unique java.lang.ClassNotFoundException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const { :SourceLocation "CmdLineException.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.CmdLineException : javaType extends  unique java.lang.Exception complete;
const { :SourceLocation "RuntimeException.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :SourceLocation "NullPointerException.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :SourceLocation "CmdLineParser.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.CmdLineParser : javaType extends  unique java.lang.Object complete;
const unique CC$org$_$kohsuke$_$args4j$_$Argument : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$Option : ref extends  complete;
const unique $StringConst4 : ref extends  complete;
const { :SourceLocation "AccessibleObject.java",-1,-1,-1,-1 } unique java.lang.reflect.AccessibleObject : javaType extends  unique java.lang.Object, unique java.lang.reflect.AnnotatedElement complete;
const { :SourceLocation "Member.java",-1,-1,-1,-1 } unique java.lang.reflect.Member : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Method.java",-1,-1,-1,-1 } unique java.lang.reflect.Method : javaType extends  unique java.lang.reflect.GenericDeclaration, unique java.lang.reflect.AccessibleObject, unique java.lang.reflect.Member complete;
const { :SourceLocation "SecurityException.java",-1,-1,-1,-1 } unique java.lang.SecurityException : javaType extends  unique java.lang.RuntimeException complete;
const { :SourceLocation "IllegalArgumentException.java",-1,-1,-1,-1 } unique java.lang.IllegalArgumentException : javaType extends  unique java.lang.RuntimeException complete;
const { :SourceLocation "NoSuchMethodException.java",-1,-1,-1,-1 } unique java.lang.NoSuchMethodException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const { :SourceLocation "IllegalAccessException.java",-1,-1,-1,-1 } unique java.lang.IllegalAccessException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const { :SourceLocation "InvocationTargetException.java",-1,-1,-1,-1 } unique java.lang.reflect.InvocationTargetException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const { :SourceLocation "IndexOutOfBoundsException.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :SourceLocation "ArrayIndexOutOfBoundsException.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const unique CC$$lp$Ljava$_$lang$_$String$ : ref extends  complete;
const { :SourceLocation "AbstractStringBuilder.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.CharSequence, unique java.lang.Object, unique java.lang.Appendable complete;
const { :SourceLocation "StringBuilder.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.CharSequence, unique java.lang.AbstractStringBuilder, unique java.io.Serializable complete;
const unique $StringConst5 : ref extends  complete;
const unique $StringConst6 : ref extends  complete;
const unique $StringConst7 : ref extends  complete;
const unique $StringConst8 : ref extends  complete;
const unique $StringConst9 : ref extends  complete;
const { :SourceLocation "Field.java",-1,-1,-1,-1 } unique java.lang.reflect.Field : javaType extends  unique java.lang.reflect.AccessibleObject, unique java.lang.reflect.Member complete;
const { :SourceLocation "Iterable.java",-1,-1,-1,-1 } unique java.lang.Iterable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Collection.java",-1,-1,-1,-1 } unique java.util.Collection : javaType extends  unique java.lang.Iterable, unique java.lang.Object complete;
const { :SourceLocation "AbstractCollection.java",-1,-1,-1,-1 } unique java.util.AbstractCollection : javaType extends  unique java.util.Collection, unique java.lang.Object complete;
const { :SourceLocation "List.java",-1,-1,-1,-1 } unique java.util.List : javaType extends  unique java.util.Collection, unique java.lang.Object complete;
const { :SourceLocation "AbstractList.java",-1,-1,-1,-1 } unique java.util.AbstractList : javaType extends  unique java.util.List, unique java.util.AbstractCollection complete;
const { :SourceLocation "RandomAccess.java",-1,-1,-1,-1 } unique java.util.RandomAccess : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Cloneable.java",-1,-1,-1,-1 } unique java.lang.Cloneable : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "ArrayList.java",-1,-1,-1,-1 } unique java.util.ArrayList : javaType extends  unique java.util.List, unique java.io.Serializable, unique java.lang.Cloneable, unique java.util.AbstractList, unique java.util.RandomAccess complete;
const { :SourceLocation "ClassParser.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.ClassParser : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Comparator.java",-1,-1,-1,-1 } unique java.util.Comparator : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "CmdLineParser.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.CmdLineParser$1 : javaType extends  unique java.lang.Object, unique java.util.Comparator complete;
const { :SourceLocation "Collections.java",-1,-1,-1,-1 } unique java.util.Collections : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Setter.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.Setter : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "OptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.OptionHandler : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Number.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "Integer.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Comparable, unique java.lang.Number complete;
const { :SourceLocation "Messages.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.Messages : javaType extends  unique java.lang.Enum complete;
const { :SourceLocation "Option.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.Option : javaType extends  unique java.lang.annotation.Annotation, unique java.lang.Object complete;
const { :SourceLocation "NamedOptionDef.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.NamedOptionDef : javaType extends  unique org.kohsuke.args4j.OptionDef complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$OptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Enum : ref extends  complete;
const { :SourceLocation "EnumOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.EnumOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const { :SourceLocation "Map.java",-1,-1,-1,-1 } unique java.util.Map : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Constructor.java",-1,-1,-1,-1 } unique java.lang.reflect.Constructor : javaType extends  unique java.lang.reflect.GenericDeclaration, unique java.lang.reflect.AccessibleObject, unique java.lang.reflect.Member complete;
const { :SourceLocation "InstantiationException.java",-1,-1,-1,-1 } unique java.lang.InstantiationException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const { :SourceLocation "Iterator.java",-1,-1,-1,-1 } unique java.util.Iterator : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "Writer.java",-1,-1,-1,-1 } unique java.io.Writer : javaType extends  unique java.io.Flushable, unique java.io.Closeable, unique java.lang.Object, unique java.lang.Appendable complete;
const { :SourceLocation "OutputStreamWriter.java",-1,-1,-1,-1 } unique java.io.OutputStreamWriter : javaType extends  unique java.io.Writer complete;
const { :SourceLocation "PrintWriter.java",-1,-1,-1,-1 } unique java.io.PrintWriter : javaType extends  unique java.io.Writer complete;
const { :SourceLocation "Math.java",-1,-1,-1,-1 } unique java.lang.Math : javaType extends  unique java.lang.Object complete;
const unique $StringConst10 : ref extends  complete;
const unique $StringConst11 : ref extends  complete;
const unique $StringConst12 : ref extends  complete;
const { :SourceLocation "ResourceBundle.java",-1,-1,-1,-1 } unique java.util.ResourceBundle : javaType extends  unique java.lang.Object complete;
const unique $StringConst13 : ref extends  complete;
const { :SourceLocation "Parameters.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.Parameters : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "CmdLineParser.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.CmdLineParser$CmdLineImpl : javaType extends  unique org.kohsuke.args4j.spi.Parameters, unique java.lang.Object complete;
const { :SourceLocation "Set.java",-1,-1,-1,-1 } unique java.util.Set : javaType extends  unique java.util.Collection, unique java.lang.Object complete;
const { :SourceLocation "AbstractSet.java",-1,-1,-1,-1 } unique java.util.AbstractSet : javaType extends  unique java.util.Set, unique java.util.AbstractCollection complete;
const { :SourceLocation "HashSet.java",-1,-1,-1,-1 } unique java.util.HashSet : javaType extends  unique java.util.Set, unique java.io.Serializable, unique java.lang.Cloneable, unique java.util.AbstractSet complete;
const { :SourceLocation "AbstractMap.java",-1,-1,-1,-1 } unique java.util.AbstractMap : javaType extends  unique java.lang.Object, unique java.util.Map complete;
const { :SourceLocation "SortedMap.java",-1,-1,-1,-1 } unique java.util.SortedMap : javaType extends  unique java.lang.Object, unique java.util.Map complete;
const { :SourceLocation "NavigableMap.java",-1,-1,-1,-1 } unique java.util.NavigableMap : javaType extends  unique java.util.SortedMap, unique java.lang.Object complete;
const { :SourceLocation "TreeMap.java",-1,-1,-1,-1 } unique java.util.TreeMap : javaType extends  unique java.util.NavigableMap, unique java.io.Serializable, unique java.lang.Cloneable, unique java.util.AbstractMap complete;
const unique $StringConst14 : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$CmdLineParser : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$OptionDef : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$Setter : ref extends  complete;
const unique $StringConst15 : ref extends  complete;
const { :SourceLocation "HashMap.java",-1,-1,-1,-1 } unique java.util.HashMap : javaType extends  unique java.io.Serializable, unique java.lang.Cloneable, unique java.util.Map, unique java.util.AbstractMap complete;
const unique CC$java$_$lang$_$Boolean : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$BooleanOptionHandler : ref extends  complete;
const unique CC$java$_$io$_$File : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$FileOptionHandler : ref extends  complete;
const unique CC$java$_$net$_$URL : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$URLOptionHandler : ref extends  complete;
const unique CC$java$_$net$_$URI : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$URIOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Integer : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$IntOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Double : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$DoubleOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$String : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$StringOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Byte : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$ByteOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Character : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$CharOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Float : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$FloatOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Long : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$LongOptionHandler : ref extends  complete;
const unique CC$java$_$lang$_$Short : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$ShortOptionHandler : ref extends  complete;
const unique CC$java$_$util$_$Map : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$MapOptionHandler : ref extends  complete;
const { :SourceLocation "Logger.java",-1,-1,-1,-1 } unique java.util.logging.Logger : javaType extends  unique java.lang.Object complete;
const unique $StringConst16 : ref extends  complete;
const { :SourceLocation "EntityResolver.java",-1,-1,-1,-1 } unique org.xml.sax.EntityResolver : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "DTDHandler.java",-1,-1,-1,-1 } unique org.xml.sax.DTDHandler : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "ContentHandler.java",-1,-1,-1,-1 } unique org.xml.sax.ContentHandler : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "ErrorHandler.java",-1,-1,-1,-1 } unique org.xml.sax.ErrorHandler : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "DefaultHandler.java",-1,-1,-1,-1 } unique org.xml.sax.helpers.DefaultHandler : javaType extends  unique org.xml.sax.ContentHandler, unique org.xml.sax.EntityResolver, unique java.lang.Object, unique org.xml.sax.ErrorHandler, unique org.xml.sax.DTDHandler complete;
const { :SourceLocation "Config.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.Config$ConfigHandler : javaType extends  unique org.xml.sax.helpers.DefaultHandler complete;
const unique $StringConst17 : ref extends  complete;
const { :SourceLocation "SAXException.java",-1,-1,-1,-1 } unique org.xml.sax.SAXException : javaType extends  unique java.lang.Exception complete;
const unique $StringConst18 : ref extends  complete;
const { :SourceLocation "ConfigElement.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.ConfigElement : javaType extends  unique java.lang.Object complete;
const unique $StringConst19 : ref extends  complete;
const { :SourceLocation "Attributes.java",-1,-1,-1,-1 } unique org.xml.sax.Attributes : javaType extends  unique java.lang.Object complete;
const unique $StringConst20 : ref extends  complete;
const unique $StringConst21 : ref extends  complete;
const unique $StringConst22 : ref extends  complete;
const unique $StringConst23 : ref extends  complete;
const unique $StringConst24 : ref extends  complete;
const unique $StringConst25 : ref extends  complete;
const { :SourceLocation "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
const unique $StringConst26 : ref extends  complete;
const unique $StringConst27 : ref extends  complete;
const unique $StringConst28 : ref extends  complete;
const { :SourceLocation "Config.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.Config : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "IOException.java",-1,-1,-1,-1 } unique java.io.IOException : javaType extends  unique java.lang.Exception complete;
const { :SourceLocation "XMLReaderFactory.java",-1,-1,-1,-1 } unique org.xml.sax.helpers.XMLReaderFactory : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "XMLReader.java",-1,-1,-1,-1 } unique org.xml.sax.XMLReader : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "OneArgumentOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.OneArgumentOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const { :SourceLocation "ShortOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.ShortOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OneArgumentOptionHandler complete;
const { :SourceLocation "Short.java",-1,-1,-1,-1 } unique java.lang.Short : javaType extends  unique java.lang.Comparable, unique java.lang.Number complete;
const { :SourceLocation "NumberFormatException.java",-1,-1,-1,-1 } unique java.lang.NumberFormatException : javaType extends  unique java.lang.IllegalArgumentException complete;
const { :SourceLocation "LongOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.LongOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OneArgumentOptionHandler complete;
const { :SourceLocation "Long.java",-1,-1,-1,-1 } unique java.lang.Long : javaType extends  unique java.lang.Comparable, unique java.lang.Number complete;
const { :SourceLocation "ByteOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.ByteOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OneArgumentOptionHandler complete;
const { :SourceLocation "Byte.java",-1,-1,-1,-1 } unique java.lang.Byte : javaType extends  unique java.lang.Comparable, unique java.lang.Number complete;
const unique CC$org$_$kohsuke$_$args4j$_$Messages : ref extends  complete;
const { :SourceLocation "Format.java",-1,-1,-1,-1 } unique java.text.Format : javaType extends  unique java.lang.Cloneable, unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "MessageFormat.java",-1,-1,-1,-1 } unique java.text.MessageFormat : javaType extends  unique java.text.Format complete;
const unique $StringConst29 : ref extends  complete;
const unique $StringConst30 : ref extends  complete;
const unique $StringConst31 : ref extends  complete;
const unique $StringConst32 : ref extends  complete;
const unique $StringConst33 : ref extends  complete;
const unique $StringConst34 : ref extends  complete;
const unique $StringConst35 : ref extends  complete;
const unique $StringConst36 : ref extends  complete;
const unique $StringConst37 : ref extends  complete;
const unique $StringConst38 : ref extends  complete;
const unique $StringConst39 : ref extends  complete;
const unique $StringConst40 : ref extends  complete;
const unique $StringConst41 : ref extends  complete;
const unique $StringConst42 : ref extends  complete;
const { :SourceLocation "Messages.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.Messages : javaType extends  unique java.lang.Enum complete;
const { :SourceLocation "StringBuffer.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.CharSequence, unique java.lang.AbstractStringBuilder, unique java.io.Serializable complete;
const unique $StringConst43 : ref extends  complete;
const unique $StringConst44 : ref extends  complete;
const unique $StringConst45 : ref extends  complete;
const { :SourceLocation "URIOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.URIOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const { :SourceLocation "URI.java",-1,-1,-1,-1 } unique java.net.URI : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "URISyntaxException.java",-1,-1,-1,-1 } unique java.net.URISyntaxException : javaType extends  unique java.lang.Exception complete;
const unique $StringConst46 : ref extends  complete;
const { :SourceLocation "MapOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.MapOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const { :SourceLocation "MapSetter.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.MapSetter : javaType extends  unique org.kohsuke.args4j.spi.Setter, unique java.lang.Object complete;
const { :SourceLocation "FloatOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.FloatOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OneArgumentOptionHandler complete;
const { :SourceLocation "Float.java",-1,-1,-1,-1 } unique java.lang.Float : javaType extends  unique java.lang.Comparable, unique java.lang.Number complete;
const { :SourceLocation "URLOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.URLOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const { :SourceLocation "URL.java",-1,-1,-1,-1 } unique java.net.URL : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "MalformedURLException.java",-1,-1,-1,-1 } unique java.net.MalformedURLException : javaType extends  unique java.io.IOException complete;
const unique $StringConst47 : ref extends  complete;
const { :SourceLocation "CharOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.CharOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OneArgumentOptionHandler complete;
const { :SourceLocation "Character.java",-1,-1,-1,-1 } unique java.lang.Character : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
const { :SourceLocation "BooleanOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.BooleanOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const { :SourceLocation "Arrays.java",-1,-1,-1,-1 } unique java.util.Arrays : javaType extends  unique java.lang.Object complete;
const unique $StringConst48 : ref extends  complete;
const unique $StringConst49 : ref extends  complete;
const unique $StringConst50 : ref extends  complete;
const { :SourceLocation "IntOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.IntOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OneArgumentOptionHandler complete;
const { :SourceLocation "StringOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.StringOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const unique $StringConst51 : ref extends  complete;
const { :SourceLocation "DoubleOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.DoubleOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OneArgumentOptionHandler complete;
const { :SourceLocation "Double.java",-1,-1,-1,-1 } unique java.lang.Double : javaType extends  unique java.lang.Comparable, unique java.lang.Number complete;
const { :SourceLocation "FileOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.FileOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const { :SourceLocation "File.java",-1,-1,-1,-1 } unique java.io.File : javaType extends  unique java.lang.Comparable, unique java.io.Serializable, unique java.lang.Object complete;
const unique $StringConst52 : ref extends  complete;
const { :SourceLocation "MethodSetter.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.MethodSetter : javaType extends  unique org.kohsuke.args4j.spi.Setter, unique java.lang.Object complete;
const { :SourceLocation "Setters.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.Setters : javaType extends  unique java.lang.Object complete;
const unique $StringConst53 : ref extends  complete;
const { :SourceLocation "FieldParser.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.FieldParser : javaType extends  unique java.lang.Object complete;
const unique $StringConst54 : ref extends  complete;
const { :SourceLocation "AnnotationImpl.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.AnnotationImpl : javaType extends  unique java.lang.annotation.Annotation, unique java.lang.Object complete;
const { :SourceLocation "OptionImpl.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.OptionImpl : javaType extends  unique org.kohsuke.args4j.Option, unique org.kohsuke.args4j.spi.AnnotationImpl complete;
const unique CC$java$_$util$_$List : ref extends  complete;
const { :SourceLocation "MultiValueFieldSetter.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.MultiValueFieldSetter : javaType extends  unique org.kohsuke.args4j.spi.Setter, unique java.lang.Object complete;
const { :SourceLocation "FieldSetter.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.FieldSetter : javaType extends  unique org.kohsuke.args4j.spi.Setter, unique java.lang.Object complete;
const { :SourceLocation "LinkageError.java",-1,-1,-1,-1 } unique java.lang.LinkageError : javaType extends  unique java.lang.Error complete;
const { :SourceLocation "IncompatibleClassChangeError.java",-1,-1,-1,-1 } unique java.lang.IncompatibleClassChangeError : javaType extends  unique java.lang.LinkageError complete;
const { :SourceLocation "IllegalAccessError.java",-1,-1,-1,-1 } unique java.lang.IllegalAccessError : javaType extends  unique java.lang.IncompatibleClassChangeError complete;
const { :SourceLocation "XmlParser.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.XmlParser : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "InputSource.java",-1,-1,-1,-1 } unique org.xml.sax.InputSource : javaType extends  unique java.lang.Object complete;
const { :SourceLocation "ClassCastException.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :SourceLocation "ArgumentImpl.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.ArgumentImpl : javaType extends  unique org.kohsuke.args4j.Argument, unique org.kohsuke.args4j.spi.AnnotationImpl complete;
const { :SourceLocation "NoSuchFieldException.java",-1,-1,-1,-1 } unique java.lang.NoSuchFieldException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const unique $StringConst55 : ref extends  complete;
const unique $StringConst56 : ref extends  complete;
const { :SourceLocation "StopOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.StopOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const unique $StringConst57 : ref extends  complete;
const unique CC$org$_$kohsuke$_$args4j$_$spi$_$Messages : ref extends  complete;
const unique $StringConst58 : ref extends  complete;
const unique $StringConst59 : ref extends  complete;
const unique $StringConst60 : ref extends  complete;
const unique $StringConst61 : ref extends  complete;
const unique $StringConst62 : ref extends  complete;
const unique $StringConst63 : ref extends  complete;
const { :SourceLocation "RestOfArgumentsHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.RestOfArgumentsHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const unique $StringConst64 : ref extends  complete;
const { :SourceLocation "ParameterizedType.java",-1,-1,-1,-1 } unique java.lang.reflect.ParameterizedType : javaType extends  unique java.lang.reflect.Type, unique java.lang.Object complete;
const unique CC$java$_$lang$_$Object : ref extends  complete;
const unique $StringConst65 : ref extends  complete;
const { :SourceLocation "StringArrayOptionHandler.java",-1,-1,-1,-1 } unique org.kohsuke.args4j.spi.StringArrayOptionHandler : javaType extends  unique org.kohsuke.args4j.spi.OptionHandler complete;
const unique $StringConst66 : ref extends  complete;
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
var org.kohsuke.args4j.ExampleMode$lp$$rp$$org.kohsuke.args4j.ExampleMode$$VALUES236 : ref;
var org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$ALL234 : ref;
var org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$REQUIRED235 : ref;
var java.lang.String$org.kohsuke.args4j.OptionDef$usage238 : Field ref;
var java.lang.String$org.kohsuke.args4j.OptionDef$metaVar239 : Field ref;
var boolean$org.kohsuke.args4j.OptionDef$required0 : Field int;
var java.lang.Class$org.kohsuke.args4j.OptionDef$handler240 : Field ref;
var boolean$org.kohsuke.args4j.OptionDef$multiValued0 : Field int;
var java.io.PrintStream$java.lang.System$err299 : ref;
var org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineException$parser304 : Field ref;
var java.util.List$org.kohsuke.args4j.CmdLineParser$options305 : Field ref;
var java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306 : Field ref;
var boolean$org.kohsuke.args4j.CmdLineParser$parsingOptions0 : Field int;
var org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307 : Field ref;
var int$org.kohsuke.args4j.CmdLineParser$usageWidth0 : Field int;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_ARGUMENT401 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_OPTION402 : ref;
var java.util.Map$org.kohsuke.args4j.CmdLineParser$handlerClasses308 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNKNOWN_HANDLER403 : ref;
var org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339 : Field ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNDEFINED_OPTION395 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_ARGUMENT_ALLOWED396 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$TOO_MANY_ARGUMENTS398 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_OPTION_MISSING397 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_ARGUMENT_MISSING399 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_OPTIONHANDLER404 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_CONSTRUCTOR_ON_HANDLER405 : ref;
var java.lang.Class$java.lang.Boolean$TYPE75 : ref;
var java.lang.Class$java.lang.Integer$TYPE77 : ref;
var java.lang.Class$java.lang.Double$TYPE84 : ref;
var java.lang.Class$java.lang.Byte$TYPE211 : ref;
var java.lang.Class$java.lang.Character$TYPE210 : ref;
var java.lang.Class$java.lang.Float$TYPE83 : ref;
var java.lang.Class$java.lang.Long$TYPE76 : ref;
var java.lang.Class$java.lang.Short$TYPE82 : ref;
var java.util.logging.Logger$org.kohsuke.args4j.CmdLineParser$LOGGER309 : ref;
var org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341 : Field ref;
var org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340 : Field ref;
var org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$ConfigHandler$this$0376 : Field ref;
var org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$ConfigHandler$config374 : Field ref;
var org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375 : Field ref;
var java.lang.String$org.kohsuke.args4j.spi.ConfigElement$field379 : Field ref;
var java.lang.String$org.kohsuke.args4j.spi.ConfigElement$handler383 : Field ref;
var java.lang.String$org.kohsuke.args4j.spi.ConfigElement$metavar384 : Field ref;
var java.lang.String$org.kohsuke.args4j.spi.ConfigElement$method380 : Field ref;
var java.lang.String$org.kohsuke.args4j.spi.ConfigElement$name381 : Field ref;
var java.lang.String$org.kohsuke.args4j.spi.ConfigElement$usage382 : Field ref;
var boolean$org.kohsuke.args4j.spi.ConfigElement$multiValued0 : Field int;
var boolean$org.kohsuke.args4j.spi.ConfigElement$required0 : Field int;
var java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.ConfigElement$aliases385 : Field ref;
var java.util.List$org.kohsuke.args4j.Config$options377 : Field ref;
var java.util.List$org.kohsuke.args4j.Config$arguments378 : Field ref;
var org.kohsuke.args4j.Messages$lp$$rp$$org.kohsuke.args4j.Messages$$VALUES409 : ref;
var java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MISSING_OPERAND394 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$METADATA_ERROR400 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$FORMAT_ERROR_FOR_MAP406 : ref;
var org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MAP_HAS_NO_KEY407 : ref;
var java.lang.Class$org.kohsuke.args4j.spi.EnumOptionHandler$enumType410 : Field ref;
var org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577 : ref;
var org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_CHAR578 : ref;
var org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineParser$1$this$0417 : Field ref;
var java.util.List$org.kohsuke.args4j.spi.BooleanOptionHandler$ACCEPTABLE_VALUES419 : ref;
var org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_BOOLEAN579 : ref;
var java.lang.String$org.kohsuke.args4j.NamedOptionDef$name420 : Field ref;
var java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases421 : Field ref;
var org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$this$0432 : Field ref;
var java.lang.String$lp$$rp$$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$args431 : Field ref;
var int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0 : Field int;
var java.io.PrintStream$java.lang.System$out298 : ref;
var java.lang.String$org.kohsuke.args4j.spi.OptionImpl$name566 : Field ref;
var java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$annotationType567 : Field ref;
var java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.AnnotationImpl$aliases568 : Field ref;
var java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$handler569 : Field ref;
var java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$metaVar570 : Field ref;
var boolean$org.kohsuke.args4j.spi.AnnotationImpl$multiValued0 : Field int;
var boolean$org.kohsuke.args4j.spi.AnnotationImpl$required0 : Field int;
var java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$usage571 : Field ref;
var int$org.kohsuke.args4j.spi.AnnotationImpl$index0 : Field int;
var org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.MethodSetter$parser572 : Field ref;
var java.lang.Object$org.kohsuke.args4j.spi.MethodSetter$bean573 : Field ref;
var java.lang.reflect.Method$org.kohsuke.args4j.spi.MethodSetter$m574 : Field ref;
var org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_METHOD_SIGNATURE580 : ref;
var org.kohsuke.args4j.spi.Messages$lp$$rp$$org.kohsuke.args4j.spi.Messages$$VALUES584 : ref;
var java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583 : ref;
var org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_FIELD_SIGNATURE581 : ref;
var org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_LIST582 : ref;
var java.lang.Object$org.kohsuke.args4j.spi.FieldSetter$bean586 : Field ref;
var java.lang.reflect.Field$org.kohsuke.args4j.spi.FieldSetter$f585 : Field ref;
var java.lang.Object$org.kohsuke.args4j.spi.MultiValueFieldSetter$bean587 : Field ref;
var java.lang.reflect.Field$org.kohsuke.args4j.spi.MultiValueFieldSetter$f588 : Field ref;
var java.lang.reflect.Field$org.kohsuke.args4j.MapSetter$f589 : Field ref;
var java.lang.Object$org.kohsuke.args4j.MapSetter$bean590 : Field ref;
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


procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);        ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);

procedure void$org.kohsuke.args4j.ExampleMode$1$$la$init$ra$$1889($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.ExampleMode$$la$init$ra$$1895($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:ref) returns ($exception:ref);    

procedure boolean$org.kohsuke.args4j.ExampleMode$1$print$1890($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure org.kohsuke.args4j.ExampleMode$lp$$rp$$org.kohsuke.args4j.ExampleMode$values$1891() returns ($return:ref, $exception:ref);    modifies $heap;

procedure org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$valueOf$1892($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Enum$java.lang.Enum$valueOf$1906($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.ExampleMode$$la$init$ra$$1893($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$java.lang.Enum$$la$init$ra$$1899($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.ExampleMode$$la$clinit$ra$$1896() returns ($exception:ref);    modifies $refArrHeap, org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$REQUIRED235, $heap, org.kohsuke.args4j.ExampleMode$lp$$rp$$org.kohsuke.args4j.ExampleMode$$VALUES236, $arrSizeHeap, org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$ALL234;

procedure void$org.kohsuke.args4j.ExampleMode$2$$la$init$ra$$2131($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.OptionDef$$la$init$ra$$1911($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.Argument$usage$2115($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.Argument$metaVar$2116($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.Argument$required$2117($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.Argument$handler$2118($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.Argument$multiValued$2120($this:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.OptionDef$$la$init$ra$$1912($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref, $in_parameter__4:int) returns ($exception:ref);    modifies $heap;

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.OptionDef$usage$1913($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.OptionDef$metaVar$1914($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.OptionDef$required$1915($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.OptionDef$handler$1916($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.OptionDef$isMultiValued$1917($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$org.kohsuke.args4j.OptionDef$isArgument$1918($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($this:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure boolean$org.kohsuke.args4j.ExampleMode$2$print$2132($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Error$$la$init$ra$$7($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2134($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$java.lang.Error$$la$init$ra$$8($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2135($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Error$$la$init$ra$$9($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.Starter$$la$init$ra$$2136($this:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.Starter$main$2137($in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$java.lang.System$getProperty$2161($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.String$equals$83($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.Class$java.lang.Class$forName$447($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$java.lang.Class$newInstance$450($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$$la$init$ra$$2192($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408;

procedure boolean$org.kohsuke.args4j.Starter$hasAnnotation$2138($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$parseArgument$2208($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.reflect.Method$java.lang.Class$getMethod$493($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$java.lang.reflect.Method$invoke$1333($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.Throwable$printStackTrace$21($this:ref) returns ($exception:ref);    

procedure void$java.lang.StringBuilder$$la$init$ra$$1963($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuilder$java.lang.StringBuilder$append$1968($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuilder$toString$2002($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Throwable$getMessage$16($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintStream$print$207($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.PrintStream$println$209($this:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$printUsage$2200($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.annotation.Annotation$java.lang.Class$getAnnotation$549($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.reflect.Field$lp$$rp$$java.lang.Class$getFields$489($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.annotation.Annotation$java.lang.reflect.Field$getAnnotation$1394($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.reflect.Method$lp$$rp$$java.lang.Class$getMethods$490($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.annotation.Annotation$java.lang.reflect.Method$getAnnotation$1341($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2178($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Exception$$la$init$ra$$628($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2179($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$java.lang.Exception$$la$init$ra$$629($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2180($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Exception$$la$init$ra$$630($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2182($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2183($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineException$getParser$2184($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.util.ArrayList$$la$init$ra$$3003($this:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.ClassParser$$la$init$ra$$3185($this:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.ClassParser$parse$3186($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap;

procedure void$org.kohsuke.args4j.CmdLineParser$1$$la$init$ra$$2809($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.util.Collections$sort$2886($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$addArgument$2193($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap;

procedure boolean$org.kohsuke.args4j.spi.Setter$isMultiValued$2505($this:ref) returns ($return:int, $exception:ref);    

procedure org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$createOptionHandler$2197($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap;

procedure int$org.kohsuke.args4j.Argument$index$2119($this:ref) returns ($return:int, $exception:ref);    

procedure int$java.util.List$size$152($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.util.List$add$158($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.List$get$168($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Integer$java.lang.Integer$valueOf$970($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.Messages$format$2710($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408;

procedure java.lang.Object$java.util.List$set$169($this:ref, $in_parameter__0:int, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$addOption$2194($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408;

procedure java.lang.String$org.kohsuke.args4j.Option$name$2185($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$checkOptionNotInMap$2196($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap;

procedure java.lang.String$lp$$rp$$org.kohsuke.args4j.Option$aliases$2186($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.NamedOptionDef$$la$init$ra$$2873($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    modifies $heap;

procedure java.util.List$org.kohsuke.args4j.CmdLineParser$getArguments$2195($this:ref) returns ($return:ref, $exception:ref);    

procedure org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionByName$2210($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.spi.Setter$getType$2504($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.Class$isAssignableFrom$452($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.EnumOptionHandler$$la$init$ra$$2712($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$java.util.Map$get$1160($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.reflect.Constructor$org.kohsuke.args4j.CmdLineParser$getConstructor$2214($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap;

procedure java.lang.Object$java.lang.reflect.Constructor$newInstance$1097($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.CmdLineParser$printExample$2198($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.lang.String$org.kohsuke.args4j.CmdLineParser$printExample$2199($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.util.Iterator$java.util.List$iterator$155($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.util.Iterator$hasNext$1051($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.Iterator$next$1052($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.ExampleMode$print$1894($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.StringBuilder$java.lang.StringBuilder$append$1976($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getNameAndMeta$2436($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$java.io.OutputStreamWriter$$la$init$ra$$2302($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$printUsage$2201($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$java.io.PrintWriter$$la$init$ra$$249($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$org.kohsuke.args4j.CmdLineParser$getPrefixLen$2205($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure int$java.lang.Math$max$2840($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$printOption$2202($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$java.io.PrintWriter$flush$259($this:ref) returns ($exception:ref);    

procedure int$java.lang.Math$min$2844($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure java.util.List$org.kohsuke.args4j.CmdLineParser$wrapLines$2204($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.CmdLineParser$localize$2203($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuilder$java.lang.StringBuilder$append$1977($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.String$format$126($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintWriter$println$287($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$java.util.ResourceBundle$getString$2507($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$lp$$rp$$java.lang.String$split$118($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.String$substring$108($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure int$java.lang.String$lastIndexOf$98($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.lang.String$substring$107($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.String$trim$123($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.CmdLineParser$getOptionName$2206($this:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$org.kohsuke.args4j.CmdLineParser$parseArgument$2207($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap, $stringSizeHeap;

procedure int$java.util.Collection$size$569($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$lp$$rp$$java.util.Collection$toArray$574($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$$la$init$ra$$3047($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.util.HashSet$$la$init$ra$$3169($this:ref) returns ($exception:ref);    

procedure boolean$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$hasMore$3048($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$getCurrentToken$3049($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.CmdLineParser$isOption$2212($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$java.lang.String$indexOf$95($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionHandler$2209($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$access$100$3053($in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.OptionHandler$parseArguments$2433($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.util.Set$add$239($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.util.Set$contains$235($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.util.Map$org.kohsuke.args4j.CmdLineParser$filter$2211($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.NamedOptionDef$name$2874($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases$2875($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.util.TreeMap$$la$init$ra$$2724($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.String$startsWith$92($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.Map$put$1161($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap;

procedure void$java.lang.IllegalArgumentException$$la$init$ra$$918($this:ref) returns ($exception:ref);    

procedure void$java.lang.IllegalArgumentException$$la$init$ra$$919($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.reflect.Constructor$java.lang.Class$getConstructor$494($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$setUsageWidth$2215($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.CmdLineParser$stopOptionParsing$2216($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.CmdLineParser$printSingleLineUsage$2217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$org.kohsuke.args4j.CmdLineParser$printSingleLineUsage$2218($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$org.kohsuke.args4j.CmdLineParser$printSingleLineOption$2219($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$java.io.PrintWriter$print$271($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$java.io.PrintWriter$print$277($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.CmdLineParser$access$000$2220($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$org.kohsuke.args4j.CmdLineParser$$la$clinit$ra$$2221() returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.logging.Logger$org.kohsuke.args4j.CmdLineParser$LOGGER309, $arrSizeHeap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, java.util.Map$org.kohsuke.args4j.CmdLineParser$handlerClasses308;

procedure void$java.util.HashMap$$la$init$ra$$2960($this:ref) returns ($exception:ref);    

procedure java.util.Map$java.util.Collections$synchronizedMap$2924($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Class$getName$458($this:ref) returns ($return:ref, $exception:ref);    

procedure java.util.logging.Logger$java.util.logging.Logger$getLogger$2446($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getMetaVariable$2435($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getDefaultMetaVariable$2434($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.Config$ConfigHandler$$la$init$ra$$2600($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.xml.sax.helpers.DefaultHandler$$la$init$ra$$2602($this:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.Config$ConfigHandler$startElement$2601($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref);    modifies $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$org.kohsuke.args4j.spi.ConfigElement$$la$init$ra$$2639($this:ref) returns ($exception:ref);    modifies $heap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$org.xml.sax.Attributes$getValue$2652($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.Boolean$getBoolean$860($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.Config$$la$init$ra$$2637($this:ref) returns ($exception:ref);    modifies $heap;

procedure org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$parse$2638($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure org.xml.sax.XMLReader$org.xml.sax.helpers.XMLReaderFactory$createXMLReader$4165() returns ($return:ref, $exception:ref);    

procedure java.lang.Class$java.lang.Object$getClass$40($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.xml.sax.XMLReader$setContentHandler$4158($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.xml.sax.XMLReader$parse$4162($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$org.kohsuke.args4j.spi.ConfigElement$isInvalid$2640($this:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.ShortOptionHandler$$la$init$ra$$2698($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Short$org.kohsuke.args4j.spi.ShortOptionHandler$parse$2699($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure short$java.lang.Short$parseShort$1002($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Short$java.lang.Short$valueOf$1005($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$org.kohsuke.args4j.spi.ShortOptionHandler$parse$2700($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.LongOptionHandler$$la$init$ra$$2701($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Long$org.kohsuke.args4j.spi.LongOptionHandler$parse$2702($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure long$java.lang.Long$parseLong$875($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Long$java.lang.Long$valueOf$878($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$org.kohsuke.args4j.spi.LongOptionHandler$parse$2703($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.ByteOptionHandler$$la$init$ra$$2704($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Byte$org.kohsuke.args4j.spi.ByteOptionHandler$parse$2705($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure byte$java.lang.Byte$parseByte$1729($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Byte$java.lang.Byte$valueOf$1727($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$org.kohsuke.args4j.spi.ByteOptionHandler$parse$2706($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure org.kohsuke.args4j.Messages$lp$$rp$$org.kohsuke.args4j.Messages$values$2707() returns ($return:ref, $exception:ref);    modifies $heap;

procedure org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$valueOf$2708($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure java.util.ResourceBundle$java.util.ResourceBundle$getBundle$2513($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Enum$name$1897($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.text.MessageFormat$format$4070($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.Messages$$la$clinit$ra$$2711() returns ($exception:ref);    modifies $heap, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$FORMAT_ERROR_FOR_MAP406, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_CONSTRUCTOR_ON_HANDLER405, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$METADATA_ERROR400, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_OPTIONHANDLER404, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MAP_HAS_NO_KEY407, $arrSizeHeap, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$TOO_MANY_ARGUMENTS398, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_OPTION402, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_OPTION_MISSING397, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_ARGUMENT_ALLOWED396, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_ARGUMENT401, $refArrHeap, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNKNOWN_HANDLER403, org.kohsuke.args4j.Messages$lp$$rp$$org.kohsuke.args4j.Messages$$VALUES409, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNDEFINED_OPTION395, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MISSING_OPERAND394, org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_ARGUMENT_MISSING399;

procedure int$org.kohsuke.args4j.spi.EnumOptionHandler$parseArguments$2713($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$lp$$rp$$java.lang.Class$getEnumConstants$543($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.String$equalsIgnoreCase$86($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583;

procedure void$org.kohsuke.args4j.spi.Setter$addValue$2503($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.EnumOptionHandler$getDefaultMetaVariable$2714($this:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$702($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$701($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure int$java.lang.StringBuffer$length$689($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$delete$715($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.URIOptionHandler$$la$init$ra$$2715($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.URIOptionHandler$parseArguments$2716($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure void$java.net.URI$$la$init$ra$$3060($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.URIOptionHandler$getDefaultMetaVariable$2717($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.MapOptionHandler$$la$init$ra$$2718($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.spi.MapOptionHandler$getDefaultMetaVariable$2719($this:ref) returns ($return:ref, $exception:ref);    

procedure int$org.kohsuke.args4j.spi.MapOptionHandler$parseArguments$2720($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $heap, $arrSizeHeap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408;

procedure void$org.kohsuke.args4j.MapSetter$addValue$4049($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap;

procedure void$org.kohsuke.args4j.spi.FloatOptionHandler$$la$init$ra$$2721($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Float$org.kohsuke.args4j.spi.FloatOptionHandler$parse$2722($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure float$java.lang.Float$parseFloat$1027($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Float$java.lang.Float$valueOf$1026($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$org.kohsuke.args4j.spi.FloatOptionHandler$parse$2723($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.URLOptionHandler$$la$init$ra$$2803($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.URLOptionHandler$parseArguments$2804($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure void$java.net.URL$$la$init$ra$$1408($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.URLOptionHandler$getDefaultMetaVariable$2805($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.CharOptionHandler$$la$init$ra$$2806($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Character$org.kohsuke.args4j.spi.CharOptionHandler$parse$2807($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure char$java.lang.String$charAt$72($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure java.lang.Character$java.lang.Character$valueOf$1622($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$org.kohsuke.args4j.spi.CharOptionHandler$parse$2808($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, $refArrHeap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure int$org.kohsuke.args4j.CmdLineParser$1$compare$2810($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure int$org.kohsuke.args4j.CmdLineParser$1$compare$2811($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$org.kohsuke.args4j.spi.BooleanOptionHandler$$la$init$ra$$2869($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.BooleanOptionHandler$parseArguments$2870($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure java.lang.String$java.lang.String$toLowerCase$120($this:ref) returns ($return:ref, $exception:ref);    

procedure int$java.util.List$indexOf$172($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Boolean$java.lang.Boolean$valueOf$854($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.BooleanOptionHandler$getDefaultMetaVariable$2871($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.BooleanOptionHandler$$la$clinit$ra$$2872() returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.List$org.kohsuke.args4j.spi.BooleanOptionHandler$ACCEPTABLE_VALUES419;

procedure java.util.List$java.util.Arrays$asList$4012($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.Option$usage$2187($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.Option$metaVar$2188($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.Option$required$2189($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.Option$handler$2190($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.Option$multiValued$2191($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.NamedOptionDef$toString$2876($this:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure boolean$org.kohsuke.args4j.NamedOptionDef$isArgument$2877($this:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.IntOptionHandler$$la$init$ra$$2878($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Integer$org.kohsuke.args4j.spi.IntOptionHandler$parse$2879($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure int$java.lang.Integer$parseInt$967($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$org.kohsuke.args4j.spi.IntOptionHandler$parse$2880($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.StringOptionHandler$$la$init$ra$$2881($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.StringOptionHandler$parseArguments$2882($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.StringOptionHandler$getDefaultMetaVariable$2883($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.DoubleOptionHandler$$la$init$ra$$2955($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Double$org.kohsuke.args4j.spi.DoubleOptionHandler$parse$2956($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure double$java.lang.Double$parseDouble$1058($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Double$java.lang.Double$valueOf$1057($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$org.kohsuke.args4j.spi.DoubleOptionHandler$parse$2957($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$proceed$3050($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$getParameter$3051($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap, $stringSizeHeap;

procedure int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$size$3052($this:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.FileOptionHandler$$la$init$ra$$3054($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.FileOptionHandler$parseArguments$3055($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $heap;

procedure void$java.io.File$$la$init$ra$$2319($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.FileOptionHandler$getDefaultMetaVariable$3056($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.reflect.Method$lp$$rp$$java.lang.Class$getDeclaredMethods$497($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.MethodSetter$$la$init$ra$$3878($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure java.lang.reflect.Field$lp$$rp$$java.lang.Class$getDeclaredFields$496($this:ref) returns ($return:ref, $exception:ref);    

procedure org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3867($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure java.lang.Class$java.lang.Class$getSuperclass$463($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.OneArgumentOptionHandler$getDefaultMetaVariable$3188($this:ref) returns ($return:ref, $exception:ref);    

procedure int$org.kohsuke.args4j.spi.OneArgumentOptionHandler$parseArguments$3189($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure java.lang.Object$org.kohsuke.args4j.spi.OneArgumentOptionHandler$parse$3190($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.FieldParser$$la$init$ra$$3860($this:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.FieldParser$parse$3861($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.StringBuilder$java.lang.StringBuilder$append$1967($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.FieldParser$createConfigElement$3862($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$org.kohsuke.args4j.spi.OptionImpl$$la$init$ra$$3863($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$java.lang.reflect.Field$getName$1361($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.AnnotationImpl$$la$init$ra$$3869($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$org.kohsuke.args4j.spi.OptionImpl$name$3864($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.Setters$$la$init$ra$$3865($this:ref) returns ($exception:ref);    

procedure org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3866($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure java.lang.Class$java.lang.reflect.Field$getType$1365($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.MultiValueFieldSetter$$la$init$ra$$4041($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure void$org.kohsuke.args4j.MapSetter$$la$init$ra$$4046($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.spi.FieldSetter$$la$init$ra$$4037($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.spi.AnnotationImpl$$la$init$ra$$3868($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.AnnotationImpl$aliases$3870($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$handler$3871($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$metaVar$3872($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.spi.AnnotationImpl$multiValued$3873($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$org.kohsuke.args4j.spi.AnnotationImpl$required$3874($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$usage$3875($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$annotationType$3876($this:ref) returns ($return:ref, $exception:ref);    

procedure int$org.kohsuke.args4j.spi.AnnotationImpl$index$3877($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Class$lp$$rp$$java.lang.reflect.Method$getParameterTypes$1325($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.spi.MethodSetter$getType$3879($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.spi.MethodSetter$isMultiValued$3880($this:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.MethodSetter$addValue$3881($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap;

procedure void$java.lang.reflect.AccessibleObject$setAccessible$1540($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$java.lang.IllegalAccessError$$la$init$ra$$1856($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.Throwable$java.lang.reflect.InvocationTargetException$getTargetException$2225($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.XmlParser$$la$init$ra$$3882($this:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.XmlParser$parse$3883($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $stringSizeHeap;

procedure java.lang.String$java.net.URL$toExternalForm$1429($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.xml.sax.InputSource$$la$init$ra$$2662($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.XmlParser$parse$3884($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.reflect.AccessibleObject$org.kohsuke.args4j.XmlParser$findMethodOrField$3885($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap;

procedure void$org.kohsuke.args4j.spi.ArgumentImpl$$la$init$ra$$3886($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$java.lang.RuntimeException$$la$init$ra$$924($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure java.lang.reflect.Field$java.lang.Class$getDeclaredField$499($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure int$java.lang.String$indexOf$101($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.StopOptionHandler$$la$init$ra$$3900($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.StopOptionHandler$parseArguments$3901($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.spi.StopOptionHandler$getDefaultMetaVariable$3902($this:ref) returns ($return:ref, $exception:ref);    

procedure org.kohsuke.args4j.spi.Messages$lp$$rp$$org.kohsuke.args4j.spi.Messages$values$3903() returns ($return:ref, $exception:ref);    modifies $heap;

procedure org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$valueOf$3904($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.spi.Messages$$la$clinit$ra$$3907() returns ($exception:ref);    modifies org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_BOOLEAN579, $refArrHeap, $heap, org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_LIST582, org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_METHOD_SIGNATURE580, org.kohsuke.args4j.spi.Messages$lp$$rp$$org.kohsuke.args4j.spi.Messages$$VALUES584, $arrSizeHeap, org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_CHAR578, org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577, org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_FIELD_SIGNATURE581;

procedure void$org.kohsuke.args4j.spi.RestOfArgumentsHandler$$la$init$ra$$3908($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure int$org.kohsuke.args4j.spi.RestOfArgumentsHandler$parseArguments$3909($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$org.kohsuke.args4j.spi.Parameters$size$3058($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$org.kohsuke.args4j.spi.RestOfArgumentsHandler$getDefaultMetaVariable$3910($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.spi.FieldSetter$getType$4038($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.spi.FieldSetter$isMultiValued$4039($this:ref) returns ($return:int, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.FieldSetter$addValue$4040($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.lang.reflect.Field$set$1380($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure boolean$org.kohsuke.args4j.spi.MultiValueFieldSetter$isMultiValued$4042($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.spi.MultiValueFieldSetter$getType$4043($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.reflect.Type$java.lang.reflect.Field$getGenericType$1366($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.reflect.Type$lp$$rp$$java.lang.reflect.ParameterizedType$getActualTypeArguments$4051($this:ref) returns ($return:ref, $exception:ref);    

procedure void$org.kohsuke.args4j.spi.MultiValueFieldSetter$addValue$4044($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure void$org.kohsuke.args4j.spi.MultiValueFieldSetter$doAddValue$4045($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583, $arrSizeHeap;

procedure java.lang.Object$java.lang.reflect.Field$get$1371($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Class$org.kohsuke.args4j.MapSetter$getType$4047($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$org.kohsuke.args4j.MapSetter$isMultiValued$4048($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.lang.String$valueOf$128($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.RuntimeException$$la$init$ra$$923($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$org.kohsuke.args4j.MapSetter$addValue$4050($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$org.kohsuke.args4j.spi.StringArrayOptionHandler$$la$init$ra$$4054($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$org.kohsuke.args4j.spi.StringArrayOptionHandler$getDefaultMetaVariable$4055($this:ref) returns ($return:ref, $exception:ref);    

procedure int$org.kohsuke.args4j.spi.StringArrayOptionHandler$parseArguments$4056($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $heap, $arrSizeHeap;

procedure boolean$java.util.ArrayList$add$3022($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$java.util.ArrayList$size$3011($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$lp$$rp$$java.util.ArrayList$toArray$3018($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

implementation void$org.kohsuke.args4j.ExampleMode$1$$la$init$ra$$1889($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var r01 : ref;    
var i03 : int;    
var $ex_return : bool;    
var r12 : ref;
    assume $this != $null;
    $ex_return := false;
    r01 := $this;
    r12 := $in_parameter__0;
    i03 := $in_parameter__1;
    call $exception := void$org.kohsuke.args4j.ExampleMode$$la$init$ra$$1895(r01, r12, i03, $null);
    return;
}


implementation boolean$org.kohsuke.args4j.ExampleMode$1$print$1890($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var r19 : ref;    
var r08 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r08 := $this;
    r19 := $in_parameter__0;
    $return := 1;
    return;
}


implementation org.kohsuke.args4j.ExampleMode$lp$$rp$$org.kohsuke.args4j.ExampleMode$values$1891() returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var $r213 : ref;    
var $r011 : ref;    
var $r112 : ref;
    $ex_return := false;
    $r011 := org.kohsuke.args4j.ExampleMode$lp$$rp$$org.kohsuke.args4j.ExampleMode$$VALUES236;
    assert $r011 != $null;
    call $r112 := java.lang.Object$java.lang.Object$clone$43($r011);
    assert $heap[$r112,$type] <: $arrayType(org.kohsuke.args4j.ExampleMode);
    $r213 := $r112;
    $return := $r213;
    return;
}


implementation org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$valueOf$1892($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r014 : ref;    
var $r218 : ref;    
var $r117 : ref;
    $ex_return := false;
    r014 := $in_parameter__0;
    call $r117, $exception := java.lang.Enum$java.lang.Enum$valueOf$1906(CC$org$_$kohsuke$_$args4j$_$ExampleMode, r014);
    assert $heap[$r117,$type] <: org.kohsuke.args4j.ExampleMode;
    $r218 := $r117;
    $return := $r218;
    return;
}


implementation void$org.kohsuke.args4j.ExampleMode$$la$init$ra$$1893($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var r019 : ref;    
var $ex_return : bool;    
var i021 : int;    
var r120 : ref;
    assume $this != $null;
    $ex_return := false;
    r019 := $this;
    r120 := $in_parameter__0;
    i021 := $in_parameter__1;
    call $exception := void$java.lang.Enum$$la$init$ra$$1899(r019, r120, i021);
    return;
}


implementation void$org.kohsuke.args4j.ExampleMode$$la$init$ra$$1895($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:ref) returns ($exception:ref){
    
var r025 : ref;    
var r126 : ref;    
var r228 : ref;    
var $ex_return : bool;    
var i027 : int;
    assume $this != $null;
    $ex_return := false;
    r025 := $this;
    r126 := $in_parameter__0;
    i027 := $in_parameter__1;
    r228 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.ExampleMode$$la$init$ra$$1893(r025, r126, i027);
    return;
}


implementation void$org.kohsuke.args4j.ExampleMode$$la$clinit$ra$$1896() returns ($exception:ref){
    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $r032 : ref;    
var $ex_return : bool;    
var $fakelocal_1 : ref;    
var $r344 : ref;    
var $r136 : ref;    
var $r241 : ref;    
var $r447 : ref;
    $ex_return := false;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.ExampleMode$1];
    $r032 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.ExampleMode$1$$la$init$ra$$1889($r032, $StringConst0, 0);
    org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$ALL234 := $r032;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.ExampleMode$2];
    $r136 := $fakelocal_1;
    call $exception := void$org.kohsuke.args4j.ExampleMode$2$$la$init$ra$$2131($r136, $StringConst1, 1);
    org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$REQUIRED235 := $r136;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(org.kohsuke.args4j.ExampleMode)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 2];
    $r241 := $fakelocal_2;
    $r344 := org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$ALL234;
    assert 0 < $arrSizeHeap[$r241] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r241 := $refArrHeap[$r241][0 := $r344]];
    $r447 := org.kohsuke.args4j.ExampleMode$org.kohsuke.args4j.ExampleMode$REQUIRED235;
    assert 1 < $arrSizeHeap[$r241] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r241 := $refArrHeap[$r241][1 := $r447]];
    org.kohsuke.args4j.ExampleMode$lp$$rp$$org.kohsuke.args4j.ExampleMode$$VALUES236 := $r241;
    return;
}


implementation void$org.kohsuke.args4j.OptionDef$$la$init$ra$$1911($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var z050 : int;    
var r048 : ref;    
var $z159 : int;    
var $r458 : ref;    
var $r357 : ref;    
var $z363 : int;    
var $ex_return : bool;    
var r149 : ref;    
var $r560 : ref;    
var $z261 : int;
    assume $this != $null;
    $ex_return := false;
    r048 := $this;
    r149 := $in_parameter__0;
    z050 := $in_parameter__1;
    assert r149 != $null;
    call $r357, $exception := java.lang.String$org.kohsuke.args4j.Argument$usage$2115(r149);
    assert r149 != $null;
    call $r458, $exception := java.lang.String$org.kohsuke.args4j.Argument$metaVar$2116(r149);
    assert r149 != $null;
    call $z159, $exception := boolean$org.kohsuke.args4j.Argument$required$2117(r149);
    assert r149 != $null;
    call $r560, $exception := java.lang.Class$org.kohsuke.args4j.Argument$handler$2118(r149);
    assert r149 != $null;
    call $z261, $exception := boolean$org.kohsuke.args4j.Argument$multiValued$2120(r149);
    if ($z261 != 0) {
        goto block1;
    }
    if (z050 == 0) {
        goto block2;
    }
  block1:
    $z363 := 1;
    goto block3;
  block2:
    $z363 := 0;
  block3:
    call $exception := void$org.kohsuke.args4j.OptionDef$$la$init$ra$$1912(r048, $r357, $r458, $z159, $r560, $z363);
    return;
}


implementation void$org.kohsuke.args4j.OptionDef$$la$init$ra$$1912($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref, $in_parameter__4:int) returns ($exception:ref){
    
var $ex_return : bool;    
var r165 : ref;    
var r064 : ref;    
var r368 : ref;    
var z169 : int;    
var r266 : ref;    
var z067 : int;
    assume $this != $null;
    $ex_return := false;
    r064 := $this;
    r165 := $in_parameter__0;
    r266 := $in_parameter__1;
    z067 := $in_parameter__2;
    r368 := $in_parameter__3;
    z169 := $in_parameter__4;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r064);
    assert r064 != $null;
    $heap := $heap[r064,java.lang.String$org.kohsuke.args4j.OptionDef$usage238 := r165];
    assert r064 != $null;
    $heap := $heap[r064,java.lang.String$org.kohsuke.args4j.OptionDef$metaVar239 := r266];
    assert r064 != $null;
    $heap := $heap[r064,boolean$org.kohsuke.args4j.OptionDef$required0 := z067];
    assert r064 != $null;
    $heap := $heap[r064,java.lang.Class$org.kohsuke.args4j.OptionDef$handler240 := r368];
    assert r064 != $null;
    $heap := $heap[r064,boolean$org.kohsuke.args4j.OptionDef$multiValued0 := z169];
    return;
}


implementation java.lang.String$org.kohsuke.args4j.OptionDef$usage$1913($this:ref) returns ($return:ref, $exception:ref){
    
var r081 : ref;    
var $r183 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r081 := $this;
    assert r081 != $null;
    $r183 := $heap[r081,java.lang.String$org.kohsuke.args4j.OptionDef$usage238];
    $return := $r183;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.OptionDef$metaVar$1914($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r084 : ref;    
var $r186 : ref;
    assume $this != $null;
    $ex_return := false;
    r084 := $this;
    assert r084 != $null;
    $r186 := $heap[r084,java.lang.String$org.kohsuke.args4j.OptionDef$metaVar239];
    $return := $r186;
    return;
}


implementation boolean$org.kohsuke.args4j.OptionDef$required$1915($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var $z089 : int;    
var r087 : ref;
    assume $this != $null;
    $ex_return := false;
    r087 := $this;
    assert r087 != $null;
    $z089 := $heap[r087,boolean$org.kohsuke.args4j.OptionDef$required0];
    $return := $z089;
    return;
}


implementation java.lang.Class$org.kohsuke.args4j.OptionDef$handler$1916($this:ref) returns ($return:ref, $exception:ref){
    
var $r192 : ref;    
var r090 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r090 := $this;
    assert r090 != $null;
    $r192 := $heap[r090,java.lang.Class$org.kohsuke.args4j.OptionDef$handler240];
    $return := $r192;
    return;
}


implementation boolean$org.kohsuke.args4j.OptionDef$isMultiValued$1917($this:ref) returns ($return:int, $exception:ref){
    
var $z095 : int;    
var r093 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r093 := $this;
    assert r093 != $null;
    $z095 := $heap[r093,boolean$org.kohsuke.args4j.OptionDef$multiValued0];
    $return := $z095;
    return;
}


implementation boolean$org.kohsuke.args4j.OptionDef$isArgument$1918($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r096 : ref;
    assume $this != $null;
    $ex_return := false;
    r096 := $this;
    $return := 1;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($this:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_0 : ref;    
var $r1100 : ref;    
var $ex_return : bool;    
var $r2102 : ref;    
var r098 : ref;
    assume $this != $null;
    $ex_return := false;
    r098 := $this;
    assert r098 != $null;
    call $r1100, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$metaVar$1914(r098);
    if ($r1100 == $null) {
        goto block4;
    }
    assert r098 != $null;
    call $r2102, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$metaVar$1914(r098);
    goto block5;
  block4:
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 3];
    $r2102 := $fakelocal_0;
  block5:
    $return := $r2102;
    return;
}


implementation void$org.kohsuke.args4j.ExampleMode$2$$la$init$ra$$2131($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var r1104 : ref;    
var i0105 : int;    
var $ex_return : bool;    
var r0103 : ref;
    assume $this != $null;
    $ex_return := false;
    r0103 := $this;
    r1104 := $in_parameter__0;
    i0105 := $in_parameter__1;
    call $exception := void$org.kohsuke.args4j.ExampleMode$$la$init$ra$$1895(r0103, r1104, i0105, $null);
    return;
}


implementation boolean$org.kohsuke.args4j.ExampleMode$2$print$2132($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $z0113 : int;    
var r1111 : ref;    
var r0110 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r0110 := $this;
    r1111 := $in_parameter__0;
    assert r1111 != $null;
    call $z0113, $exception := boolean$org.kohsuke.args4j.OptionDef$required$1915(r1111);
    $return := $z0113;
    return;
}


implementation void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r0114 : ref;    
var r1115 : ref;
    assume $this != $null;
    $ex_return := false;
    r0114 := $this;
    r1115 := $in_parameter__0;
    call $exception := void$java.lang.Error$$la$init$ra$$7(r0114, r1115);
    return;
}


implementation void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2134($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r0118 : ref;    
var $ex_return : bool;    
var r2120 : ref;    
var r1119 : ref;
    assume $this != $null;
    $ex_return := false;
    r0118 := $this;
    r1119 := $in_parameter__0;
    r2120 := $in_parameter__1;
    call $exception := void$java.lang.Error$$la$init$ra$$8(r0118, r1119, r2120);
    return;
}


implementation void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2135($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r0124 : ref;    
var $ex_return : bool;    
var r1125 : ref;
    assume $this != $null;
    $ex_return := false;
    r0124 := $this;
    r1125 := $in_parameter__0;
    call $exception := void$java.lang.Error$$la$init$ra$$9(r0124, r1125);
    return;
}


implementation void$org.kohsuke.args4j.Starter$$la$init$ra$$2136($this:ref) returns ($exception:ref){
    
var r0128 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r0128 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r0128);
    return;
}


implementation void$org.kohsuke.args4j.Starter$main$2137($in_parameter__0:ref) returns ($exception:ref){
    
var r15184 : ref;    
var $r40225 : ref;    
var r37220 : ref;    
var r56253 : ref;    
var $r32215 : ref;    
var r47236 : ref;    
var z4207 : int;    
var $r53248 : ref;    
var $fakelocal_4 : ref;    
var $r18187 : ref;    
var r27209 : ref;    
var $r11179 : ref;    
var $fakelocal_3 : ref;    
var $ex_return : bool;    
var $fakelocal_8 : ref;    
var r1132 : ref;    
var r29211 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $r46235 : ref;    
var $r54251 : ref;    
var $r44233 : ref;    
var $r24201 : ref;    
var z1135 : int;    
var $r14183 : ref;    
var $r16185 : ref;    
var r17186 : ref;    
var $r30213 : ref;    
var z2140 : int;    
var $z3152 : int;    
var r3137 : ref;    
var $r22195 : ref;    
var $r52246 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_9 : ref;    
var $r20189 : ref;    
var $r55252 : ref;    
var $r9160 : ref;    
var r5141 : ref;    
var r6142 : ref;    
var r19188 : ref;    
var r21190 : ref;    
var $fakelocal_6 : ref;    
var $r45234 : ref;    
var $r28210 : ref;    
var $r39222 : ref;    
var $r8153 : ref;    
var r31214 : ref;    
var $r34217 : ref;    
var $r49239 : ref;    
var $r42229 : ref;    
var $r50240 : ref;    
var r2133 : ref;    
var $r43231 : ref;    
var r23197 : ref;    
var r35218 : ref;    
var r33216 : ref;    
var $fakelocal_11 : ref;    
var r4138 : ref;    
var $r41227 : ref;    
var $fakelocal_14 : ref;    
var $fakelocal_10 : ref;    
var $r36219 : ref;    
var $fakelocal_15 : ref;    
var $fakelocal_7 : ref;    
var $r26208 : ref;    
var $r7151 : ref;    
var $fakelocal_12 : ref;    
var $fakelocal_13 : ref;    
var r0130 : ref;    
var $r10174 : ref;    
var $r38221 : ref;    
var $r51243 : ref;    
var $r48237 : ref;    
var $r13182 : ref;    
var z0134 : int;    
var $fakelocal_5 : ref;
    $ex_return := false;
    r0130 := $in_parameter__0;
    call r1132, $exception := java.lang.String$java.lang.System$getProperty$2161($StringConst2);
    r2133 := $null;
    z0134 := 0;
    z1135 := 0;
    if (r1132 == $null) {
        goto block6;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $r7151 := $fakelocal_0;
    assert $r7151 != $null;
    call $z3152, $exception := boolean$java.lang.String$equals$83($r7151, r1132);
    if ($z3152 == 0) {
        goto block7;
    }
  block6:
    $r8153 := java.io.PrintStream$java.lang.System$err299;
    assert $r8153 != $null;
    call $exception := void$java.io.PrintStream$println$217($r8153, $StringConst3);
    assume false;
    return;
  block7:
    call r3137, $exception := java.lang.Class$java.lang.Class$forName$447(r1132);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    if (r3137 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_1;
        assume !$heap[$fakelocal_1,$alloc];
        $heap := $heap[$fakelocal_1,$alloc := true];
        assume $fakelocal_1 != $null;
        $heap := $heap[$fakelocal_1,$type := java.lang.NullPointerException];
        $exception := $fakelocal_1;
        goto block10;
    }
    call r4138, $exception := java.lang.Object$java.lang.Class$newInstance$450(r3137);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.CmdLineParser];
    $r9160 := $fakelocal_2;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$$la$init$ra$$2192($r9160, r4138);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    r2133 := $r9160;
    call z0134, $exception := boolean$org.kohsuke.args4j.Starter$hasAnnotation$2138(r3137, CC$org$_$kohsuke$_$args4j$_$Argument);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    call z1135, $exception := boolean$org.kohsuke.args4j.Starter$hasAnnotation$2138(r3137, CC$org$_$kohsuke$_$args4j$_$Option);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    if (r2133 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_3;
        assume !$heap[$fakelocal_3,$alloc];
        $heap := $heap[$fakelocal_3,$alloc := true];
        assume $fakelocal_3 != $null;
        $heap := $heap[$fakelocal_3,$type := java.lang.NullPointerException];
        $exception := $fakelocal_3;
        goto block10;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineParser$parseArgument$2208(r2133, r0130);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    z2140 := 0;
  block11:
    assert $heap[$null,$type] <: $arrayType(java.lang.Class);
    $r10174 := $null;
    if (r3137 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_4;
        assume !$heap[$fakelocal_4,$alloc];
        $heap := $heap[$fakelocal_4,$alloc := true];
        assume $fakelocal_4 != $null;
        $heap := $heap[$fakelocal_4,$type := java.lang.NullPointerException];
        $exception := $fakelocal_4;
        goto block10;
    }
    call r5141, $exception := java.lang.reflect.Method$java.lang.Class$getMethod$493(r3137, $StringConst4, $r10174);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        goto block12;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        goto block13;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        goto block14;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block15;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block16;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    assert $heap[$null,$type] <: $arrayType(java.lang.Object);
    $r11179 := $null;
    if (r5141 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_5;
        assume !$heap[$fakelocal_5,$alloc];
        $heap := $heap[$fakelocal_5,$alloc := true];
        assume $fakelocal_5 != $null;
        $heap := $heap[$fakelocal_5,$type := java.lang.NullPointerException];
        $exception := $fakelocal_5;
        goto block10;
    }
    call $fakelocal_6, $exception := java.lang.Object$java.lang.reflect.Method$invoke$1333(r5141, r4138, $r11179);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        goto block12;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        goto block13;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        goto block14;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block15;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block16;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    z2140 := 1;
  block17:
    goto block18;
  block12:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r13182 := $exception;
    r6142 := $r13182;
    goto block18;
  block13:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r14183 := $exception;
    r15184 := $r14183;
    goto block18;
  block14:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r16185 := $exception;
    r17186 := $r16185;
    goto block18;
  block15:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r18187 := $exception;
    r19188 := $r18187;
    goto block18;
  block16:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r20189 := $exception;
    r21190 := $r20189;
  block18:
    if (z2140 != 0) {
        goto block19;
    }
  block20:
    havoc $fakelocal_7;
    assume !$heap[$fakelocal_7,$alloc];
    $heap := $heap[$fakelocal_7,$alloc := true];
    assume $fakelocal_7 != $null;
    $heap := $heap[$fakelocal_7,$type := $arrayType(java.lang.Class)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_7 := 1];
    $r22195 := $fakelocal_7;
    if (0 < $arrSizeHeap[$r22195] && 0 >= 0) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_8;
        assume !$heap[$fakelocal_8,$alloc];
        $heap := $heap[$fakelocal_8,$alloc := true];
        assume $fakelocal_8 != $null;
        $heap := $heap[$fakelocal_8,$type := java.lang.ArrayIndexOutOfBoundsException];
        $exception := $fakelocal_8;
        goto block10;
    }
    $refArrHeap := $refArrHeap[$r22195 := $refArrHeap[$r22195][0 := CC$$lp$Ljava$_$lang$_$String$]];
    if (r3137 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_9;
        assume !$heap[$fakelocal_9,$alloc];
        $heap := $heap[$fakelocal_9,$alloc := true];
        assume $fakelocal_9 != $null;
        $heap := $heap[$fakelocal_9,$type := java.lang.NullPointerException];
        $exception := $fakelocal_9;
        goto block10;
    }
    call r23197, $exception := java.lang.reflect.Method$java.lang.Class$getMethod$493(r3137, $StringConst4, $r22195);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        goto block21;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        goto block22;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        goto block23;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block24;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block25;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    havoc $fakelocal_10;
    assume !$heap[$fakelocal_10,$alloc];
    $heap := $heap[$fakelocal_10,$alloc := true];
    assume $fakelocal_10 != $null;
    $heap := $heap[$fakelocal_10,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_10 := 1];
    $r24201 := $fakelocal_10;
    if (0 < $arrSizeHeap[$r24201] && 0 >= 0) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_11;
        assume !$heap[$fakelocal_11,$alloc];
        $heap := $heap[$fakelocal_11,$alloc := true];
        assume $fakelocal_11 != $null;
        $heap := $heap[$fakelocal_11,$type := java.lang.ArrayIndexOutOfBoundsException];
        $exception := $fakelocal_11;
        goto block10;
    }
    $refArrHeap := $refArrHeap[$r24201 := $refArrHeap[$r24201][0 := r0130]];
    if (r23197 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_12;
        assume !$heap[$fakelocal_12,$alloc];
        $heap := $heap[$fakelocal_12,$alloc := true];
        assume $fakelocal_12 != $null;
        $heap := $heap[$fakelocal_12,$type := java.lang.NullPointerException];
        $exception := $fakelocal_12;
        goto block10;
    }
    call $fakelocal_13, $exception := java.lang.Object$java.lang.reflect.Method$invoke$1333(r23197, r4138, $r24201);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        goto block21;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        goto block22;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        goto block23;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block24;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block25;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    z4207 := 1;
  block26:
    goto block19;
  block21:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r26208 := $exception;
    r27209 := $r26208;
    goto block19;
  block22:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r28210 := $exception;
    r29211 := $r28210;
    if (r29211 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_14;
        assume !$heap[$fakelocal_14,$alloc];
        $heap := $heap[$fakelocal_14,$alloc := true];
        assume $fakelocal_14 != $null;
        $heap := $heap[$fakelocal_14,$type := java.lang.NullPointerException];
        $exception := $fakelocal_14;
        goto block10;
    }
    call $exception := void$java.lang.Throwable$printStackTrace$21(r29211);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        goto block8;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block9;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block10;
    }
    goto block19;
  block23:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r30213 := $exception;
    r31214 := $r30213;
    goto block19;
  block24:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r32215 := $exception;
    r33216 := $r32215;
    goto block19;
  block25:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r34217 := $exception;
    r35218 := $r34217;
  block19:
    goto block27;
  block8:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r36219 := $exception;
    r37220 := $r36219;
    $r38221 := java.io.PrintStream$java.lang.System$err299;
    havoc $fakelocal_15;
    assume !$heap[$fakelocal_15,$alloc];
    $heap := $heap[$fakelocal_15,$alloc := true];
    assume $fakelocal_15 != $null;
    $heap := $heap[$fakelocal_15,$type := java.lang.StringBuilder];
    $r39222 := $fakelocal_15;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r39222);
    assert $r39222 != $null;
    call $r40225, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r39222, $StringConst5);
    assert $r40225 != $null;
    call $r41227, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r40225, r1132);
    assert $r41227 != $null;
    call $r42229, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r41227, $StringConst6);
    assert $r42229 != $null;
    call $r43231, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r42229, $StringConst2);
    assert $r43231 != $null;
    call $r44233, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r43231, $StringConst7);
    assert $r44233 != $null;
    call $r45234, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r44233);
    assert $r38221 != $null;
    call $exception := void$java.io.PrintStream$println$217($r38221, $r45234);
    goto block27;
  block9:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r46235 := $exception;
    r47236 := $r46235;
    $r48237 := java.io.PrintStream$java.lang.System$err299;
    assert r47236 != $null;
    call $r49239, $exception := java.lang.String$java.lang.Throwable$getMessage$16(r47236);
    assert $r48237 != $null;
    call $exception := void$java.io.PrintStream$println$217($r48237, $r49239);
    $r50240 := java.io.PrintStream$java.lang.System$err299;
    assert $r50240 != $null;
    call $exception := void$java.io.PrintStream$print$207($r50240, r1132);
    if (z1135 == 0) {
        goto block28;
    }
    $r51243 := java.io.PrintStream$java.lang.System$err299;
    assert $r51243 != $null;
    call $exception := void$java.io.PrintStream$print$207($r51243, $StringConst8);
  block28:
    if (z0134 == 0) {
        goto block29;
    }
    $r52246 := java.io.PrintStream$java.lang.System$err299;
    assert $r52246 != $null;
    call $exception := void$java.io.PrintStream$print$207($r52246, $StringConst9);
  block29:
    $r53248 := java.io.PrintStream$java.lang.System$err299;
    assert $r53248 != $null;
    call $exception := void$java.io.PrintStream$println$209($r53248);
    if (r2133 == $null) {
        goto block30;
    }
    $r54251 := java.io.PrintStream$java.lang.System$err299;
    assert r2133 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$printUsage$2200(r2133, $r54251);
  block30:
    goto block27;
  block10:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r55252 := $exception;
    r56253 := $r55252;
    assert r56253 != $null;
    call $exception := void$java.lang.Throwable$printStackTrace$21(r56253);
  block27:
    return;
}


implementation boolean$org.kohsuke.args4j.Starter$hasAnnotation$2138($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $r5277 : ref;    
var $ex_return : bool;    
var r7292 : ref;    
var i2284 : int;    
var $r8295 : ref;    
var i1261 : int;    
var r2259 : ref;    
var r3262 : ref;    
var $r4263 : ref;    
var r0255 : ref;    
var i3286 : int;    
var r1256 : ref;    
var r6281 : ref;    
var i0260 : int;
    $ex_return := false;
    r0255 := $in_parameter__0;
    r1256 := $in_parameter__1;
    assert r0255 != $null;
    call $r4263, $exception := java.lang.annotation.Annotation$java.lang.Class$getAnnotation$549(r0255, r1256);
    if ($r4263 == $null) {
        goto block31;
    }
    $return := 1;
    return;
  block31:
    assert r0255 != $null;
    call r2259, $exception := java.lang.reflect.Field$lp$$rp$$java.lang.Class$getFields$489(r0255);
    assert r2259 != $null;
    i0260 := $arrSizeHeap[r2259];
    i1261 := 0;
  block32:
    if (i1261 >= i0260) {
        goto block33;
    }
    assert i1261 < $arrSizeHeap[r2259] && i1261 >= 0;
    r3262 := $refArrHeap[r2259][i1261];
    assert r3262 != $null;
    call $r5277, $exception := java.lang.annotation.Annotation$java.lang.reflect.Field$getAnnotation$1394(r3262, r1256);
    if ($r5277 == $null) {
        goto block34;
    }
    $return := 1;
    return;
  block34:
    i1261 := i1261 + 1;
    goto block32;
  block33:
    assert r0255 != $null;
    call r6281, $exception := java.lang.reflect.Method$lp$$rp$$java.lang.Class$getMethods$490(r0255);
    assert r6281 != $null;
    i2284 := $arrSizeHeap[r6281];
    i3286 := 0;
  block35:
    if (i3286 >= i2284) {
        goto block36;
    }
    assert i3286 < $arrSizeHeap[r6281] && i3286 >= 0;
    r7292 := $refArrHeap[r6281][i3286];
    assert r7292 != $null;
    call $r8295, $exception := java.lang.annotation.Annotation$java.lang.reflect.Method$getAnnotation$1341(r7292, r1256);
    if ($r8295 == $null) {
        goto block37;
    }
    $return := 1;
    return;
  block37:
    i3286 := i3286 + 1;
    goto block35;
  block36:
    $return := 0;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2178($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r0298 : ref;    
var r1299 : ref;
    assume $this != $null;
    $ex_return := false;
    r0298 := $this;
    r1299 := $in_parameter__0;
    call $exception := void$java.lang.Exception$$la$init$ra$$628(r0298, r1299);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2179($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r2304 : ref;    
var $ex_return : bool;    
var r1303 : ref;    
var r0302 : ref;
    assume $this != $null;
    $ex_return := false;
    r0302 := $this;
    r1303 := $in_parameter__0;
    r2304 := $in_parameter__1;
    call $exception := void$java.lang.Exception$$la$init$ra$$629(r0302, r1303, r2304);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2180($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1309 : ref;    
var r0308 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r0308 := $this;
    r1309 := $in_parameter__0;
    call $exception := void$java.lang.Exception$$la$init$ra$$630(r0308, r1309);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r2314 : ref;    
var r0312 : ref;    
var r1313 : ref;
    assume $this != $null;
    $ex_return := false;
    r0312 := $this;
    r1313 := $in_parameter__0;
    r2314 := $in_parameter__1;
    call $exception := void$java.lang.Exception$$la$init$ra$$628(r0312, r2314);
    assert r0312 != $null;
    $heap := $heap[r0312,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineException$parser304 := r1313];
    return;
}


implementation void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2182($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r3322 : ref;    
var $ex_return : bool;    
var r2321 : ref;    
var r0319 : ref;    
var r1320 : ref;
    assume $this != $null;
    $ex_return := false;
    r0319 := $this;
    r1320 := $in_parameter__0;
    r2321 := $in_parameter__1;
    r3322 := $in_parameter__2;
    call $exception := void$java.lang.Exception$$la$init$ra$$629(r0319, r2321, r3322);
    assert r0319 != $null;
    $heap := $heap[r0319,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineException$parser304 := r1320];
    return;
}


implementation void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2183($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r1329 : ref;    
var r0328 : ref;    
var r2330 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r0328 := $this;
    r1329 := $in_parameter__0;
    r2330 := $in_parameter__1;
    call $exception := void$java.lang.Exception$$la$init$ra$$630(r0328, r2330);
    assert r0328 != $null;
    $heap := $heap[r0328,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineException$parser304 := r1329];
    return;
}


implementation org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineException$getParser$2184($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r0335 : ref;    
var $r1337 : ref;
    assume $this != $null;
    $ex_return := false;
    r0335 := $this;
    assert r0335 != $null;
    $r1337 := $heap[r0335,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineException$parser304];
    $return := $r1337;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$$la$init$ra$$2192($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $r4355 : ref;    
var $fakelocal_0 : ref;    
var r1339 : ref;    
var $r2341 : ref;    
var $r3346 : ref;    
var $ex_return : bool;    
var $fakelocal_2 : ref;    
var $r5360 : ref;    
var $r6361 : ref;    
var $fakelocal_3 : ref;    
var r0338 : ref;    
var $fakelocal_1 : ref;
    assume $this != $null;
    $ex_return := false;
    r0338 := $this;
    r1339 := $in_parameter__0;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r0338);
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.ArrayList];
    $r2341 := $fakelocal_0;
    call $exception := void$java.util.ArrayList$$la$init$ra$$3003($r2341);
    assert r0338 != $null;
    $heap := $heap[r0338,java.util.List$org.kohsuke.args4j.CmdLineParser$options305 := $r2341];
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.util.ArrayList];
    $r3346 := $fakelocal_1;
    call $exception := void$java.util.ArrayList$$la$init$ra$$3003($r3346);
    assert r0338 != $null;
    $heap := $heap[r0338,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306 := $r3346];
    assert r0338 != $null;
    $heap := $heap[r0338,boolean$org.kohsuke.args4j.CmdLineParser$parsingOptions0 := 1];
    assert r0338 != $null;
    $heap := $heap[r0338,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307 := $null];
    assert r0338 != $null;
    $heap := $heap[r0338,int$org.kohsuke.args4j.CmdLineParser$usageWidth0 := 80];
    if (r1339 != $null) {
        goto block38;
    }
    return;
  block38:
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.ClassParser];
    $r4355 := $fakelocal_2;
    call $exception := void$org.kohsuke.args4j.ClassParser$$la$init$ra$$3185($r4355);
    assert $r4355 != $null;
    call $exception := void$org.kohsuke.args4j.ClassParser$parse$3186($r4355, r1339, r0338);
    assert r0338 != $null;
    $r5360 := $heap[r0338,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := org.kohsuke.args4j.CmdLineParser$1];
    $r6361 := $fakelocal_3;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$1$$la$init$ra$$2809($r6361, r0338);
    call $exception := void$java.util.Collections$sort$2886($r5360, $r6361);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$addArgument$2193($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r0363 : ref;    
var $z0375 : int;    
var $fakelocal_3 : ref;    
var $r12398 : ref;    
var $fakelocal_4 : ref;    
var $r8391 : ref;    
var r1364 : ref;    
var $r6385 : ref;    
var $r7389 : ref;    
var $r9392 : ref;    
var $r10394 : ref;    
var $fakelocal_1 : int;    
var r2365 : ref;    
var $r14401 : ref;    
var i0372 : int;    
var r4371 : ref;    
var $r13399 : ref;    
var $ex_return : bool;    
var $r5382 : ref;    
var $i1383 : int;    
var $r3367 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $r11396 : ref;
    assume $this != $null;
    $ex_return := false;
    r0363 := $this;
    r1364 := $in_parameter__0;
    r2365 := $in_parameter__1;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.OptionDef];
    $r3367 := $fakelocal_0;
    assert r1364 != $null;
    call $z0375, $exception := boolean$org.kohsuke.args4j.spi.Setter$isMultiValued$2505(r1364);
    call $exception := void$org.kohsuke.args4j.OptionDef$$la$init$ra$$1911($r3367, r2365, $z0375);
    assert r0363 != $null;
    call r4371, $exception := org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$createOptionHandler$2197(r0363, $r3367, r1364);
    assert r2365 != $null;
    call i0372, $exception := int$org.kohsuke.args4j.Argument$index$2119(r2365);
  block39:
    assert r0363 != $null;
    $r5382 := $heap[r0363,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r5382 != $null;
    call $i1383, $exception := int$java.util.List$size$152($r5382);
    if (i0372 < $i1383) {
        goto block40;
    }
    assert r0363 != $null;
    $r6385 := $heap[r0363,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r6385 != $null;
    call $fakelocal_1, $exception := boolean$java.util.List$add$158($r6385, $null);
    goto block39;
  block40:
    assert r0363 != $null;
    $r7389 := $heap[r0363,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r7389 != $null;
    call $r8391, $exception := java.lang.Object$java.util.List$get$168($r7389, i0372);
    if ($r8391 == $null) {
        goto block41;
    }
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r9392 := $fakelocal_2;
    $r10394 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_ARGUMENT401;
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 1];
    $r11396 := $fakelocal_3;
    call $r12398, $exception := java.lang.Integer$java.lang.Integer$valueOf$970(i0372);
    assert 0 < $arrSizeHeap[$r11396] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r11396 := $refArrHeap[$r11396][0 := $r12398]];
    assert $r10394 != $null;
    call $r13399, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r10394, $r11396);
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($r9392, $r13399);
    $exception := $r9392;
    return;
  block41:
    assert r0363 != $null;
    $r14401 := $heap[r0363,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r14401 != $null;
    call $fakelocal_4, $exception := java.lang.Object$java.util.List$set$169($r14401, i0372, r4371);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$addOption$2194($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var i0411 : int;    
var r4413 : ref;    
var $fakelocal_0 : ref;    
var $r8436 : ref;    
var $z0434 : int;    
var $r6418 : ref;    
var r2407 : ref;    
var $ex_return : bool;    
var i1412 : int;    
var r3410 : ref;    
var $r5414 : ref;    
var r0405 : ref;    
var $r7432 : ref;    
var $fakelocal_1 : int;    
var r1406 : ref;
    assume $this != $null;
    $ex_return := false;
    r0405 := $this;
    r1406 := $in_parameter__0;
    r2407 := $in_parameter__1;
    assert r2407 != $null;
    call $r6418, $exception := java.lang.String$org.kohsuke.args4j.Option$name$2185(r2407);
    assert r0405 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$checkOptionNotInMap$2196(r0405, $r6418);
    assert r2407 != $null;
    call r3410, $exception := java.lang.String$lp$$rp$$org.kohsuke.args4j.Option$aliases$2186(r2407);
    assert r3410 != $null;
    i0411 := $arrSizeHeap[r3410];
    i1412 := 0;
  block42:
    if (i1412 >= i0411) {
        goto block43;
    }
    assert i1412 < $arrSizeHeap[r3410] && i1412 >= 0;
    r4413 := $refArrHeap[r3410][i1412];
    assert r0405 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$checkOptionNotInMap$2196(r0405, r4413);
    i1412 := i1412 + 1;
    goto block42;
  block43:
    assert r0405 != $null;
    $r7432 := $heap[r0405,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.NamedOptionDef];
    $r5414 := $fakelocal_0;
    assert r1406 != $null;
    call $z0434, $exception := boolean$org.kohsuke.args4j.spi.Setter$isMultiValued$2505(r1406);
    call $exception := void$org.kohsuke.args4j.NamedOptionDef$$la$init$ra$$2873($r5414, r2407, $z0434);
    assert r0405 != $null;
    call $r8436, $exception := org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$createOptionHandler$2197(r0405, $r5414, r1406);
    assert $r7432 != $null;
    call $fakelocal_1, $exception := boolean$java.util.List$add$158($r7432, $r8436);
    return;
}


implementation java.util.List$org.kohsuke.args4j.CmdLineParser$getArguments$2195($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var $r1440 : ref;    
var r0438 : ref;
    assume $this != $null;
    $ex_return := false;
    r0438 := $this;
    assert r0438 != $null;
    $r1440 := $heap[r0438,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    $return := $r1440;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$checkOptionNotInMap$2196($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $r3450 : ref;    
var $r2445 : ref;    
var $r6454 : ref;    
var r0441 : ref;    
var $fakelocal_1 : ref;    
var $r4451 : ref;    
var r1442 : ref;    
var $fakelocal_0 : ref;    
var $ex_return : bool;    
var $r5453 : ref;
    assume $this != $null;
    $ex_return := false;
    r0441 := $this;
    r1442 := $in_parameter__0;
    assert r0441 != $null;
    call $r3450, $exception := org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionByName$2210(r0441, r1442);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.IllegalAnnotationError) {
        return;
    }
    if ($r3450 == $null) {
        goto block44;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r4451 := $fakelocal_0;
    $r2445 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_OPTION402;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 1];
    $r5453 := $fakelocal_1;
    assert 0 < $arrSizeHeap[$r5453] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r5453 := $refArrHeap[$r5453][0 := r1442]];
    assert $r2445 != $null;
    call $r6454, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r2445, $r5453);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.IllegalAnnotationError) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($r4451, $r6454);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.IllegalAnnotationError) {
        return;
    }
    $exception := $r4451;
    return;
  block44:
    return;
}


implementation org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$createOptionHandler$2197($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var $r9479 : ref;    
var $fakelocal_3 : ref;    
var $r8477 : ref;    
var r0455 : ref;    
var $r25518 : ref;    
var $fakelocal_0 : ref;    
var $r7475 : ref;    
var $r20511 : ref;    
var r18507 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_1 : ref;    
var $r16505 : ref;    
var $r14494 : ref;    
var r21512 : ref;    
var r24517 : ref;    
var r2457 : ref;    
var r1456 : ref;    
var $z0474 : int;    
var $r15504 : ref;    
var $r23516 : ref;    
var $r19508 : ref;    
var r3459 : ref;    
var $r10482 : ref;    
var r4461 : ref;    
var r5466 : ref;    
var $r13489 : ref;    
var $fakelocal_6 : ref;    
var $r22513 : ref;    
var $r12486 : ref;    
var $r6472 : ref;    
var $r17506 : ref;    
var $fakelocal_5 : ref;    
var $r11484 : ref;
    assume $this != $null;
    $ex_return := false;
    r0455 := $this;
    r1456 := $in_parameter__0;
    r2457 := $in_parameter__1;
    assert r1456 != $null;
    call r3459, $exception := java.lang.Class$org.kohsuke.args4j.OptionDef$handler$1916(r1456);
    if (r3459 != CC$org$_$kohsuke$_$args4j$_$spi$_$OptionHandler) {
        goto block45;
    }
    assert r2457 != $null;
    call r4461, $exception := java.lang.Class$org.kohsuke.args4j.spi.Setter$getType$2504(r2457);
    $r6472 := CC$java$_$lang$_$Enum;
    assert $r6472 != $null;
    call $z0474, $exception := boolean$java.lang.Class$isAssignableFrom$452($r6472, r4461);
    if ($z0474 == 0) {
        goto block46;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.spi.EnumOptionHandler];
    $r7475 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.spi.EnumOptionHandler$$la$init$ra$$2712($r7475, r0455, r1456, r2457, r4461);
    $return := $r7475;
    return;
  block46:
    $r8477 := java.util.Map$org.kohsuke.args4j.CmdLineParser$handlerClasses308;
    assert $r8477 != $null;
    call $r9479, $exception := java.lang.Object$java.util.Map$get$1160($r8477, r4461);
    assert $heap[$r9479,$type] <: java.lang.reflect.Constructor;
    r5466 := $r9479;
    if (r5466 != $null) {
        goto block47;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r10482 := $fakelocal_1;
    $r11484 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNKNOWN_HANDLER403;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 1];
    $r12486 := $fakelocal_2;
    assert 0 < $arrSizeHeap[$r12486] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r12486 := $refArrHeap[$r12486][0 := r4461]];
    assert $r11484 != $null;
    call $r13489, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r11484, $r12486);
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($r10482, $r13489);
    $exception := $r10482;
    return;
  block47:
    goto block48;
  block45:
    call r5466, $exception := java.lang.reflect.Constructor$org.kohsuke.args4j.CmdLineParser$getConstructor$2214(r3459);
  block48:
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 3];
    $r14494 := $fakelocal_3;
    assert 0 < $arrSizeHeap[$r14494] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r14494 := $refArrHeap[$r14494][0 := r0455]];
    assert 1 < $arrSizeHeap[$r14494] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r14494 := $refArrHeap[$r14494][1 := r1456]];
    assert 2 < $arrSizeHeap[$r14494] && 2 >= 0;
    $refArrHeap := $refArrHeap[$r14494 := $refArrHeap[$r14494][2 := r2457]];
    assert r5466 != $null;
    call $r15504, $exception := java.lang.Object$java.lang.reflect.Constructor$newInstance$1097(r5466, $r14494);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.InstantiationException) {
        goto block49;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block50;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block51;
    }
    assert $heap[$r15504,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    $r16505 := $r15504;
  block52:
    $return := $r16505;
    return;
  block49:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r17506 := $exception;
    r18507 := $r17506;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r19508 := $fakelocal_4;
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2135($r19508, r18507);
    $exception := $r19508;
    return;
  block50:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r20511 := $exception;
    r21512 := $r20511;
    havoc $fakelocal_5;
    assume !$heap[$fakelocal_5,$alloc];
    $heap := $heap[$fakelocal_5,$alloc := true];
    assume $fakelocal_5 != $null;
    $heap := $heap[$fakelocal_5,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r22513 := $fakelocal_5;
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2135($r22513, r21512);
    $exception := $r22513;
    return;
  block51:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r23516 := $exception;
    r24517 := $r23516;
    havoc $fakelocal_6;
    assume !$heap[$fakelocal_6,$alloc];
    $heap := $heap[$fakelocal_6,$alloc := true];
    assume $fakelocal_6 != $null;
    $heap := $heap[$fakelocal_6,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r25518 := $fakelocal_6;
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2135($r25518, r24517);
    $exception := $r25518;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.CmdLineParser$printExample$2198($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r1522 : ref;    
var r0521 : ref;    
var $r2526 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r0521 := $this;
    r1522 := $in_parameter__0;
    assert r0521 != $null;
    call $r2526, $exception := java.lang.String$org.kohsuke.args4j.CmdLineParser$printExample$2199(r0521, r1522, $null);
    $return := $r2526;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.CmdLineParser$printExample$2199($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var r7535 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $r9543 : ref;    
var r5533 : ref;    
var $r14561 : ref;    
var $fakelocal_1 : ref;    
var r1528 : ref;    
var $r8538 : ref;    
var $z0541 : int;    
var $i0549 : int;    
var r2529 : ref;    
var r0527 : ref;    
var $r12558 : ref;    
var $r3530 : ref;    
var $z1552 : int;    
var $ex_return : bool;    
var $r10548 : ref;    
var r6534 : ref;    
var r4532 : ref;
    assume $this != $null;
    $ex_return := false;
    r0527 := $this;
    r1528 := $in_parameter__0;
    r2529 := $in_parameter__1;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.StringBuilder];
    $r3530 := $fakelocal_0;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r3530);
    r4532 := $r3530;
    assert r0527 != $null;
    $r8538 := $heap[r0527,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    assert $r8538 != $null;
    call r5533, $exception := java.util.Iterator$java.util.List$iterator$155($r8538);
  block53:
    assert r5533 != $null;
    call $z0541, $exception := boolean$java.util.Iterator$hasNext$1051(r5533);
    if ($z0541 == 0) {
        goto block54;
    }
    assert r5533 != $null;
    call $r9543, $exception := java.lang.Object$java.util.Iterator$next$1052(r5533);
    assert $heap[$r9543,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r6534 := $r9543;
    assert r6534 != $null;
    r7535 := $heap[r6534,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert r7535 != $null;
    call $r10548, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$usage$1913(r7535);
    $i0549 := $stringSizeHeap[$r10548];
    if ($i0549 != 0) {
        goto block55;
    }
    goto block53;
  block55:
    assert r1528 != $null;
    call $z1552, $exception := boolean$org.kohsuke.args4j.ExampleMode$print$1894(r1528, r7535);
    if ($z1552 != 0) {
        goto block56;
    }
    goto block53;
  block56:
    assert r4532 != $null;
    call $fakelocal_1, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1976(r4532, 32);
    assert r6534 != $null;
    call $r12558, $exception := java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getNameAndMeta$2436(r6534, r2529);
    assert r4532 != $null;
    call $fakelocal_2, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968(r4532, $r12558);
    goto block53;
  block54:
    assert r4532 != $null;
    call $r14561, $exception := java.lang.String$java.lang.StringBuilder$toString$2002(r4532);
    $return := $r14561;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$printUsage$2200($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $r2565 : ref;    
var $fakelocal_0 : ref;    
var r0562 : ref;    
var $ex_return : bool;    
var r1563 : ref;
    assume $this != $null;
    $ex_return := false;
    r0562 := $this;
    r1563 := $in_parameter__0;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.io.OutputStreamWriter];
    $r2565 := $fakelocal_0;
    call $exception := void$java.io.OutputStreamWriter$$la$init$ra$$2302($r2565, r1563);
    assert r0562 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$printUsage$2201(r0562, $r2565, $null);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$printUsage$2201($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r12607 : ref;    
var $r13617 : ref;    
var $r19636 : ref;    
var r16625 : ref;    
var $r15623 : ref;    
var $z3634 : int;    
var $r3572 : ref;    
var $z1603 : int;    
var r2571 : ref;    
var r5577 : ref;    
var r1570 : ref;    
var $fakelocal_0 : ref;    
var $r9599 : ref;    
var $r17630 : ref;    
var $r8589 : ref;    
var $ex_return : bool;    
var i2612 : int;    
var r18632 : ref;    
var r20638 : ref;    
var $r7584 : ref;    
var $z2621 : int;    
var r4575 : ref;    
var r14619 : ref;    
var r6578 : ref;    
var i0576 : int;    
var r10601 : ref;    
var i1579 : int;    
var $z0587 : int;    
var $r11605 : ref;    
var r0569 : ref;
    assume $this != $null;
    $ex_return := false;
    r0569 := $this;
    r1570 := $in_parameter__0;
    r2571 := $in_parameter__1;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.io.PrintWriter];
    $r3572 := $fakelocal_0;
    call $exception := void$java.io.PrintWriter$$la$init$ra$$249($r3572, r1570);
    r4575 := $r3572;
    i0576 := 0;
    assert r0569 != $null;
    $r7584 := $heap[r0569,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r7584 != $null;
    call r5577, $exception := java.util.Iterator$java.util.List$iterator$155($r7584);
  block57:
    assert r5577 != $null;
    call $z0587, $exception := boolean$java.util.Iterator$hasNext$1051(r5577);
    if ($z0587 == 0) {
        goto block58;
    }
    assert r5577 != $null;
    call $r8589, $exception := java.lang.Object$java.util.Iterator$next$1052(r5577);
    assert $heap[$r8589,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r6578 := $r8589;
    assert r0569 != $null;
    call i1579, $exception := int$org.kohsuke.args4j.CmdLineParser$getPrefixLen$2205(r0569, r6578, r2571);
    call i0576, $exception := int$java.lang.Math$max$2840(i0576, i1579);
    goto block57;
  block58:
    assert r0569 != $null;
    $r9599 := $heap[r0569,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    assert $r9599 != $null;
    call r10601, $exception := java.util.Iterator$java.util.List$iterator$155($r9599);
  block59:
    assert r10601 != $null;
    call $z1603, $exception := boolean$java.util.Iterator$hasNext$1051(r10601);
    if ($z1603 == 0) {
        goto block60;
    }
    assert r10601 != $null;
    call $r11605, $exception := java.lang.Object$java.util.Iterator$next$1052(r10601);
    assert $heap[$r11605,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r12607 := $r11605;
    assert r0569 != $null;
    call i2612, $exception := int$org.kohsuke.args4j.CmdLineParser$getPrefixLen$2205(r0569, r12607, r2571);
    call i0576, $exception := int$java.lang.Math$max$2840(i0576, i2612);
    goto block59;
  block60:
    assert r0569 != $null;
    $r13617 := $heap[r0569,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r13617 != $null;
    call r14619, $exception := java.util.Iterator$java.util.List$iterator$155($r13617);
  block61:
    assert r14619 != $null;
    call $z2621, $exception := boolean$java.util.Iterator$hasNext$1051(r14619);
    if ($z2621 == 0) {
        goto block62;
    }
    assert r14619 != $null;
    call $r15623, $exception := java.lang.Object$java.util.Iterator$next$1052(r14619);
    assert $heap[$r15623,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r16625 := $r15623;
    assert r0569 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$printOption$2202(r0569, r4575, r16625, i0576, r2571);
    goto block61;
  block62:
    assert r0569 != $null;
    $r17630 := $heap[r0569,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    assert $r17630 != $null;
    call r18632, $exception := java.util.Iterator$java.util.List$iterator$155($r17630);
  block63:
    assert r18632 != $null;
    call $z3634, $exception := boolean$java.util.Iterator$hasNext$1051(r18632);
    if ($z3634 == 0) {
        goto block64;
    }
    assert r18632 != $null;
    call $r19636, $exception := java.lang.Object$java.util.Iterator$next$1052(r18632);
    assert $heap[$r19636,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r20638 := $r19636;
    assert r0569 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$printOption$2202(r0569, r4575, r20638, i0576, r2571);
    goto block63;
  block64:
    assert r4575 != $null;
    call $exception := void$java.io.PrintWriter$flush$259(r4575);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$printOption$2202($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref){
    
var $i13705 : int;    
var i1653 : int;    
var r3649 : ref;    
var $fakelocal_4 : ref;    
var $r17693 : ref;    
var $r10664 : ref;    
var $i12702 : int;    
var r0645 : ref;    
var $r26727 : ref;    
var $fakelocal_3 : ref;    
var $i4669 : int;    
var $r28731 : ref;    
var r9663 : ref;    
var $r13668 : ref;    
var $i6672 : int;    
var $i14712 : int;    
var $r24724 : ref;    
var $r27728 : ref;    
var r6659 : ref;    
var r8661 : ref;    
var $r31738 : ref;    
var r7660 : ref;    
var r4655 : ref;    
var r5657 : ref;    
var $fakelocal_2 : ref;    
var $r22719 : ref;    
var $r11665 : ref;    
var $i10699 : int;    
var i0648 : int;    
var $r15691 : ref;    
var $r18706 : ref;    
var $r21716 : ref;    
var $r29733 : ref;    
var $ex_return : bool;    
var r2647 : ref;    
var $r14685 : ref;    
var $i15718 : int;    
var $r16692 : ref;    
var r1646 : ref;    
var $i11701 : int;    
var $r12667 : ref;    
var $fakelocal_1 : ref;    
var $i8677 : int;    
var $r23722 : ref;    
var $r20713 : ref;    
var $i9679 : int;    
var $r25726 : ref;    
var $fakelocal_0 : ref;    
var $r30735 : ref;    
var i2654 : int;    
var $r19709 : ref;    
var $i5671 : int;    
var $i7674 : int;    
var i3658 : int;
    assume $this != $null;
    $ex_return := false;
    r0645 := $this;
    r1646 := $in_parameter__0;
    r2647 := $in_parameter__1;
    i0648 := $in_parameter__2;
    r3649 := $in_parameter__3;
    assert r2647 != $null;
    $r10664 := $heap[r2647,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r10664 != $null;
    call $r11665, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$usage$1913($r10664);
    if ($r11665 == $null) {
        goto block65;
    }
    assert r2647 != $null;
    $r12667 := $heap[r2647,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r12667 != $null;
    call $r13668, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$usage$1913($r12667);
    $i4669 := $stringSizeHeap[$r13668];
    if ($i4669 != 0) {
        goto block66;
    }
  block65:
    return;
  block66:
    assert r0645 != $null;
    $i5671 := $heap[r0645,int$org.kohsuke.args4j.CmdLineParser$usageWidth0];
    $i6672 := $i5671 - 4;
    assert 2 != 0;
    $i7674 := $i6672 div 2;
    call i1653, $exception := int$java.lang.Math$min$2844(i0648, $i7674);
    assert r0645 != $null;
    $i8677 := $heap[r0645,int$org.kohsuke.args4j.CmdLineParser$usageWidth0];
    $i9679 := $i8677 - 4;
    i2654 := $i9679 - i1653;
    assert r2647 != $null;
    call $r14685, $exception := java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getNameAndMeta$2436(r2647, r3649);
    assert r0645 != $null;
    call r4655, $exception := java.util.List$org.kohsuke.args4j.CmdLineParser$wrapLines$2204(r0645, $r14685, i1653);
    assert r2647 != $null;
    $r15691 := $heap[r2647,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r15691 != $null;
    call $r16692, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$usage$1913($r15691);
    assert r0645 != $null;
    call $r17693, $exception := java.lang.String$org.kohsuke.args4j.CmdLineParser$localize$2203(r0645, $r16692, r3649);
    assert r0645 != $null;
    call r5657, $exception := java.util.List$org.kohsuke.args4j.CmdLineParser$wrapLines$2204(r0645, $r17693, i2654);
    i3658 := 0;
  block67:
    assert r4655 != $null;
    call $i10699, $exception := int$java.util.List$size$152(r4655);
    assert r5657 != $null;
    call $i11701, $exception := int$java.util.List$size$152(r5657);
    call $i12702, $exception := int$java.lang.Math$max$2840($i10699, $i11701);
    if (i3658 >= $i12702) {
        goto block68;
    }
    assert r4655 != $null;
    call $i13705, $exception := int$java.util.List$size$152(r4655);
    if (i3658 < $i13705) {
        goto block69;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $r18706 := $fakelocal_0;
    goto block70;
  block69:
    assert r4655 != $null;
    call $r19709, $exception := java.lang.Object$java.util.List$get$168(r4655, i3658);
    assert $heap[$r19709,$type] <: java.lang.String;
    $r18706 := $r19709;
  block70:
    r6659 := $r18706;
    assert r5657 != $null;
    call $i14712, $exception := int$java.util.List$size$152(r5657);
    if (i3658 < $i14712) {
        goto block71;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_1 := 0];
    $r20713 := $fakelocal_1;
    goto block72;
  block71:
    assert r5657 != $null;
    call $r21716, $exception := java.lang.Object$java.util.List$get$168(r5657, i3658);
    assert $heap[$r21716,$type] <: java.lang.String;
    $r20713 := $r21716;
  block72:
    r7660 := $r20713;
    $i15718 := $stringSizeHeap[r6659];
    if ($i15718 <= 0) {
        goto block73;
    }
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := java.lang.StringBuilder];
    $r22719 := $fakelocal_2;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r22719);
    assert $r22719 != $null;
    call $r23722, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r22719, $StringConst10);
    assert $r23722 != $null;
    call $r24724, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1977($r23722, i1653);
    assert $r24724 != $null;
    call $r25726, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r24724, $StringConst11);
    assert $r25726 != $null;
    call $r26727, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r25726);
    goto block74;
  block73:
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := java.lang.StringBuilder];
    $r27728 := $fakelocal_3;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r27728);
    assert $r27728 != $null;
    call $r28731, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r27728, $StringConst10);
    assert $r28731 != $null;
    call $r29733, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1977($r28731, i1653);
    assert $r29733 != $null;
    call $r30735, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r29733, $StringConst12);
    assert $r30735 != $null;
    call $r26727, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r30735);
  block74:
    r8661 := $r26727;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_4 := 2];
    $r31738 := $fakelocal_4;
    assert 0 < $arrSizeHeap[$r31738] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r31738 := $refArrHeap[$r31738][0 := r6659]];
    assert 1 < $arrSizeHeap[$r31738] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r31738 := $refArrHeap[$r31738][1 := r7660]];
    call r9663, $exception := java.lang.String$java.lang.String$format$126(r8661, $r31738);
    assert r1646 != $null;
    call $exception := void$java.io.PrintWriter$println$287(r1646, r9663);
    i3658 := i3658 + 1;
    goto block67;
  block68:
    return;
}


implementation java.lang.String$org.kohsuke.args4j.CmdLineParser$localize$2203($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r1748 : ref;    
var $r3753 : ref;    
var r2749 : ref;    
var r0747 : ref;
    assume $this != $null;
    $ex_return := false;
    r0747 := $this;
    r1748 := $in_parameter__0;
    r2749 := $in_parameter__1;
    if (r2749 == $null) {
        goto block75;
    }
    assert r2749 != $null;
    call $r3753, $exception := java.lang.String$java.util.ResourceBundle$getString$2507(r2749, r1748);
    $return := $r3753;
    return;
  block75:
    $return := r1748;
    return;
}


implementation java.util.List$org.kohsuke.args4j.CmdLineParser$wrapLines$2204($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($return:ref, $exception:ref){
    
var i2763 : int;    
var $i6793 : int;    
var $r8805 : ref;    
var $fakelocal_1 : int;    
var $i5782 : int;    
var i3767 : int;    
var $ex_return : bool;    
var i0757 : int;    
var r4761 : ref;    
var r1756 : ref;    
var $r7801 : ref;    
var r6766 : ref;    
var r0755 : ref;    
var i4768 : int;    
var $r2758 : ref;    
var $fakelocal_0 : ref;    
var r3760 : ref;    
var $i7795 : int;    
var r5764 : ref;    
var i1762 : int;    
var $fakelocal_2 : int;
    assume $this != $null;
    $ex_return := false;
    r0755 := $this;
    r1756 := $in_parameter__0;
    i0757 := $in_parameter__1;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.ArrayList];
    $r2758 := $fakelocal_0;
    call $exception := void$java.util.ArrayList$$la$init$ra$$3003($r2758);
    r3760 := $r2758;
    assert r1756 != $null;
    call r4761, $exception := java.lang.String$lp$$rp$$java.lang.String$split$118(r1756, $StringConst13);
    assert r4761 != $null;
    i1762 := $arrSizeHeap[r4761];
    i2763 := 0;
  block76:
    if (i2763 >= i1762) {
        goto block77;
    }
    assert i2763 < $arrSizeHeap[r4761] && i2763 >= 0;
    r5764 := $refArrHeap[r4761][i2763];
  block78:
    $i5782 := $stringSizeHeap[r5764];
    if ($i5782 <= i0757) {
        goto block79;
    }
    assert r5764 != $null;
    call r6766, $exception := java.lang.String$java.lang.String$substring$108(r5764, 0, i0757);
    assert r6766 != $null;
    call i3767, $exception := int$java.lang.String$lastIndexOf$98(r6766, 32);
    $i6793 := i0757 * 3;
    assert 4 != 0;
    $i7795 := $i6793 div 4;
    if (i3767 <= $i7795) {
        goto block80;
    }
    i4768 := i3767;
    goto block81;
  block80:
    i4768 := i0757;
  block81:
    assert r5764 != $null;
    call $r7801, $exception := java.lang.String$java.lang.String$substring$108(r5764, 0, i4768);
    assert r3760 != $null;
    call $fakelocal_1, $exception := boolean$java.util.List$add$158(r3760, $r7801);
    assert r5764 != $null;
    call $r8805, $exception := java.lang.String$java.lang.String$substring$107(r5764, i4768);
    assert $r8805 != $null;
    call r5764, $exception := java.lang.String$java.lang.String$trim$123($r8805);
    goto block78;
  block79:
    assert r3760 != $null;
    call $fakelocal_2, $exception := boolean$java.util.List$add$158(r3760, r5764);
    i2763 := i2763 + 1;
    goto block76;
  block77:
    $return := r3760;
    return;
}


implementation int$org.kohsuke.args4j.CmdLineParser$getPrefixLen$2205($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $i0818 : int;    
var $r4817 : ref;    
var $r5821 : ref;    
var r1812 : ref;    
var r2813 : ref;    
var $ex_return : bool;    
var $r3816 : ref;    
var $i1822 : int;    
var r0811 : ref;
    assume $this != $null;
    $ex_return := false;
    r0811 := $this;
    r1812 := $in_parameter__0;
    r2813 := $in_parameter__1;
    assert r1812 != $null;
    $r3816 := $heap[r1812,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r3816 != $null;
    call $r4817, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$usage$1913($r3816);
    $i0818 := $stringSizeHeap[$r4817];
    if ($i0818 != 0) {
        goto block82;
    }
    $return := 0;
    return;
  block82:
    assert r1812 != $null;
    call $r5821, $exception := java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getNameAndMeta$2436(r1812, r2813);
    $i1822 := $stringSizeHeap[$r5821];
    $return := $i1822;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.CmdLineParser$getOptionName$2206($this:ref) returns ($return:ref, $exception:ref){
    
var $r1825 : ref;    
var r0823 : ref;    
var $r2826 : ref;    
var $ex_return : bool;    
var $r3827 : ref;
    assume $this != $null;
    $ex_return := false;
    r0823 := $this;
    assert r0823 != $null;
    $r1825 := $heap[r0823,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307];
    assert $r1825 != $null;
    $r2826 := $heap[$r1825,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r2826 != $null;
    call $r3827, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($r2826);
    $return := $r3827;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$parseArgument$2207($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $r3835 : ref;    
var $r4836 : ref;    
var r0828 : ref;    
var $i0833 : int;    
var $fakelocal_0 : ref;    
var $r2834 : ref;    
var r1829 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r0828 := $this;
    r1829 := $in_parameter__0;
    assert r1829 != $null;
    call $i0833, $exception := int$java.util.Collection$size$569(r1829);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := $arrayType(java.lang.String)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := $i0833];
    $r2834 := $fakelocal_0;
    assert r1829 != $null;
    call $r3835, $exception := java.lang.Object$lp$$rp$$java.util.Collection$toArray$574(r1829, $r2834);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $heap[$r3835,$type] <: $arrayType(java.lang.String);
    $r4836 := $r3835;
    assert r0828 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$parseArgument$2208(r0828, $r4836);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$parseArgument$2208($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $z11967 : int;    
var $r12880 : ref;    
var $fakelocal_1 : ref;    
var $z3866 : int;    
var r3843 : ref;    
var $r11879 : ref;    
var $r19898 : ref;    
var $r30931 : ref;    
var i0845 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_5 : ref;    
var $r8871 : ref;    
var $z10964 : int;    
var $r44968 : ref;    
var $z6929 : int;    
var $fakelocal_4 : ref;    
var $fakelocal_7 : ref;    
var r42961 : ref;    
var $r45971 : ref;    
var $r23908 : ref;    
var r17892 : ref;    
var $r16891 : ref;    
var $r46973 : ref;    
var $fakelocal_9 : ref;    
var $r39953 : ref;    
var $ex_return : bool;    
var r0837 : ref;    
var $r13881 : ref;    
var $r6852 : ref;    
var r1838 : ref;    
var $r49979 : ref;    
var $r43963 : ref;    
var $fakelocal_3 : ref;    
var $z4912 : int;    
var $r48978 : ref;    
var $r38951 : ref;    
var i4917 : int;    
var $r22907 : ref;    
var $fakelocal_8 : ref;    
var $r33940 : ref;    
var $r15889 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_10 : ref;    
var $r28925 : ref;    
var r40955 : ref;    
var $r26914 : ref;    
var $r2839 : ref;    
var $i3890 : int;    
var $r10876 : ref;    
var r5846 : ref;    
var $r9875 : ref;    
var r4844 : ref;    
var r29927 : ref;    
var $r47977 : ref;    
var $r41959 : ref;    
var $r32935 : ref;    
var $r35945 : ref;    
var $r37950 : ref;    
var z0847 : int;    
var $r21905 : ref;    
var $r18893 : ref;    
var $r25911 : ref;    
var $r27922 : ref;    
var $z8939 : int;    
var $i2887 : int;    
var $r36949 : ref;    
var $z2861 : int;    
var $z9957 : int;    
var $i1864 : int;    
var $r14886 : ref;    
var $r20902 : ref;    
var r31933 : ref;    
var $z7936 : int;    
var $fakelocal_6 : int;    
var $r34943 : ref;    
var $z1856 : int;    
var $r24910 : ref;
    assume $this != $null;
    $ex_return := false;
    r0837 := $this;
    r1838 := $in_parameter__0;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.CmdLineParser$CmdLineImpl];
    $r2839 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$$la$init$ra$$3047($r2839, r0837, r1838);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    r3843 := $r2839;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.util.HashSet];
    $r6852 := $fakelocal_1;
    call $exception := void$java.util.HashSet$$la$init$ra$$3169($r6852);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    r4844 := $r6852;
    i0845 := 0;
  block83:
    assert r3843 != $null;
    call $z1856, $exception := boolean$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$hasMore$3048(r3843);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z1856 == 0) {
        goto block84;
    }
    assert r3843 != $null;
    call r5846, $exception := java.lang.String$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$getCurrentToken$3049(r3843);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert r0837 != $null;
    call $z2861, $exception := boolean$org.kohsuke.args4j.CmdLineParser$isOption$2212(r0837, r5846);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z2861 == 0) {
        goto block85;
    }
    assert r5846 != $null;
    call $i1864, $exception := int$java.lang.String$indexOf$95(r5846, 61);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($i1864 == -1) {
        goto block86;
    }
    $z3866 := 1;
    goto block87;
  block86:
    $z3866 := 0;
  block87:
    z0847 := $z3866;
    if (z0847 == 0) {
        goto block88;
    }
    assert r0837 != $null;
    call $r8871, $exception := org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionHandler$2209(r0837, r5846);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    goto block89;
  block88:
    assert r0837 != $null;
    call $r8871, $exception := org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionByName$2210(r0837, r5846);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block89:
    assert r0837 != $null;
    $heap := $heap[r0837,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307 := $r8871];
    assert r0837 != $null;
    $r9875 := $heap[r0837,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307];
    if ($r9875 != $null) {
        goto block90;
    }
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.CmdLineException];
    $r10876 := $fakelocal_2;
    $r11879 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNDEFINED_OPTION395;
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 1];
    $r12880 := $fakelocal_3;
    assert 0 < $arrSizeHeap[$r12880] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r12880 := $refArrHeap[$r12880][0 := r5846]];
    assert $r11879 != $null;
    call $r13881, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r11879, $r12880);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r10876, r0837, $r13881);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r10876;
    return;
  block90:
    call $exception := void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$access$100$3053(r3843, 1);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    goto block91;
  block85:
    assert r0837 != $null;
    $r14886 := $heap[r0837,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r14886 != $null;
    call $i2887, $exception := int$java.util.List$size$152($r14886);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if (i0845 < $i2887) {
        goto block92;
    }
    assert r0837 != $null;
    $r15889 := $heap[r0837,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r15889 != $null;
    call $i3890, $exception := int$java.util.List$size$152($r15889);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($i3890 != 0) {
        goto block93;
    }
    $r16891 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_ARGUMENT_ALLOWED396;
    goto block94;
  block93:
    $r16891 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$TOO_MANY_ARGUMENTS398;
  block94:
    r17892 := $r16891;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := org.kohsuke.args4j.CmdLineException];
    $r18893 := $fakelocal_4;
    havoc $fakelocal_5;
    assume !$heap[$fakelocal_5,$alloc];
    $heap := $heap[$fakelocal_5,$alloc := true];
    assume $fakelocal_5 != $null;
    $heap := $heap[$fakelocal_5,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_5 := 1];
    $r19898 := $fakelocal_5;
    assert 0 < $arrSizeHeap[$r19898] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r19898 := $refArrHeap[$r19898][0 := r5846]];
    assert r17892 != $null;
    call $r20902, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710(r17892, $r19898);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r18893, r0837, $r20902);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r18893;
    return;
  block92:
    assert r0837 != $null;
    $r21905 := $heap[r0837,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r21905 != $null;
    call $r22907, $exception := java.lang.Object$java.util.List$get$168($r21905, i0845);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $heap[$r22907,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    $r23908 := $r22907;
    assert r0837 != $null;
    $heap := $heap[r0837,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307 := $r23908];
    assert r0837 != $null;
    $r24910 := $heap[r0837,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307];
    assert $r24910 != $null;
    $r25911 := $heap[$r24910,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r25911 != $null;
    call $z4912, $exception := boolean$org.kohsuke.args4j.OptionDef$isMultiValued$1917($r25911);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z4912 != 0) {
        goto block91;
    }
    i0845 := i0845 + 1;
  block91:
    assert r0837 != $null;
    $r26914 := $heap[r0837,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307];
    assert $r26914 != $null;
    call i4917, $exception := int$org.kohsuke.args4j.spi.OptionHandler$parseArguments$2433($r26914, r3843);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$access$100$3053(r3843, i4917);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert r0837 != $null;
    $r27922 := $heap[r0837,org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$currentOptionHandler307];
    assert r4844 != $null;
    call $fakelocal_6, $exception := boolean$java.util.Set$add$239(r4844, $r27922);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    goto block83;
  block84:
    assert r0837 != $null;
    $r28925 := $heap[r0837,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    assert $r28925 != $null;
    call r29927, $exception := java.util.Iterator$java.util.List$iterator$155($r28925);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block95:
    assert r29927 != $null;
    call $z6929, $exception := boolean$java.util.Iterator$hasNext$1051(r29927);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z6929 == 0) {
        goto block96;
    }
    assert r29927 != $null;
    call $r30931, $exception := java.lang.Object$java.util.Iterator$next$1052(r29927);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $heap[$r30931,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r31933 := $r30931;
    assert r31933 != $null;
    $r32935 := $heap[r31933,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r32935 != $null;
    call $z7936, $exception := boolean$org.kohsuke.args4j.OptionDef$required$1915($r32935);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z7936 == 0) {
        goto block97;
    }
    assert r4844 != $null;
    call $z8939, $exception := boolean$java.util.Set$contains$235(r4844, r31933);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z8939 != 0) {
        goto block97;
    }
    havoc $fakelocal_7;
    assume !$heap[$fakelocal_7,$alloc];
    $heap := $heap[$fakelocal_7,$alloc := true];
    assume $fakelocal_7 != $null;
    $heap := $heap[$fakelocal_7,$type := org.kohsuke.args4j.CmdLineException];
    $r33940 := $fakelocal_7;
    $r34943 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_OPTION_MISSING397;
    havoc $fakelocal_8;
    assume !$heap[$fakelocal_8,$alloc];
    $heap := $heap[$fakelocal_8,$alloc := true];
    assume $fakelocal_8 != $null;
    $heap := $heap[$fakelocal_8,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_8 := 1];
    $r35945 := $fakelocal_8;
    assert r31933 != $null;
    $r36949 := $heap[r31933,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r36949 != $null;
    call $r37950, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($r36949);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 0 < $arrSizeHeap[$r35945] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r35945 := $refArrHeap[$r35945][0 := $r37950]];
    assert $r34943 != $null;
    call $r38951, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r34943, $r35945);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r33940, r0837, $r38951);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r33940;
    return;
  block97:
    goto block95;
  block96:
    assert r0837 != $null;
    $r39953 := $heap[r0837,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r39953 != $null;
    call r40955, $exception := java.util.Iterator$java.util.List$iterator$155($r39953);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block98:
    assert r40955 != $null;
    call $z9957, $exception := boolean$java.util.Iterator$hasNext$1051(r40955);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z9957 == 0) {
        goto block99;
    }
    assert r40955 != $null;
    call $r41959, $exception := java.lang.Object$java.util.Iterator$next$1052(r40955);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $heap[$r41959,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r42961 := $r41959;
    assert r42961 != $null;
    $r43963 := $heap[r42961,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r43963 != $null;
    call $z10964, $exception := boolean$org.kohsuke.args4j.OptionDef$required$1915($r43963);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z10964 == 0) {
        goto block100;
    }
    assert r4844 != $null;
    call $z11967, $exception := boolean$java.util.Set$contains$235(r4844, r42961);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z11967 != 0) {
        goto block100;
    }
    havoc $fakelocal_9;
    assume !$heap[$fakelocal_9,$alloc];
    $heap := $heap[$fakelocal_9,$alloc := true];
    assume $fakelocal_9 != $null;
    $heap := $heap[$fakelocal_9,$type := org.kohsuke.args4j.CmdLineException];
    $r44968 := $fakelocal_9;
    $r45971 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_ARGUMENT_MISSING399;
    havoc $fakelocal_10;
    assume !$heap[$fakelocal_10,$alloc];
    $heap := $heap[$fakelocal_10,$alloc := true];
    assume $fakelocal_10 != $null;
    $heap := $heap[$fakelocal_10,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_10 := 1];
    $r46973 := $fakelocal_10;
    assert r42961 != $null;
    $r47977 := $heap[r42961,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r47977 != $null;
    call $r48978, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($r47977);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 0 < $arrSizeHeap[$r46973] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r46973 := $refArrHeap[$r46973][0 := $r48978]];
    assert $r45971 != $null;
    call $r49979, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r45971, $r46973);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r44968, r0837, $r49979);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r44968;
    return;
  block100:
    goto block98;
  block99:
    return;
}


implementation org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionHandler$2209($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r0980 : ref;    
var $r61005 : ref;    
var $ex_return : bool;    
var r1981 : ref;    
var r4988 : ref;    
var i0985 : int;    
var $r51000 : ref;    
var r2984 : ref;    
var r3987 : ref;
    assume $this != $null;
    $ex_return := false;
    r0980 := $this;
    r1981 := $in_parameter__0;
    assert r0980 != $null;
    call r2984, $exception := org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionByName$2210(r0980, r1981);
    if (r2984 != $null) {
        goto block101;
    }
    i0985 := $stringSizeHeap[r1981];
  block102:
    if (i0985 <= 1) {
        goto block101;
    }
    assert r1981 != $null;
    call r3987, $exception := java.lang.String$java.lang.String$substring$108(r1981, 0, i0985);
    assert r0980 != $null;
    $r51000 := $heap[r0980,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    assert r0980 != $null;
    call r4988, $exception := java.util.Map$org.kohsuke.args4j.CmdLineParser$filter$2211(r0980, $r51000, r3987);
    assert r4988 != $null;
    call $r61005, $exception := java.lang.Object$java.util.Map$get$1160(r4988, r3987);
    assert $heap[$r61005,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r2984 := $r61005;
    if (r2984 == $null) {
        goto block103;
    }
    $return := r2984;
    return;
  block103:
    i0985 := i0985 + -1;
    goto block102;
  block101:
    $return := r2984;
    return;
}


implementation org.kohsuke.args4j.spi.OptionHandler$org.kohsuke.args4j.CmdLineParser$findOptionByName$2210($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r61020 : ref;    
var $r71021 : ref;    
var $z21047 : int;    
var i01018 : int;    
var $ex_return : bool;    
var r51017 : ref;    
var $r91029 : ref;    
var r21013 : ref;    
var $r101032 : ref;    
var r41015 : ref;    
var $z11033 : int;    
var $z01024 : int;    
var i11019 : int;    
var r31014 : ref;    
var r01010 : ref;    
var r11011 : ref;    
var $r81026 : ref;
    assume $this != $null;
    $ex_return := false;
    r01010 := $this;
    r11011 := $in_parameter__0;
    assert r01010 != $null;
    $r71021 := $heap[r01010,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    assert $r71021 != $null;
    call r21013, $exception := java.util.Iterator$java.util.List$iterator$155($r71021);
  block104:
    assert r21013 != $null;
    call $z01024, $exception := boolean$java.util.Iterator$hasNext$1051(r21013);
    if ($z01024 == 0) {
        goto block105;
    }
    assert r21013 != $null;
    call $r81026, $exception := java.lang.Object$java.util.Iterator$next$1052(r21013);
    assert $heap[$r81026,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r31014 := $r81026;
    assert r31014 != $null;
    $r91029 := $heap[r31014,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $heap[$r91029,$type] <: org.kohsuke.args4j.NamedOptionDef;
    r41015 := $r91029;
    assert r41015 != $null;
    call $r101032, $exception := java.lang.String$org.kohsuke.args4j.NamedOptionDef$name$2874(r41015);
    assert r11011 != $null;
    call $z11033, $exception := boolean$java.lang.String$equals$83(r11011, $r101032);
    if ($z11033 == 0) {
        goto block106;
    }
    $return := r31014;
    return;
  block106:
    assert r41015 != $null;
    call r51017, $exception := java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases$2875(r41015);
    assert r51017 != $null;
    i01018 := $arrSizeHeap[r51017];
    i11019 := 0;
  block107:
    if (i11019 >= i01018) {
        goto block108;
    }
    assert i11019 < $arrSizeHeap[r51017] && i11019 >= 0;
    r61020 := $refArrHeap[r51017][i11019];
    assert r11011 != $null;
    call $z21047, $exception := boolean$java.lang.String$equals$83(r11011, r61020);
    if ($z21047 == 0) {
        goto block109;
    }
    $return := r31014;
    return;
  block109:
    i11019 := i11019 + 1;
    goto block107;
  block108:
    goto block104;
  block105:
    $return := $null;
    return;
}


implementation java.util.Map$org.kohsuke.args4j.CmdLineParser$filter$2211($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var r21052 : ref;    
var r51056 : ref;    
var r61057 : ref;    
var $r31053 : ref;    
var $r81067 : ref;    
var $fakelocal_1 : ref;    
var r41055 : ref;    
var $z01062 : int;    
var $fakelocal_0 : ref;    
var $z11069 : int;    
var $r71064 : ref;    
var $r91072 : ref;    
var r11051 : ref;    
var r01050 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r01050 := $this;
    r11051 := $in_parameter__0;
    r21052 := $in_parameter__1;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.TreeMap];
    $r31053 := $fakelocal_0;
    call $exception := void$java.util.TreeMap$$la$init$ra$$2724($r31053);
    r41055 := $r31053;
    assert r11051 != $null;
    call r51056, $exception := java.util.Iterator$java.util.List$iterator$155(r11051);
  block110:
    assert r51056 != $null;
    call $z01062, $exception := boolean$java.util.Iterator$hasNext$1051(r51056);
    if ($z01062 == 0) {
        goto block111;
    }
    assert r51056 != $null;
    call $r71064, $exception := java.lang.Object$java.util.Iterator$next$1052(r51056);
    assert $heap[$r71064,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r61057 := $r71064;
    assert r11051 != $null;
    call $r81067, $exception := java.lang.String$java.lang.Object$toString$44(r11051);
    assert $r81067 != $null;
    call $z11069, $exception := boolean$java.lang.String$startsWith$92($r81067, r21052);
    if ($z11069 == 0) {
        goto block112;
    }
    assert r11051 != $null;
    call $r91072, $exception := java.lang.String$java.lang.Object$toString$44(r11051);
    assert r41055 != $null;
    call $fakelocal_1, $exception := java.lang.Object$java.util.Map$put$1161(r41055, $r91072, r61057);
  block112:
    goto block110;
  block111:
    $return := r41055;
    return;
}


implementation boolean$org.kohsuke.args4j.CmdLineParser$isOption$2212($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var r11076 : ref;    
var $ex_return : bool;    
var $z21082 : int;    
var r01075 : ref;    
var $z11081 : int;    
var $z01079 : int;
    assume $this != $null;
    $ex_return := false;
    r01075 := $this;
    r11076 := $in_parameter__0;
    assert r01075 != $null;
    $z01079 := $heap[r01075,boolean$org.kohsuke.args4j.CmdLineParser$parsingOptions0];
    if ($z01079 == 0) {
        goto block113;
    }
    assert r11076 != $null;
    call $z11081, $exception := boolean$java.lang.String$startsWith$92(r11076, $StringConst14);
    if ($z11081 == 0) {
        goto block113;
    }
    $z21082 := 1;
    goto block114;
  block113:
    $z21082 := 0;
  block114:
    $return := $z21082;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $r21087 : ref;    
var r11084 : ref;    
var $z01094 : int;    
var r01083 : ref;    
var $r51092 : ref;    
var r31089 : ref;    
var $r61095 : ref;    
var $r41091 : ref;    
var $fakelocal_3 : ref;    
var $r81098 : ref;    
var $fakelocal_1 : ref;    
var $r71097 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $r91101 : ref;    
var $ex_return : bool;
    $ex_return := false;
    r01083 := $in_parameter__0;
    r11084 := $in_parameter__1;
    if (r01083 == $null) {
        goto block115;
    }
    if (r11084 != $null) {
        goto block116;
    }
  block115:
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.IllegalArgumentException];
    $r41091 := $fakelocal_0;
    call $exception := void$java.lang.IllegalArgumentException$$la$init$ra$$918($r41091);
    $exception := $r41091;
    return;
  block116:
    $r51092 := CC$org$_$kohsuke$_$args4j$_$spi$_$OptionHandler;
    assert $r51092 != $null;
    call $z01094, $exception := boolean$java.lang.Class$isAssignableFrom$452($r51092, r11084);
    if ($z01094 != 0) {
        goto block117;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.IllegalArgumentException];
    $r61095 := $fakelocal_1;
    $r21087 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_OPTIONHANDLER404;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 0];
    $r71097 := $fakelocal_2;
    assert $r21087 != $null;
    call $r81098, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r21087, $r71097);
    call $exception := void$java.lang.IllegalArgumentException$$la$init$ra$$919($r61095, $r81098);
    $exception := $r61095;
    return;
  block117:
    call r31089, $exception := java.lang.reflect.Constructor$org.kohsuke.args4j.CmdLineParser$getConstructor$2214(r11084);
    $r91101 := java.util.Map$org.kohsuke.args4j.CmdLineParser$handlerClasses308;
    assert $r91101 != $null;
    call $fakelocal_3, $exception := java.lang.Object$java.util.Map$put$1161($r91101, r01083, r31089);
    return;
}


implementation java.lang.reflect.Constructor$org.kohsuke.args4j.CmdLineParser$getConstructor$2214($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r11111 : ref;    
var $r71127 : ref;    
var $r81129 : ref;    
var $r61125 : ref;    
var $ex_return : bool;    
var $fakelocal_2 : ref;    
var $r21114 : ref;    
var $r41122 : ref;    
var $r31121 : ref;    
var $r51123 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var r01105 : ref;
    $ex_return := false;
    r01105 := $in_parameter__0;
  block118:
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := $arrayType(java.lang.Class)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 3];
    $r21114 := $fakelocal_0;
    assert 0 < $arrSizeHeap[$r21114] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r21114 := $refArrHeap[$r21114][0 := CC$org$_$kohsuke$_$args4j$_$CmdLineParser]];
    assert 1 < $arrSizeHeap[$r21114] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r21114 := $refArrHeap[$r21114][1 := CC$org$_$kohsuke$_$args4j$_$OptionDef]];
    assert 2 < $arrSizeHeap[$r21114] && 2 >= 0;
    $refArrHeap := $refArrHeap[$r21114 := $refArrHeap[$r21114][2 := CC$org$_$kohsuke$_$args4j$_$spi$_$Setter]];
    assert r01105 != $null;
    call $r31121, $exception := java.lang.reflect.Constructor$java.lang.Class$getConstructor$494(r01105, $r21114);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        goto block119;
    }
  block120:
    $return := $r31121;
    return;
  block119:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r41122 := $exception;
    r11111 := $r41122;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.IllegalArgumentException];
    $r51123 := $fakelocal_1;
    $r61125 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_CONSTRUCTOR_ON_HANDLER405;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 1];
    $r71127 := $fakelocal_2;
    assert 0 < $arrSizeHeap[$r71127] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r71127 := $refArrHeap[$r71127][0 := r01105]];
    assert $r61125 != $null;
    call $r81129, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r61125, $r71127);
    call $exception := void$java.lang.IllegalArgumentException$$la$init$ra$$919($r51123, $r81129);
    $exception := $r51123;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$setUsageWidth$2215($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var i01131 : int;    
var $ex_return : bool;    
var r01130 : ref;
    assume $this != $null;
    $ex_return := false;
    r01130 := $this;
    i01131 := $in_parameter__0;
    assert r01130 != $null;
    $heap := $heap[r01130,int$org.kohsuke.args4j.CmdLineParser$usageWidth0 := i01131];
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$stopOptionParsing$2216($this:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r01134 : ref;
    assume $this != $null;
    $ex_return := false;
    r01134 := $this;
    assert r01134 != $null;
    $heap := $heap[r01134,boolean$org.kohsuke.args4j.CmdLineParser$parsingOptions0 := 0];
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$printSingleLineUsage$2217($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $r21140 : ref;    
var $ex_return : bool;    
var r01137 : ref;    
var r11138 : ref;    
var $fakelocal_0 : ref;
    assume $this != $null;
    $ex_return := false;
    r01137 := $this;
    r11138 := $in_parameter__0;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.io.OutputStreamWriter];
    $r21140 := $fakelocal_0;
    call $exception := void$java.io.OutputStreamWriter$$la$init$ra$$2302($r21140, r11138);
    assert r01137 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$printSingleLineUsage$2218(r01137, $r21140, $null);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$printSingleLineUsage$2218($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $z11170 : int;    
var $fakelocal_0 : ref;    
var r51151 : ref;    
var $r91166 : ref;    
var r101168 : ref;    
var r61152 : ref;    
var $r31147 : ref;    
var r121174 : ref;    
var $r81160 : ref;    
var r41150 : ref;    
var $r71155 : ref;    
var r11145 : ref;    
var $z01158 : int;    
var r21146 : ref;    
var $r111172 : ref;    
var $ex_return : bool;    
var r01144 : ref;
    assume $this != $null;
    $ex_return := false;
    r01144 := $this;
    r11145 := $in_parameter__0;
    r21146 := $in_parameter__1;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.io.PrintWriter];
    $r31147 := $fakelocal_0;
    call $exception := void$java.io.PrintWriter$$la$init$ra$$249($r31147, r11145);
    r41150 := $r31147;
    assert r01144 != $null;
    $r71155 := $heap[r01144,java.util.List$org.kohsuke.args4j.CmdLineParser$arguments306];
    assert $r71155 != $null;
    call r51151, $exception := java.util.Iterator$java.util.List$iterator$155($r71155);
  block121:
    assert r51151 != $null;
    call $z01158, $exception := boolean$java.util.Iterator$hasNext$1051(r51151);
    if ($z01158 == 0) {
        goto block122;
    }
    assert r51151 != $null;
    call $r81160, $exception := java.lang.Object$java.util.Iterator$next$1052(r51151);
    assert $heap[$r81160,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r61152 := $r81160;
    assert r01144 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$printSingleLineOption$2219(r01144, r41150, r61152, r21146);
    goto block121;
  block122:
    assert r01144 != $null;
    $r91166 := $heap[r01144,java.util.List$org.kohsuke.args4j.CmdLineParser$options305];
    assert $r91166 != $null;
    call r101168, $exception := java.util.Iterator$java.util.List$iterator$155($r91166);
  block123:
    assert r101168 != $null;
    call $z11170, $exception := boolean$java.util.Iterator$hasNext$1051(r101168);
    if ($z11170 == 0) {
        goto block124;
    }
    assert r101168 != $null;
    call $r111172, $exception := java.lang.Object$java.util.Iterator$next$1052(r101168);
    assert $heap[$r111172,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    r121174 := $r111172;
    assert r01144 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$printSingleLineOption$2219(r01144, r41150, r121174, r21146);
    goto block123;
  block124:
    assert r41150 != $null;
    call $exception := void$java.io.PrintWriter$flush$259(r41150);
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$printSingleLineOption$2219($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $r71201 : ref;    
var $z11197 : int;    
var r31183 : ref;    
var $ex_return : bool;    
var $z21202 : int;    
var $r41188 : ref;    
var r21182 : ref;    
var $r51194 : ref;    
var $z01189 : int;    
var r01180 : ref;    
var $r61196 : ref;    
var r11181 : ref;
    assume $this != $null;
    $ex_return := false;
    r01180 := $this;
    r11181 := $in_parameter__0;
    r21182 := $in_parameter__1;
    r31183 := $in_parameter__2;
    assert r11181 != $null;
    call $exception := void$java.io.PrintWriter$print$271(r11181, 32);
    assert r21182 != $null;
    $r41188 := $heap[r21182,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r41188 != $null;
    call $z01189, $exception := boolean$org.kohsuke.args4j.OptionDef$required$1915($r41188);
    if ($z01189 != 0) {
        goto block125;
    }
    assert r11181 != $null;
    call $exception := void$java.io.PrintWriter$print$271(r11181, 91);
  block125:
    assert r21182 != $null;
    call $r51194, $exception := java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getNameAndMeta$2436(r21182, r31183);
    assert r11181 != $null;
    call $exception := void$java.io.PrintWriter$print$277(r11181, $r51194);
    assert r21182 != $null;
    $r61196 := $heap[r21182,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r61196 != $null;
    call $z11197, $exception := boolean$org.kohsuke.args4j.OptionDef$isMultiValued$1917($r61196);
    if ($z11197 == 0) {
        goto block126;
    }
    assert r11181 != $null;
    call $exception := void$java.io.PrintWriter$print$277(r11181, $StringConst15);
  block126:
    assert r21182 != $null;
    $r71201 := $heap[r21182,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r71201 != $null;
    call $z21202, $exception := boolean$org.kohsuke.args4j.OptionDef$required$1915($r71201);
    if ($z21202 != 0) {
        goto block127;
    }
    assert r11181 != $null;
    call $exception := void$java.io.PrintWriter$print$271(r11181, 93);
  block127:
    return;
}


implementation java.lang.String$org.kohsuke.args4j.CmdLineParser$access$000$2220($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r01205 : ref;    
var $ex_return : bool;    
var $r11207 : ref;
    $ex_return := false;
    r01205 := $in_parameter__0;
    assert r01205 != $null;
    call $r11207, $exception := java.lang.String$org.kohsuke.args4j.CmdLineParser$getOptionName$2206(r01205);
    $return := $r11207;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$$la$clinit$ra$$2221() returns ($exception:ref){
    
var $r71241 : ref;    
var $r111254 : ref;    
var $r01208 : ref;    
var $r61237 : ref;    
var $r81245 : ref;    
var $r11210 : ref;    
var $r101253 : ref;    
var $r31223 : ref;    
var $fakelocal_0 : ref;    
var $ex_return : bool;    
var $r51233 : ref;    
var $r121255 : ref;    
var $r21213 : ref;    
var $r91249 : ref;    
var $r41227 : ref;
    $ex_return := false;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.HashMap];
    $r01208 := $fakelocal_0;
    call $exception := void$java.util.HashMap$$la$init$ra$$2960($r01208);
    call $r11210, $exception := java.util.Map$java.util.Collections$synchronizedMap$2924($r01208);
    java.util.Map$org.kohsuke.args4j.CmdLineParser$handlerClasses308 := $r11210;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Boolean, CC$org$_$kohsuke$_$args4j$_$spi$_$BooleanOptionHandler);
    $r21213 := java.lang.Class$java.lang.Boolean$TYPE75;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r21213, CC$org$_$kohsuke$_$args4j$_$spi$_$BooleanOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$io$_$File, CC$org$_$kohsuke$_$args4j$_$spi$_$FileOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$net$_$URL, CC$org$_$kohsuke$_$args4j$_$spi$_$URLOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$net$_$URI, CC$org$_$kohsuke$_$args4j$_$spi$_$URIOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Integer, CC$org$_$kohsuke$_$args4j$_$spi$_$IntOptionHandler);
    $r31223 := java.lang.Class$java.lang.Integer$TYPE77;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r31223, CC$org$_$kohsuke$_$args4j$_$spi$_$IntOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Double, CC$org$_$kohsuke$_$args4j$_$spi$_$DoubleOptionHandler);
    $r41227 := java.lang.Class$java.lang.Double$TYPE84;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r41227, CC$org$_$kohsuke$_$args4j$_$spi$_$DoubleOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$String, CC$org$_$kohsuke$_$args4j$_$spi$_$StringOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Byte, CC$org$_$kohsuke$_$args4j$_$spi$_$ByteOptionHandler);
    $r51233 := java.lang.Class$java.lang.Byte$TYPE211;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r51233, CC$org$_$kohsuke$_$args4j$_$spi$_$ByteOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Character, CC$org$_$kohsuke$_$args4j$_$spi$_$CharOptionHandler);
    $r61237 := java.lang.Class$java.lang.Character$TYPE210;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r61237, CC$org$_$kohsuke$_$args4j$_$spi$_$CharOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Float, CC$org$_$kohsuke$_$args4j$_$spi$_$FloatOptionHandler);
    $r71241 := java.lang.Class$java.lang.Float$TYPE83;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r71241, CC$org$_$kohsuke$_$args4j$_$spi$_$FloatOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Long, CC$org$_$kohsuke$_$args4j$_$spi$_$LongOptionHandler);
    $r81245 := java.lang.Class$java.lang.Long$TYPE76;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r81245, CC$org$_$kohsuke$_$args4j$_$spi$_$LongOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$lang$_$Short, CC$org$_$kohsuke$_$args4j$_$spi$_$ShortOptionHandler);
    $r91249 := java.lang.Class$java.lang.Short$TYPE82;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213($r91249, CC$org$_$kohsuke$_$args4j$_$spi$_$ShortOptionHandler);
    call $exception := void$org.kohsuke.args4j.CmdLineParser$registerHandler$2213(CC$java$_$util$_$Map, CC$org$_$kohsuke$_$args4j$_$spi$_$MapOptionHandler);
    $r101253 := CC$org$_$kohsuke$_$args4j$_$CmdLineParser;
    assert $r101253 != $null;
    call $r111254, $exception := java.lang.String$java.lang.Class$getName$458($r101253);
    call $r121255, $exception := java.util.logging.Logger$java.util.logging.Logger$getLogger$2446($r111254);
    java.util.logging.Logger$org.kohsuke.args4j.CmdLineParser$LOGGER309 := $r121255;
    return;
}


implementation void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r21258 : ref;    
var r31259 : ref;    
var r11257 : ref;    
var $ex_return : bool;    
var r01256 : ref;
    assume $this != $null;
    $ex_return := false;
    r01256 := $this;
    r11257 := $in_parameter__0;
    r21258 := $in_parameter__1;
    r31259 := $in_parameter__2;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r01256);
    assert r01256 != $null;
    $heap := $heap[r01256,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341 := r11257];
    assert r01256 != $null;
    $heap := $heap[r01256,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339 := r21258];
    assert r01256 != $null;
    $heap := $heap[r01256,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340 := r31259];
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getMetaVariable$2435($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r01267 : ref;    
var r21270 : ref;    
var r11268 : ref;    
var $r41273 : ref;    
var $i01276 : int;    
var $ex_return : bool;    
var r31272 : ref;
    assume $this != $null;
    $ex_return := false;
    r01267 := $this;
    r11268 := $in_parameter__0;
    assert r01267 != $null;
    $r41273 := $heap[r01267,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r41273 != $null;
    call r21270, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$metaVar$1914($r41273);
    $i01276 := $stringSizeHeap[r21270];
    if ($i01276 != 0) {
        goto block128;
    }
    assert r01267 != $null;
    call r21270, $exception := java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getDefaultMetaVariable$2434(r01267);
  block128:
    if (r21270 != $null) {
        goto block129;
    }
    $return := $null;
    return;
  block129:
    if (r11268 == $null) {
        goto block130;
    }
    assert r11268 != $null;
    call r31272, $exception := java.lang.String$java.util.ResourceBundle$getString$2507(r11268, r21270);
    if (r31272 == $null) {
        goto block130;
    }
    r21270 := r31272;
  block130:
    $return := r21270;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getNameAndMeta$2436($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $i01302 : int;    
var $fakelocal_0 : ref;    
var $r121315 : ref;    
var r11288 : ref;    
var r01287 : ref;    
var $fakelocal_2 : ref;    
var $r91308 : ref;    
var r21290 : ref;    
var $r111313 : ref;    
var $r71303 : ref;    
var $r61297 : ref;    
var $r41293 : ref;    
var r31292 : ref;    
var $r101310 : ref;    
var $r81306 : ref;    
var $r51295 : ref;    
var $fakelocal_1 : ref;    
var $ex_return : bool;    
var $z01294 : int;
    assume $this != $null;
    $ex_return := false;
    r01287 := $this;
    r11288 := $in_parameter__0;
    assert r01287 != $null;
    $r41293 := $heap[r01287,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r41293 != $null;
    call $z01294, $exception := boolean$org.kohsuke.args4j.OptionDef$isArgument$1918($r41293);
    if ($z01294 == 0) {
        goto block131;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $r51295 := $fakelocal_0;
    goto block132;
  block131:
    assert r01287 != $null;
    $r61297 := $heap[r01287,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r61297 != $null;
    call $r51295, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($r61297);
  block132:
    r21290 := $r51295;
    assert r01287 != $null;
    call r31292, $exception := java.lang.String$org.kohsuke.args4j.spi.OptionHandler$getMetaVariable$2435(r01287, r11288);
    if (r31292 == $null) {
        goto block133;
    }
    $i01302 := $stringSizeHeap[r21290];
    if ($i01302 <= 0) {
        goto block134;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.StringBuilder];
    $r71303 := $fakelocal_1;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r71303);
    assert $r71303 != $null;
    call $r81306, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r71303, r21290);
    assert $r81306 != $null;
    call $r91308, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r81306, $StringConst16);
    assert $r91308 != $null;
    call r21290, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r91308);
  block134:
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := java.lang.StringBuilder];
    $r101310 := $fakelocal_2;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r101310);
    assert $r101310 != $null;
    call $r111313, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r101310, r21290);
    assert $r111313 != $null;
    call $r121315, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r111313, r31292);
    assert $r121315 != $null;
    call r21290, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r121315);
  block133:
    $return := r21290;
    return;
}


implementation void$org.kohsuke.args4j.Config$ConfigHandler$$la$init$ra$$2600($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r11319 : ref;    
var r01318 : ref;    
var r21320 : ref;
    assume $this != $null;
    $ex_return := false;
    r01318 := $this;
    r11319 := $in_parameter__0;
    r21320 := $in_parameter__1;
    assert r01318 != $null;
    $heap := $heap[r01318,org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$ConfigHandler$this$0376 := r11319];
    call $exception := void$org.xml.sax.helpers.DefaultHandler$$la$init$ra$$2602(r01318);
    assert r01318 != $null;
    $heap := $heap[r01318,org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$ConfigHandler$config374 := r21320];
    return;
}


implementation void$org.kohsuke.args4j.Config$ConfigHandler$startElement$2601($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref){
    
var $r71344 : ref;    
var r01326 : ref;    
var $ex_return : bool;    
var $z31381 : int;    
var r21328 : ref;    
var $r231386 : ref;    
var $r171369 : ref;    
var $r61341 : ref;    
var $r81346 : ref;    
var $r301403 : ref;    
var $r251391 : ref;    
var r11327 : ref;    
var $r101351 : ref;    
var r31329 : ref;    
var $r131359 : ref;    
var $z01334 : int;    
var $r191374 : ref;    
var $r241389 : ref;    
var $r281400 : ref;    
var $r211380 : ref;    
var $r161366 : ref;    
var $r291401 : ref;    
var $fakelocal_2 : int;    
var $r271395 : ref;    
var $fakelocal_0 : ref;    
var $r201377 : ref;    
var $r121356 : ref;    
var r41330 : ref;    
var $z21375 : int;    
var $r261393 : ref;    
var $z11337 : int;    
var $r51339 : ref;    
var $r91349 : ref;    
var $r221384 : ref;    
var $fakelocal_1 : ref;    
var $r311405 : ref;    
var $z41398 : int;    
var $r141361 : ref;    
var $r111354 : ref;    
var $r181371 : ref;    
var $r151364 : ref;
    assume $this != $null;
    $ex_return := false;
    r01326 := $this;
    r11327 := $in_parameter__0;
    r21328 := $in_parameter__1;
    r31329 := $in_parameter__2;
    r41330 := $in_parameter__3;
    assert r31329 != $null;
    call $z01334, $exception := boolean$java.lang.String$equals$83(r31329, $StringConst17);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($z01334 != 0) {
        goto block135;
    }
    assert r31329 != $null;
    call $z11337, $exception := boolean$java.lang.String$equals$83(r31329, $StringConst18);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($z11337 == 0) {
        goto block136;
    }
  block135:
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.spi.ConfigElement];
    $r51339 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.spi.ConfigElement$$la$init$ra$$2639($r51339);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert r01326 != $null;
    $heap := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375 := $r51339];
    assert r01326 != $null;
    $r61341 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r71344, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst19);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r61341 != $null;
    $heap := $heap[$r61341,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$field379 := $r71344];
    assert r01326 != $null;
    $r81346 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r91349, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst20);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r81346 != $null;
    $heap := $heap[$r81346,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$handler383 := $r91349];
    assert r01326 != $null;
    $r101351 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r111354, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst21);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r101351 != $null;
    $heap := $heap[$r101351,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$metavar384 := $r111354];
    assert r01326 != $null;
    $r121356 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r131359, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst22);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r121356 != $null;
    $heap := $heap[$r121356,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$method380 := $r131359];
    assert r01326 != $null;
    $r141361 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r151364, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst23);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r141361 != $null;
    $heap := $heap[$r141361,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$name381 := $r151364];
    assert r01326 != $null;
    $r161366 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r171369, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst24);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r161366 != $null;
    $heap := $heap[$r161366,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$usage382 := $r171369];
    assert r01326 != $null;
    $r181371 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r191374, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst25);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    call $z21375, $exception := boolean$java.lang.Boolean$getBoolean$860($r191374);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r181371 != $null;
    $heap := $heap[$r181371,boolean$org.kohsuke.args4j.spi.ConfigElement$multiValued0 := $z21375];
    assert r01326 != $null;
    $r201377 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r211380, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst26);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    call $z31381, $exception := boolean$java.lang.Boolean$getBoolean$860($r211380);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r201377 != $null;
    $heap := $heap[$r201377,boolean$org.kohsuke.args4j.spi.ConfigElement$required0 := $z31381];
    assert r41330 != $null;
    call $r221384, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst27);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($r221384 == $null) {
        goto block137;
    }
    assert r01326 != $null;
    $r231386 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert r41330 != $null;
    call $r241389, $exception := java.lang.String$org.xml.sax.Attributes$getValue$2652(r41330, $StringConst27);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r241389 != $null;
    call $r251391, $exception := java.lang.String$lp$$rp$$java.lang.String$split$118($r241389, $StringConst28);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    assert $r231386 != $null;
    $heap := $heap[$r231386,java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.ConfigElement$aliases385 := $r251391];
    goto block138;
  block137:
    assert r01326 != $null;
    $r261393 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.String)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 0];
    $r271395 := $fakelocal_1;
    assert $r261393 != $null;
    $heap := $heap[$r261393,java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.ConfigElement$aliases385 := $r271395];
  block138:
    assert r31329 != $null;
    call $z41398, $exception := boolean$java.lang.String$equals$83(r31329, $StringConst17);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($z41398 == 0) {
        goto block139;
    }
    assert r01326 != $null;
    $r281400 := $heap[r01326,org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$ConfigHandler$config374];
    assert $r281400 != $null;
    $r291401 := $heap[$r281400,java.util.List$org.kohsuke.args4j.Config$options377];
    goto block140;
  block139:
    assert r01326 != $null;
    $r301403 := $heap[r01326,org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$ConfigHandler$config374];
    assert $r301403 != $null;
    $r291401 := $heap[$r301403,java.util.List$org.kohsuke.args4j.Config$arguments378];
  block140:
    assert r01326 != $null;
    $r311405 := $heap[r01326,org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.Config$ConfigHandler$currentCE375];
    assert $r291401 != $null;
    call $fakelocal_2, $exception := boolean$java.util.List$add$158($r291401, $r311405);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
  block136:
    return;
}


implementation void$org.kohsuke.args4j.Config$$la$init$ra$$2637($this:ref) returns ($exception:ref){
    
var $r21413 : ref;    
var $r11409 : ref;    
var r01407 : ref;    
var $fakelocal_0 : ref;    
var $ex_return : bool;    
var $fakelocal_1 : ref;
    assume $this != $null;
    $ex_return := false;
    r01407 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r01407);
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.ArrayList];
    $r11409 := $fakelocal_0;
    call $exception := void$java.util.ArrayList$$la$init$ra$$3003($r11409);
    assert r01407 != $null;
    $heap := $heap[r01407,java.util.List$org.kohsuke.args4j.Config$options377 := $r11409];
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.util.ArrayList];
    $r21413 := $fakelocal_1;
    call $exception := void$java.util.ArrayList$$la$init$ra$$3003($r21413);
    assert r01407 != $null;
    $heap := $heap[r01407,java.util.List$org.kohsuke.args4j.Config$arguments378 := $r21413];
    return;
}


implementation org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$parse$2638($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r31419 : ref;    
var $fakelocal_1 : ref;    
var $r11416 : ref;    
var r21418 : ref;    
var $ex_return : bool;    
var $fakelocal_2 : ref;    
var $r61424 : ref;    
var $fakelocal_0 : ref;    
var r51422 : ref;    
var r01415 : ref;
    $ex_return := false;
    r01415 := $in_parameter__0;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.Config];
    $r11416 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.Config$$la$init$ra$$2637($r11416);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        return;
    }
    r21418 := $r11416;
    call r31419, $exception := org.xml.sax.XMLReader$org.xml.sax.helpers.XMLReaderFactory$createXMLReader$4165();
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        return;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.Config$ConfigHandler];
    $r61424 := $fakelocal_1;
    assert r21418 != $null;
    call $fakelocal_2, $exception := java.lang.Class$java.lang.Object$getClass$40(r21418);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.Config$ConfigHandler$$la$init$ra$$2600($r61424, r21418, r21418);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        return;
    }
    r51422 := $r61424;
    assert r31419 != $null;
    call $exception := void$org.xml.sax.XMLReader$setContentHandler$4158(r31419, r51422);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        return;
    }
    assert r31419 != $null;
    call $exception := void$org.xml.sax.XMLReader$parse$4162(r31419, r01415);
    if ($exception != $null && $heap[$exception,$type] <: org.xml.sax.SAXException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        return;
    }
    $return := r21418;
    return;
}


implementation void$org.kohsuke.args4j.spi.ConfigElement$$la$init$ra$$2639($this:ref) returns ($exception:ref){
    
var $r11441 : ref;    
var $fakelocal_1 : ref;    
var r01433 : ref;    
var $ex_return : bool;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;
    assume $this != $null;
    $ex_return := false;
    r01433 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r01433);
    assert r01433 != $null;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    $heap := $heap[r01433,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$usage382 := $fakelocal_0];
    assert r01433 != $null;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_1 := 0];
    $heap := $heap[r01433,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$metavar384 := $fakelocal_1];
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.String)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 0];
    $r11441 := $fakelocal_2;
    assert r01433 != $null;
    $heap := $heap[r01433,java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.ConfigElement$aliases385 := $r11441];
    assert r01433 != $null;
    $heap := $heap[r01433,boolean$org.kohsuke.args4j.spi.ConfigElement$multiValued0 := 0];
    assert r01433 != $null;
    $heap := $heap[r01433,boolean$org.kohsuke.args4j.spi.ConfigElement$required0 := 0];
    return;
}


implementation boolean$org.kohsuke.args4j.spi.ConfigElement$isInvalid$2640($this:ref) returns ($return:int, $exception:ref){
    
var $z01455 : int;    
var $ex_return : bool;    
var $r41454 : ref;    
var r01446 : ref;    
var $r31452 : ref;    
var $r11448 : ref;    
var $r21450 : ref;
    assume $this != $null;
    $ex_return := false;
    r01446 := $this;
    assert r01446 != $null;
    $r11448 := $heap[r01446,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$field379];
    if ($r11448 != $null) {
        goto block141;
    }
    assert r01446 != $null;
    $r21450 := $heap[r01446,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$method380];
    if ($r21450 == $null) {
        goto block142;
    }
  block141:
    assert r01446 != $null;
    $r31452 := $heap[r01446,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$field379];
    if ($r31452 == $null) {
        goto block143;
    }
    assert r01446 != $null;
    $r41454 := $heap[r01446,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$method380];
    if ($r41454 == $null) {
        goto block143;
    }
  block142:
    $z01455 := 1;
    goto block144;
  block143:
    $z01455 := 0;
  block144:
    $return := $z01455;
    return;
}


implementation void$org.kohsuke.args4j.spi.ShortOptionHandler$$la$init$ra$$2698($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r11457 : ref;    
var r21458 : ref;    
var r01456 : ref;    
var r31459 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r01456 := $this;
    r11457 := $in_parameter__0;
    r21458 := $in_parameter__1;
    r31459 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187(r01456, r11457, r21458, r31459);
    return;
}


implementation java.lang.Short$org.kohsuke.args4j.spi.ShortOptionHandler$parse$2699($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r11465 : ref;    
var $ex_return : bool;    
var $s01467 : int;    
var $r21468 : ref;    
var r01464 : ref;
    assume $this != $null;
    $ex_return := false;
    r01464 := $this;
    r11465 := $in_parameter__0;
    call $s01467, $exception := short$java.lang.Short$parseShort$1002(r11465);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $r21468, $exception := java.lang.Short$java.lang.Short$valueOf$1005($s01467);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21468;
    return;
}


implementation java.lang.Object$org.kohsuke.args4j.spi.ShortOptionHandler$parse$2700($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r01469 : ref;    
var r11470 : ref;    
var $r21473 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r01469 := $this;
    r11470 := $in_parameter__0;
    assert r01469 != $null;
    call $r21473, $exception := java.lang.Short$org.kohsuke.args4j.spi.ShortOptionHandler$parse$2699(r01469, r11470);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21473;
    return;
}


implementation void$org.kohsuke.args4j.spi.LongOptionHandler$$la$init$ra$$2701($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r21476 : ref;    
var r01474 : ref;    
var $ex_return : bool;    
var r31477 : ref;    
var r11475 : ref;
    assume $this != $null;
    $ex_return := false;
    r01474 := $this;
    r11475 := $in_parameter__0;
    r21476 := $in_parameter__1;
    r31477 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187(r01474, r11475, r21476, r31477);
    return;
}


implementation java.lang.Long$org.kohsuke.args4j.spi.LongOptionHandler$parse$2702($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r01482 : ref;    
var $r21486 : ref;    
var r11483 : ref;    
var $l01485 : int;
    assume $this != $null;
    $ex_return := false;
    r01482 := $this;
    r11483 := $in_parameter__0;
    call $l01485, $exception := long$java.lang.Long$parseLong$875(r11483);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $r21486, $exception := java.lang.Long$java.lang.Long$valueOf$878($l01485);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21486;
    return;
}


implementation java.lang.Object$org.kohsuke.args4j.spi.LongOptionHandler$parse$2703($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r11488 : ref;    
var $r21491 : ref;    
var r01487 : ref;
    assume $this != $null;
    $ex_return := false;
    r01487 := $this;
    r11488 := $in_parameter__0;
    assert r01487 != $null;
    call $r21491, $exception := java.lang.Long$org.kohsuke.args4j.spi.LongOptionHandler$parse$2702(r01487, r11488);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21491;
    return;
}


implementation void$org.kohsuke.args4j.spi.ByteOptionHandler$$la$init$ra$$2704($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r31495 : ref;    
var r01492 : ref;    
var r11493 : ref;    
var r21494 : ref;
    assume $this != $null;
    $ex_return := false;
    r01492 := $this;
    r11493 := $in_parameter__0;
    r21494 := $in_parameter__1;
    r31495 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187(r01492, r11493, r21494, r31495);
    return;
}


implementation java.lang.Byte$org.kohsuke.args4j.spi.ByteOptionHandler$parse$2705($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r01500 : ref;    
var $b01503 : int;    
var $ex_return : bool;    
var $r21504 : ref;    
var r11501 : ref;
    assume $this != $null;
    $ex_return := false;
    r01500 := $this;
    r11501 := $in_parameter__0;
    call $b01503, $exception := byte$java.lang.Byte$parseByte$1729(r11501);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $r21504, $exception := java.lang.Byte$java.lang.Byte$valueOf$1727($b01503);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21504;
    return;
}


implementation java.lang.Object$org.kohsuke.args4j.spi.ByteOptionHandler$parse$2706($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r01505 : ref;    
var $r21509 : ref;    
var r11506 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r01505 := $this;
    r11506 := $in_parameter__0;
    assert r01505 != $null;
    call $r21509, $exception := java.lang.Byte$org.kohsuke.args4j.spi.ByteOptionHandler$parse$2705(r01505, r11506);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21509;
    return;
}


implementation org.kohsuke.args4j.Messages$lp$$rp$$org.kohsuke.args4j.Messages$values$2707() returns ($return:ref, $exception:ref){
    
var $r11511 : ref;    
var $r01510 : ref;    
var $ex_return : bool;    
var $r21512 : ref;
    $ex_return := false;
    $r01510 := org.kohsuke.args4j.Messages$lp$$rp$$org.kohsuke.args4j.Messages$$VALUES409;
    assert $r01510 != $null;
    call $r11511 := java.lang.Object$java.lang.Object$clone$43($r01510);
    assert $heap[$r11511,$type] <: $arrayType(org.kohsuke.args4j.Messages);
    $r21512 := $r11511;
    $return := $r21512;
    return;
}


implementation org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$valueOf$2708($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r11516 : ref;    
var $r21517 : ref;    
var $ex_return : bool;    
var r01513 : ref;
    $ex_return := false;
    r01513 := $in_parameter__0;
    call $r11516, $exception := java.lang.Enum$java.lang.Enum$valueOf$1906(CC$org$_$kohsuke$_$args4j$_$Messages, r01513);
    assert $heap[$r11516,$type] <: org.kohsuke.args4j.Messages;
    $r21517 := $r11516;
    $return := $r21517;
    return;
}


implementation void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var $ex_return : bool;    
var r01518 : ref;    
var r11519 : ref;    
var i01520 : int;
    assume $this != $null;
    $ex_return := false;
    r01518 := $this;
    r11519 := $in_parameter__0;
    i01520 := $in_parameter__1;
    call $exception := void$java.lang.Enum$$la$init$ra$$1899(r01518, r11519, i01520);
    return;
}


implementation java.lang.String$org.kohsuke.args4j.Messages$format$2710($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_1 : ref;    
var $r61531 : ref;    
var r31528 : ref;    
var $r71532 : ref;    
var $r131541 : ref;    
var $r91534 : ref;    
var $r111537 : ref;    
var r01524 : ref;    
var $ex_return : bool;    
var $fakelocal_0 : ref;    
var r11525 : ref;    
var $fakelocal_2 : ref;    
var $r51530 : ref;    
var $r81533 : ref;    
var r41529 : ref;    
var $r121539 : ref;    
var $r101536 : ref;
    assume $this != $null;
    $ex_return := false;
    r01524 := $this;
    r11525 := $in_parameter__0;
    r31528 := CC$org$_$kohsuke$_$args4j$_$Messages;
  block145:
    $r51530 := java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408;
    if ($r51530 != $null) {
        goto block146;
    }
    $r61531 := CC$org$_$kohsuke$_$args4j$_$Messages;
    if ($r61531 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_0;
        assume !$heap[$fakelocal_0,$alloc];
        $heap := $heap[$fakelocal_0,$alloc := true];
        assume $fakelocal_0 != $null;
        $heap := $heap[$fakelocal_0,$type := java.lang.NullPointerException];
        $exception := $fakelocal_0;
        goto block147;
    }
    call $r71532, $exception := java.lang.String$java.lang.Class$getName$458($r61531);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block147;
    }
    call $r81533, $exception := java.util.ResourceBundle$java.util.ResourceBundle$getBundle$2513($r71532);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block147;
    }
    java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408 := $r81533;
  block146:
    $r91534 := java.util.ResourceBundle$org.kohsuke.args4j.Messages$rb408;
    if (r01524 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_1;
        assume !$heap[$fakelocal_1,$alloc];
        $heap := $heap[$fakelocal_1,$alloc := true];
        assume $fakelocal_1 != $null;
        $heap := $heap[$fakelocal_1,$type := java.lang.NullPointerException];
        $exception := $fakelocal_1;
        goto block147;
    }
    call $r101536, $exception := java.lang.String$java.lang.Enum$name$1897(r01524);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block147;
    }
    if ($r91534 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_2;
        assume !$heap[$fakelocal_2,$alloc];
        $heap := $heap[$fakelocal_2,$alloc := true];
        assume $fakelocal_2 != $null;
        $heap := $heap[$fakelocal_2,$type := java.lang.NullPointerException];
        $exception := $fakelocal_2;
        goto block147;
    }
    call $r111537, $exception := java.lang.String$java.util.ResourceBundle$getString$2507($r91534, $r101536);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block147;
    }
    call $r121539, $exception := java.lang.String$java.text.MessageFormat$format$4070($r111537, r11525);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block147;
    }
  block148:
    $return := $r121539;
    return;
  block147:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r131541 := $exception;
  block149:
    r41529 := $r131541;
  block150:
    $exception := r41529;
    return;
}


implementation void$org.kohsuke.args4j.Messages$$la$clinit$ra$$2711() returns ($exception:ref){
    
var $fakelocal_11 : ref;    
var $r261637 : ref;    
var $r211622 : ref;    
var $r231628 : ref;    
var $fakelocal_12 : ref;    
var $r61568 : ref;    
var $r241631 : ref;    
var $fakelocal_0 : ref;    
var $r51564 : ref;    
var $r221625 : ref;    
var $r31556 : ref;    
var $r251634 : ref;    
var $fakelocal_10 : ref;    
var $fakelocal_7 : ref;    
var $r01544 : ref;    
var $r111588 : ref;    
var $r141601 : ref;    
var $r281643 : ref;    
var $r201619 : ref;    
var $r91580 : ref;    
var $r171610 : ref;    
var $r101584 : ref;    
var $fakelocal_14 : ref;    
var $r191616 : ref;    
var $fakelocal_13 : ref;    
var $fakelocal_1 : ref;    
var $ex_return : bool;    
var $r161607 : ref;    
var $r151604 : ref;    
var $r121592 : ref;    
var $r81576 : ref;    
var $fakelocal_3 : ref;    
var $r131596 : ref;    
var $r11548 : ref;    
var $fakelocal_9 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_4 : ref;    
var $r271640 : ref;    
var $r41560 : ref;    
var $r21552 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_8 : ref;    
var $r71572 : ref;    
var $r181613 : ref;
    $ex_return := false;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.Messages];
    $r01544 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r01544, $StringConst29, 0);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MISSING_OPERAND394 := $r01544;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.Messages];
    $r11548 := $fakelocal_1;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r11548, $StringConst30, 1);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNDEFINED_OPTION395 := $r11548;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.Messages];
    $r21552 := $fakelocal_2;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r21552, $StringConst31, 2);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_ARGUMENT_ALLOWED396 := $r21552;
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := org.kohsuke.args4j.Messages];
    $r31556 := $fakelocal_3;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r31556, $StringConst32, 3);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_OPTION_MISSING397 := $r31556;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := org.kohsuke.args4j.Messages];
    $r41560 := $fakelocal_4;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r41560, $StringConst33, 4);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$TOO_MANY_ARGUMENTS398 := $r41560;
    havoc $fakelocal_5;
    assume !$heap[$fakelocal_5,$alloc];
    $heap := $heap[$fakelocal_5,$alloc := true];
    assume $fakelocal_5 != $null;
    $heap := $heap[$fakelocal_5,$type := org.kohsuke.args4j.Messages];
    $r51564 := $fakelocal_5;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r51564, $StringConst34, 5);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_ARGUMENT_MISSING399 := $r51564;
    havoc $fakelocal_6;
    assume !$heap[$fakelocal_6,$alloc];
    $heap := $heap[$fakelocal_6,$alloc := true];
    assume $fakelocal_6 != $null;
    $heap := $heap[$fakelocal_6,$type := org.kohsuke.args4j.Messages];
    $r61568 := $fakelocal_6;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r61568, $StringConst35, 6);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$METADATA_ERROR400 := $r61568;
    havoc $fakelocal_7;
    assume !$heap[$fakelocal_7,$alloc];
    $heap := $heap[$fakelocal_7,$alloc := true];
    assume $fakelocal_7 != $null;
    $heap := $heap[$fakelocal_7,$type := org.kohsuke.args4j.Messages];
    $r71572 := $fakelocal_7;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r71572, $StringConst36, 7);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_ARGUMENT401 := $r71572;
    havoc $fakelocal_8;
    assume !$heap[$fakelocal_8,$alloc];
    $heap := $heap[$fakelocal_8,$alloc := true];
    assume $fakelocal_8 != $null;
    $heap := $heap[$fakelocal_8,$type := org.kohsuke.args4j.Messages];
    $r81576 := $fakelocal_8;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r81576, $StringConst37, 8);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_OPTION402 := $r81576;
    havoc $fakelocal_9;
    assume !$heap[$fakelocal_9,$alloc];
    $heap := $heap[$fakelocal_9,$alloc := true];
    assume $fakelocal_9 != $null;
    $heap := $heap[$fakelocal_9,$type := org.kohsuke.args4j.Messages];
    $r91580 := $fakelocal_9;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r91580, $StringConst38, 9);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNKNOWN_HANDLER403 := $r91580;
    havoc $fakelocal_10;
    assume !$heap[$fakelocal_10,$alloc];
    $heap := $heap[$fakelocal_10,$alloc := true];
    assume $fakelocal_10 != $null;
    $heap := $heap[$fakelocal_10,$type := org.kohsuke.args4j.Messages];
    $r101584 := $fakelocal_10;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r101584, $StringConst39, 10);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_OPTIONHANDLER404 := $r101584;
    havoc $fakelocal_11;
    assume !$heap[$fakelocal_11,$alloc];
    $heap := $heap[$fakelocal_11,$alloc := true];
    assume $fakelocal_11 != $null;
    $heap := $heap[$fakelocal_11,$type := org.kohsuke.args4j.Messages];
    $r111588 := $fakelocal_11;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r111588, $StringConst40, 11);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_CONSTRUCTOR_ON_HANDLER405 := $r111588;
    havoc $fakelocal_12;
    assume !$heap[$fakelocal_12,$alloc];
    $heap := $heap[$fakelocal_12,$alloc := true];
    assume $fakelocal_12 != $null;
    $heap := $heap[$fakelocal_12,$type := org.kohsuke.args4j.Messages];
    $r121592 := $fakelocal_12;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r121592, $StringConst41, 12);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$FORMAT_ERROR_FOR_MAP406 := $r121592;
    havoc $fakelocal_13;
    assume !$heap[$fakelocal_13,$alloc];
    $heap := $heap[$fakelocal_13,$alloc := true];
    assume $fakelocal_13 != $null;
    $heap := $heap[$fakelocal_13,$type := org.kohsuke.args4j.Messages];
    $r131596 := $fakelocal_13;
    call $exception := void$org.kohsuke.args4j.Messages$$la$init$ra$$2709($r131596, $StringConst42, 13);
    org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MAP_HAS_NO_KEY407 := $r131596;
    havoc $fakelocal_14;
    assume !$heap[$fakelocal_14,$alloc];
    $heap := $heap[$fakelocal_14,$alloc := true];
    assume $fakelocal_14 != $null;
    $heap := $heap[$fakelocal_14,$type := $arrayType(org.kohsuke.args4j.Messages)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_14 := 14];
    $r141601 := $fakelocal_14;
    $r151604 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MISSING_OPERAND394;
    assert 0 < $arrSizeHeap[$r141601] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][0 := $r151604]];
    $r161607 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNDEFINED_OPTION395;
    assert 1 < $arrSizeHeap[$r141601] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][1 := $r161607]];
    $r171610 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_ARGUMENT_ALLOWED396;
    assert 2 < $arrSizeHeap[$r141601] && 2 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][2 := $r171610]];
    $r181613 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_OPTION_MISSING397;
    assert 3 < $arrSizeHeap[$r141601] && 3 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][3 := $r181613]];
    $r191616 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$TOO_MANY_ARGUMENTS398;
    assert 4 < $arrSizeHeap[$r141601] && 4 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][4 := $r191616]];
    $r201619 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$REQUIRED_ARGUMENT_MISSING399;
    assert 5 < $arrSizeHeap[$r141601] && 5 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][5 := $r201619]];
    $r211622 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$METADATA_ERROR400;
    assert 6 < $arrSizeHeap[$r141601] && 6 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][6 := $r211622]];
    $r221625 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_ARGUMENT401;
    assert 7 < $arrSizeHeap[$r141601] && 7 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][7 := $r221625]];
    $r231628 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MULTIPLE_USE_OF_OPTION402;
    assert 8 < $arrSizeHeap[$r141601] && 8 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][8 := $r231628]];
    $r241631 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$UNKNOWN_HANDLER403;
    assert 9 < $arrSizeHeap[$r141601] && 9 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][9 := $r241631]];
    $r251634 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_OPTIONHANDLER404;
    assert 10 < $arrSizeHeap[$r141601] && 10 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][10 := $r251634]];
    $r261637 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$NO_CONSTRUCTOR_ON_HANDLER405;
    assert 11 < $arrSizeHeap[$r141601] && 11 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][11 := $r261637]];
    $r271640 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$FORMAT_ERROR_FOR_MAP406;
    assert 12 < $arrSizeHeap[$r141601] && 12 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][12 := $r271640]];
    $r281643 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MAP_HAS_NO_KEY407;
    assert 13 < $arrSizeHeap[$r141601] && 13 >= 0;
    $refArrHeap := $refArrHeap[$r141601 := $refArrHeap[$r141601][13 := $r281643]];
    org.kohsuke.args4j.Messages$lp$$rp$$org.kohsuke.args4j.Messages$$VALUES409 := $r141601;
    return;
}


implementation void$org.kohsuke.args4j.spi.EnumOptionHandler$$la$init$ra$$2712($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref){
    
var r31647 : ref;    
var r11645 : ref;    
var r01644 : ref;    
var r21646 : ref;    
var r41648 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r01644 := $this;
    r11645 := $in_parameter__0;
    r21646 := $in_parameter__1;
    r31647 := $in_parameter__2;
    r41648 := $in_parameter__3;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r01644, r11645, r21646, r31647);
    assert r01644 != $null;
    $heap := $heap[r01644,java.lang.Class$org.kohsuke.args4j.spi.EnumOptionHandler$enumType410 := r41648];
    return;
}


implementation int$org.kohsuke.args4j.spi.EnumOptionHandler$parseArguments$2713($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $z01689 : int;    
var $r91687 : ref;    
var i11663 : int;    
var r21659 : ref;    
var $ex_return : bool;    
var $fakelocal_0 : ref;    
var $r71675 : ref;    
var r11656 : ref;    
var $r111694 : ref;    
var r01655 : ref;    
var r41661 : ref;    
var $fakelocal_1 : ref;    
var i01662 : int;    
var $r81676 : ref;    
var $r141700 : ref;    
var $r151702 : ref;    
var $r121695 : ref;    
var $r101692 : ref;    
var $r131696 : ref;    
var r31660 : ref;    
var r51664 : ref;    
var $r61666 : ref;
    assume $this != $null;
    $ex_return := false;
    r01655 := $this;
    r11656 := $in_parameter__0;
    assert r11656 != $null;
    call r21659, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11656, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    r31660 := $null;
    assert r01655 != $null;
    $r71675 := $heap[r01655,java.lang.Class$org.kohsuke.args4j.spi.EnumOptionHandler$enumType410];
    assert $r71675 != $null;
    call $r81676, $exception := java.lang.Object$lp$$rp$$java.lang.Class$getEnumConstants$543($r71675);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $heap[$r81676,$type] <: $arrayType(java.lang.Enum);
    r41661 := $r81676;
    assert r41661 != $null;
    i01662 := $arrSizeHeap[r41661];
    i11663 := 0;
  block151:
    if (i11663 >= i01662) {
        goto block152;
    }
    assert i11663 < $arrSizeHeap[r41661] && i11663 >= 0;
    r51664 := $refArrHeap[r41661][i11663];
    assert r51664 != $null;
    call $r91687, $exception := java.lang.String$java.lang.Enum$name$1897(r51664);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r91687 != $null;
    call $z01689, $exception := boolean$java.lang.String$equalsIgnoreCase$86($r91687, r21659);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z01689 == 0) {
        goto block153;
    }
    r31660 := r51664;
    goto block152;
  block153:
    i11663 := i11663 + 1;
    goto block151;
  block152:
    if (r31660 != $null) {
        goto block154;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.CmdLineException];
    $r101692 := $fakelocal_0;
    assert r01655 != $null;
    $r111694 := $heap[r01655,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    $r61666 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 2];
    $r121695 := $fakelocal_1;
    assert r11656 != $null;
    call $r131696, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11656, -1);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 0 < $arrSizeHeap[$r121695] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r121695 := $refArrHeap[$r121695][0 := $r131696]];
    assert 1 < $arrSizeHeap[$r121695] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r121695 := $refArrHeap[$r121695][1 := r21659]];
    assert $r61666 != $null;
    call $r141700, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r61666, $r121695);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r101692, $r111694, $r141700);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r101692;
    return;
  block154:
    assert r01655 != $null;
    $r151702 := $heap[r01655,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    assert $r151702 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r151702, r31660);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := 1;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.EnumOptionHandler$getDefaultMetaVariable$2714($this:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_1 : ref;    
var i11711 : int;    
var i01710 : int;    
var $ex_return : bool;    
var $i21736 : int;    
var $r121745 : ref;    
var r21708 : ref;    
var $r61718 : ref;    
var r41712 : ref;    
var $fakelocal_0 : ref;    
var $i41739 : int;    
var $fakelocal_2 : ref;    
var r31709 : ref;    
var $fakelocal_4 : ref;    
var $i31737 : int;    
var $r81731 : ref;    
var r01705 : ref;    
var $r11706 : ref;    
var $fakelocal_3 : ref;    
var $r71719 : ref;
    assume $this != $null;
    $ex_return := false;
    r01705 := $this;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.StringBuffer];
    $r11706 := $fakelocal_0;
    call $exception := void$java.lang.StringBuffer$$la$init$ra$$685($r11706);
    r21708 := $r11706;
    assert r21708 != $null;
    call $fakelocal_1, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$702(r21708, $StringConst43);
    assert r01705 != $null;
    $r61718 := $heap[r01705,java.lang.Class$org.kohsuke.args4j.spi.EnumOptionHandler$enumType410];
    assert $r61718 != $null;
    call $r71719, $exception := java.lang.Object$lp$$rp$$java.lang.Class$getEnumConstants$543($r61718);
    assert $heap[$r71719,$type] <: $arrayType(java.lang.Enum);
    r31709 := $r71719;
    assert r31709 != $null;
    i01710 := $arrSizeHeap[r31709];
    i11711 := 0;
  block155:
    if (i11711 >= i01710) {
        goto block156;
    }
    assert i11711 < $arrSizeHeap[r31709] && i11711 >= 0;
    r41712 := $refArrHeap[r31709][i11711];
    assert r21708 != $null;
    call $r81731, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(r21708, r41712);
    assert $r81731 != $null;
    call $fakelocal_2, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$702($r81731, $StringConst44);
    i11711 := i11711 + 1;
    goto block155;
  block156:
    assert r21708 != $null;
    call $i21736, $exception := int$java.lang.StringBuffer$length$689(r21708);
    $i31737 := $i21736 - 3;
    assert r21708 != $null;
    call $i41739, $exception := int$java.lang.StringBuffer$length$689(r21708);
    assert r21708 != $null;
    call $fakelocal_3, $exception := java.lang.StringBuffer$java.lang.StringBuffer$delete$715(r21708, $i31737, $i41739);
    assert r21708 != $null;
    call $fakelocal_4, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$702(r21708, $StringConst45);
    assert r21708 != $null;
    call $r121745, $exception := java.lang.String$java.lang.StringBuffer$toString$738(r21708);
    $return := $r121745;
    return;
}


implementation void$org.kohsuke.args4j.spi.URIOptionHandler$$la$init$ra$$2715($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r21748 : ref;    
var r11747 : ref;    
var r31749 : ref;    
var r01746 : ref;
    assume $this != $null;
    $ex_return := false;
    r01746 := $this;
    r11747 := $in_parameter__0;
    r21748 := $in_parameter__1;
    r31749 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r01746, r11747, r21748, r31749);
    return;
}


implementation int$org.kohsuke.args4j.spi.URIOptionHandler$parseArguments$2716($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $fakelocal_2 : ref;    
var $r101778 : ref;    
var $r71773 : ref;    
var r21758 : ref;    
var $fakelocal_0 : ref;    
var r11755 : ref;    
var $r61772 : ref;    
var $r121783 : ref;    
var r31761 : ref;    
var $r91777 : ref;    
var $r51770 : ref;    
var $r41769 : ref;    
var r01754 : ref;    
var $r81776 : ref;    
var $r111779 : ref;    
var $ex_return : bool;    
var $fakelocal_1 : ref;
    assume $this != $null;
    $ex_return := false;
    r01754 := $this;
    r11755 := $in_parameter__0;
    assert r11755 != $null;
    call r21758, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11755, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block157:
    assert r01754 != $null;
    $r41769 := $heap[r01754,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.net.URI];
    $r51770 := $fakelocal_0;
    call $exception := void$java.net.URI$$la$init$ra$$3060($r51770, r21758);
    if ($exception != $null && $heap[$exception,$type] <: java.net.URISyntaxException) {
        goto block158;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r41769 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r41769, $r51770);
    if ($exception != $null && $heap[$exception,$type] <: java.net.URISyntaxException) {
        goto block158;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block159:
    $return := 1;
    return;
  block158:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r61772 := $exception;
    r31761 := $r61772;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.CmdLineException];
    $r71773 := $fakelocal_1;
    assert r01754 != $null;
    $r81776 := $heap[r01754,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    $r91777 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 2];
    $r101778 := $fakelocal_2;
    assert r11755 != $null;
    call $r111779, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11755, -1);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 0 < $arrSizeHeap[$r101778] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r101778 := $refArrHeap[$r101778][0 := $r111779]];
    assert 1 < $arrSizeHeap[$r101778] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r101778 := $refArrHeap[$r101778][1 := r21758]];
    assert $r91777 != $null;
    call $r121783, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r91777, $r101778);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r71773, $r81776, $r121783);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r71773;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.URIOptionHandler$getDefaultMetaVariable$2717($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r01784 : ref;
    assume $this != $null;
    $ex_return := false;
    r01784 := $this;
    $return := $StringConst46;
    return;
}


implementation void$org.kohsuke.args4j.spi.MapOptionHandler$$la$init$ra$$2718($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r31789 : ref;    
var r11787 : ref;    
var r01786 : ref;    
var r21788 : ref;
    assume $this != $null;
    $ex_return := false;
    r01786 := $this;
    r11787 := $in_parameter__0;
    r21788 := $in_parameter__1;
    r31789 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r01786, r11787, r21788, r31789);
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.MapOptionHandler$getDefaultMetaVariable$2719($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r01794 : ref;
    assume $this != $null;
    $ex_return := false;
    r01794 := $this;
    $return := $null;
    return;
}


implementation int$org.kohsuke.args4j.spi.MapOptionHandler$parseArguments$2720($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r21799 : ref;    
var $fakelocal_1 : ref;    
var $r41804 : ref;    
var r11797 : ref;    
var $fakelocal_0 : ref;    
var r31802 : ref;    
var $r81812 : ref;    
var $r91813 : ref;    
var $r51807 : ref;    
var $r61808 : ref;    
var r01796 : ref;    
var $fakelocal_2 : ref;    
var $r71809 : ref;
    assume $this != $null;
    $ex_return := false;
    r01796 := $this;
    r11797 := $in_parameter__0;
    assert r01796 != $null;
    $r41804 := $heap[r01796,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    assert $heap[$r41804,$type] <: org.kohsuke.args4j.MapSetter;
    r21799 := $r41804;
  block160:
    if (r11797 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_0;
        assume !$heap[$fakelocal_0,$alloc];
        $heap := $heap[$fakelocal_0,$alloc := true];
        assume $fakelocal_0 != $null;
        $heap := $heap[$fakelocal_0,$type := java.lang.NullPointerException];
        $exception := $fakelocal_0;
        goto block161;
    }
    call $r51807, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11797, 0);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block161;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if (r21799 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_1;
        assume !$heap[$fakelocal_1,$alloc];
        $heap := $heap[$fakelocal_1,$alloc := true];
        assume $fakelocal_1 != $null;
        $heap := $heap[$fakelocal_1,$type := java.lang.NullPointerException];
        $exception := $fakelocal_1;
        goto block161;
    }
    call $exception := void$org.kohsuke.args4j.MapSetter$addValue$4049(r21799, $r51807);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block161;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block162:
    goto block163;
  block161:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r61808 := $exception;
    r31802 := $r61808;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.CmdLineException];
    $r71809 := $fakelocal_2;
    assert r01796 != $null;
    $r81812 := $heap[r01796,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    assert r31802 != $null;
    call $r91813, $exception := java.lang.String$java.lang.Throwable$getMessage$16(r31802);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r71809, $r81812, $r91813);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r71809;
    return;
  block163:
    $return := 1;
    return;
}


implementation void$org.kohsuke.args4j.spi.FloatOptionHandler$$la$init$ra$$2721($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r11816 : ref;    
var r01815 : ref;    
var r21817 : ref;    
var r31818 : ref;
    assume $this != $null;
    $ex_return := false;
    r01815 := $this;
    r11816 := $in_parameter__0;
    r21817 := $in_parameter__1;
    r31818 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187(r01815, r11816, r21817, r31818);
    return;
}


implementation java.lang.Float$org.kohsuke.args4j.spi.FloatOptionHandler$parse$2722($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r11824 : ref;    
var $ex_return : bool;    
var r01823 : ref;    
var $r21827 : ref;    
var $f01826 : int;
    assume $this != $null;
    $ex_return := false;
    r01823 := $this;
    r11824 := $in_parameter__0;
    call $f01826, $exception := float$java.lang.Float$parseFloat$1027(r11824);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $r21827, $exception := java.lang.Float$java.lang.Float$valueOf$1026($f01826);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21827;
    return;
}


implementation java.lang.Object$org.kohsuke.args4j.spi.FloatOptionHandler$parse$2723($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r21832 : ref;    
var r11829 : ref;    
var $ex_return : bool;    
var r01828 : ref;
    assume $this != $null;
    $ex_return := false;
    r01828 := $this;
    r11829 := $in_parameter__0;
    assert r01828 != $null;
    call $r21832, $exception := java.lang.Float$org.kohsuke.args4j.spi.FloatOptionHandler$parse$2722(r01828, r11829);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21832;
    return;
}


implementation void$org.kohsuke.args4j.spi.URLOptionHandler$$la$init$ra$$2803($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r11834 : ref;    
var r31836 : ref;    
var r21835 : ref;    
var r01833 : ref;
    assume $this != $null;
    $ex_return := false;
    r01833 := $this;
    r11834 := $in_parameter__0;
    r21835 := $in_parameter__1;
    r31836 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r01833, r11834, r21835, r31836);
    return;
}


implementation int$org.kohsuke.args4j.spi.URLOptionHandler$parseArguments$2804($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $r111866 : ref;    
var r11842 : ref;    
var $r41856 : ref;    
var $r91864 : ref;    
var r31848 : ref;    
var $ex_return : bool;    
var $fakelocal_0 : ref;    
var $r121870 : ref;    
var $r51857 : ref;    
var r21845 : ref;    
var $r101865 : ref;    
var $r81863 : ref;    
var r01841 : ref;    
var $fakelocal_2 : ref;    
var $r61859 : ref;    
var $r71860 : ref;    
var $fakelocal_1 : ref;
    assume $this != $null;
    $ex_return := false;
    r01841 := $this;
    r11842 := $in_parameter__0;
    assert r11842 != $null;
    call r21845, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11842, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block164:
    assert r01841 != $null;
    $r41856 := $heap[r01841,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.net.URL];
    $r51857 := $fakelocal_0;
    call $exception := void$java.net.URL$$la$init$ra$$1408($r51857, r21845);
    if ($exception != $null && $heap[$exception,$type] <: java.net.MalformedURLException) {
        goto block165;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r41856 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r41856, $r51857);
    if ($exception != $null && $heap[$exception,$type] <: java.net.MalformedURLException) {
        goto block165;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block166:
    $return := 1;
    return;
  block165:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r61859 := $exception;
    r31848 := $r61859;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.CmdLineException];
    $r71860 := $fakelocal_1;
    assert r01841 != $null;
    $r81863 := $heap[r01841,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    $r91864 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 2];
    $r101865 := $fakelocal_2;
    assert r11842 != $null;
    call $r111866, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11842, -1);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 0 < $arrSizeHeap[$r101865] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r101865 := $refArrHeap[$r101865][0 := $r111866]];
    assert 1 < $arrSizeHeap[$r101865] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r101865 := $refArrHeap[$r101865][1 := r21845]];
    assert $r91864 != $null;
    call $r121870, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r91864, $r101865);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r71860, $r81863, $r121870);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r71860;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.URLOptionHandler$getDefaultMetaVariable$2805($this:ref) returns ($return:ref, $exception:ref){
    
var r01871 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r01871 := $this;
    $return := $StringConst47;
    return;
}


implementation void$org.kohsuke.args4j.spi.CharOptionHandler$$la$init$ra$$2806($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r21875 : ref;    
var $ex_return : bool;    
var r11874 : ref;    
var r31876 : ref;    
var r01873 : ref;
    assume $this != $null;
    $ex_return := false;
    r01873 := $this;
    r11874 := $in_parameter__0;
    r21875 := $in_parameter__1;
    r31876 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187(r01873, r11874, r21875, r31876);
    return;
}


implementation java.lang.Character$org.kohsuke.args4j.spi.CharOptionHandler$parse$2807($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r51895 : ref;    
var $r41894 : ref;    
var $r71900 : ref;    
var $r31892 : ref;    
var $i01891 : int;    
var $ex_return : bool;    
var $fakelocal_0 : ref;    
var $r61896 : ref;    
var r11882 : ref;    
var $c11899 : int;    
var $fakelocal_1 : ref;    
var $r21886 : ref;    
var r01881 : ref;
    assume $this != $null;
    $ex_return := false;
    r01881 := $this;
    r11882 := $in_parameter__0;
    $i01891 := $stringSizeHeap[r11882];
    if ($i01891 == 1) {
        goto block167;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.CmdLineException];
    $r31892 := $fakelocal_0;
    assert r01881 != $null;
    $r41894 := $heap[r01881,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    $r21886 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_CHAR578;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 1];
    $r51895 := $fakelocal_1;
    assert 0 < $arrSizeHeap[$r51895] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r51895 := $refArrHeap[$r51895][0 := r11882]];
    assert $r21886 != $null;
    call $r61896, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r21886, $r51895);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r31892, $r41894, $r61896);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $exception := $r31892;
    return;
  block167:
    assert r11882 != $null;
    call $c11899, $exception := char$java.lang.String$charAt$72(r11882, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $r71900, $exception := java.lang.Character$java.lang.Character$valueOf$1622($c11899);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r71900;
    return;
}


implementation java.lang.Object$org.kohsuke.args4j.spi.CharOptionHandler$parse$2808($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r21905 : ref;    
var r11902 : ref;    
var $ex_return : bool;    
var r01901 : ref;
    assume $this != $null;
    $ex_return := false;
    r01901 := $this;
    r11902 := $in_parameter__0;
    assert r01901 != $null;
    call $r21905, $exception := java.lang.Character$org.kohsuke.args4j.spi.CharOptionHandler$parse$2807(r01901, r11902);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r21905;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$1$$la$init$ra$$2809($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r01906 : ref;    
var $ex_return : bool;    
var r11907 : ref;
    assume $this != $null;
    $ex_return := false;
    r01906 := $this;
    r11907 := $in_parameter__0;
    assert r01906 != $null;
    $heap := $heap[r01906,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineParser$1$this$0417 := r11907];
    call $exception := void$java.lang.Object$$la$init$ra$$38(r01906);
    return;
}


implementation int$org.kohsuke.args4j.CmdLineParser$1$compare$2810($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $r51918 : ref;    
var $i01920 : int;    
var r21913 : ref;    
var r11912 : ref;    
var $ex_return : bool;    
var r01911 : ref;    
var $r61919 : ref;    
var $r41917 : ref;    
var $r31916 : ref;
    assume $this != $null;
    $ex_return := false;
    r01911 := $this;
    r11912 := $in_parameter__0;
    r21913 := $in_parameter__1;
    assert r11912 != $null;
    $r31916 := $heap[r11912,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r31916 != $null;
    call $r41917, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($r31916);
    assert r21913 != $null;
    $r51918 := $heap[r21913,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r51918 != $null;
    call $r61919, $exception := java.lang.String$org.kohsuke.args4j.OptionDef$toString$1919($r51918);
    assert $r41917 != $null;
    call $i01920 := int$java.lang.String$compareTo$87($r41917, $r61919);
    $return := $i01920;
    return;
}


implementation int$org.kohsuke.args4j.CmdLineParser$1$compare$2811($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var $i01929 : int;    
var r11922 : ref;    
var $r31927 : ref;    
var $r41928 : ref;    
var $ex_return : bool;    
var r01921 : ref;    
var r21923 : ref;
    assume $this != $null;
    $ex_return := false;
    r01921 := $this;
    r11922 := $in_parameter__0;
    r21923 := $in_parameter__1;
    assert $heap[r11922,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    $r31927 := r11922;
    assert $heap[r21923,$type] <: org.kohsuke.args4j.spi.OptionHandler;
    $r41928 := r21923;
    assert r01921 != $null;
    call $i01929, $exception := int$org.kohsuke.args4j.CmdLineParser$1$compare$2810(r01921, $r31927, $r41928);
    $return := $i01929;
    return;
}


implementation void$org.kohsuke.args4j.spi.BooleanOptionHandler$$la$init$ra$$2869($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r11931 : ref;    
var r01930 : ref;    
var r31933 : ref;    
var r21932 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r01930 := $this;
    r11931 := $in_parameter__0;
    r21932 := $in_parameter__1;
    r31933 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r01930, r11931, r21932, r31933);
    return;
}


implementation int$org.kohsuke.args4j.spi.BooleanOptionHandler$parseArguments$2870($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var i01943 : int;    
var $r51953 : ref;    
var $fakelocal_0 : ref;    
var $r121968 : ref;    
var r11939 : ref;    
var $z11972 : int;    
var r21942 : ref;    
var $r141976 : ref;    
var $r131973 : ref;    
var r01938 : ref;    
var $i21971 : int;    
var $i11969 : int;    
var $r91963 : ref;    
var $fakelocal_1 : ref;    
var $r61955 : ref;    
var $r31945 : ref;    
var $z01951 : int;    
var $ex_return : bool;    
var $r111966 : ref;    
var $r81962 : ref;    
var $r151978 : ref;    
var $r71960 : ref;    
var $r41950 : ref;    
var $r101964 : ref;
    assume $this != $null;
    $ex_return := false;
    r01938 := $this;
    r11939 := $in_parameter__0;
    assert r01938 != $null;
    $r41950 := $heap[r01938,org.kohsuke.args4j.OptionDef$org.kohsuke.args4j.spi.OptionHandler$option339];
    assert $r41950 != $null;
    call $z01951, $exception := boolean$org.kohsuke.args4j.OptionDef$isArgument$1918($r41950);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z01951 == 0) {
        goto block168;
    }
    assert r11939 != $null;
    call $r51953, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r11939, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r51953 != $null;
    call r21942, $exception := java.lang.String$java.lang.String$toLowerCase$120($r51953);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $r61955 := java.util.List$org.kohsuke.args4j.spi.BooleanOptionHandler$ACCEPTABLE_VALUES419;
    assert $r61955 != $null;
    call i01943, $exception := int$java.util.List$indexOf$172($r61955, r21942);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if (i01943 != -1) {
        goto block169;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.CmdLineException];
    $r71960 := $fakelocal_0;
    assert r01938 != $null;
    $r81962 := $heap[r01938,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    $r31945 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_BOOLEAN579;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 1];
    $r91963 := $fakelocal_1;
    assert 0 < $arrSizeHeap[$r91963] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r91963 := $refArrHeap[$r91963][0 := r21942]];
    assert $r31945 != $null;
    call $r101964, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r31945, $r91963);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r71960, $r81962, $r101964);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r71960;
    return;
  block169:
    assert r01938 != $null;
    $r111966 := $heap[r01938,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    $r121968 := java.util.List$org.kohsuke.args4j.spi.BooleanOptionHandler$ACCEPTABLE_VALUES419;
    assert $r121968 != $null;
    call $i11969, $exception := int$java.util.List$size$152($r121968);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 2 != 0;
    $i21971 := $i11969 div 2;
    if (i01943 >= $i21971) {
        goto block170;
    }
    $z11972 := 1;
    goto block171;
  block170:
    $z11972 := 0;
  block171:
    call $r131973, $exception := java.lang.Boolean$java.lang.Boolean$valueOf$854($z11972);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r111966 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r111966, $r131973);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := 1;
    return;
  block168:
    assert r01938 != $null;
    $r141976 := $heap[r01938,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    call $r151978, $exception := java.lang.Boolean$java.lang.Boolean$valueOf$854(1);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r141976 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r141976, $r151978);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := 0;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.BooleanOptionHandler$getDefaultMetaVariable$2871($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r01980 : ref;
    assume $this != $null;
    $ex_return := false;
    r01980 := $this;
    $return := $null;
    return;
}


implementation void$org.kohsuke.args4j.spi.BooleanOptionHandler$$la$clinit$ra$$2872() returns ($exception:ref){
    
var $fakelocal_5 : ref;    
var $fakelocal_3 : ref;    
var $r12008 : ref;    
var $ex_return : bool;    
var $fakelocal_2 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_7 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_8 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_6 : ref;    
var $r01986 : ref;
    $ex_return := false;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := $arrayType(java.lang.String)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 8];
    $r01986 := $fakelocal_0;
    assert 0 < $arrSizeHeap[$r01986] && 0 >= 0;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_1 := 4];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][0 := $fakelocal_1]];
    assert 1 < $arrSizeHeap[$r01986] && 1 >= 0;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_2 := 2];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][1 := $fakelocal_2]];
    assert 2 < $arrSizeHeap[$r01986] && 2 >= 0;
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_3 := 3];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][2 := $fakelocal_3]];
    assert 3 < $arrSizeHeap[$r01986] && 3 >= 0;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_4 := 1];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][3 := $fakelocal_4]];
    assert 4 < $arrSizeHeap[$r01986] && 4 >= 0;
    havoc $fakelocal_5;
    assume !$heap[$fakelocal_5,$alloc];
    $heap := $heap[$fakelocal_5,$alloc := true];
    assume $fakelocal_5 != $null;
    $heap := $heap[$fakelocal_5,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_5 := 5];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][4 := $fakelocal_5]];
    assert 5 < $arrSizeHeap[$r01986] && 5 >= 0;
    havoc $fakelocal_6;
    assume !$heap[$fakelocal_6,$alloc];
    $heap := $heap[$fakelocal_6,$alloc := true];
    assume $fakelocal_6 != $null;
    $heap := $heap[$fakelocal_6,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_6 := 3];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][5 := $fakelocal_6]];
    assert 6 < $arrSizeHeap[$r01986] && 6 >= 0;
    havoc $fakelocal_7;
    assume !$heap[$fakelocal_7,$alloc];
    $heap := $heap[$fakelocal_7,$alloc := true];
    assume $fakelocal_7 != $null;
    $heap := $heap[$fakelocal_7,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_7 := 2];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][6 := $fakelocal_7]];
    assert 7 < $arrSizeHeap[$r01986] && 7 >= 0;
    havoc $fakelocal_8;
    assume !$heap[$fakelocal_8,$alloc];
    $heap := $heap[$fakelocal_8,$alloc := true];
    assume $fakelocal_8 != $null;
    $heap := $heap[$fakelocal_8,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_8 := 1];
    $refArrHeap := $refArrHeap[$r01986 := $refArrHeap[$r01986][7 := $fakelocal_8]];
    call $r12008, $exception := java.util.List$java.util.Arrays$asList$4012($r01986);
    java.util.List$org.kohsuke.args4j.spi.BooleanOptionHandler$ACCEPTABLE_VALUES419 := $r12008;
    return;
}


implementation void$org.kohsuke.args4j.NamedOptionDef$$la$init$ra$$2873($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var $ex_return : bool;    
var $r42019 : ref;    
var $z32024 : int;    
var $z12020 : int;    
var $r32018 : ref;    
var z02011 : int;    
var r12010 : ref;    
var $r72030 : ref;    
var r02009 : ref;    
var $r52021 : ref;    
var $r62027 : ref;    
var $z22022 : int;
    assume $this != $null;
    $ex_return := false;
    r02009 := $this;
    r12010 := $in_parameter__0;
    z02011 := $in_parameter__1;
    assert r12010 != $null;
    call $r32018, $exception := java.lang.String$org.kohsuke.args4j.Option$usage$2187(r12010);
    assert r12010 != $null;
    call $r42019, $exception := java.lang.String$org.kohsuke.args4j.Option$metaVar$2188(r12010);
    assert r12010 != $null;
    call $z12020, $exception := boolean$org.kohsuke.args4j.Option$required$2189(r12010);
    assert r12010 != $null;
    call $r52021, $exception := java.lang.Class$org.kohsuke.args4j.Option$handler$2190(r12010);
    assert r12010 != $null;
    call $z22022, $exception := boolean$org.kohsuke.args4j.Option$multiValued$2191(r12010);
    if ($z22022 != 0) {
        goto block172;
    }
    if (z02011 == 0) {
        goto block173;
    }
  block172:
    $z32024 := 1;
    goto block174;
  block173:
    $z32024 := 0;
  block174:
    call $exception := void$org.kohsuke.args4j.OptionDef$$la$init$ra$$1912(r02009, $r32018, $r42019, $z12020, $r52021, $z32024);
    assert r12010 != $null;
    call $r62027, $exception := java.lang.String$org.kohsuke.args4j.Option$name$2185(r12010);
    assert r02009 != $null;
    $heap := $heap[r02009,java.lang.String$org.kohsuke.args4j.NamedOptionDef$name420 := $r62027];
    assert r12010 != $null;
    call $r72030, $exception := java.lang.String$lp$$rp$$org.kohsuke.args4j.Option$aliases$2186(r12010);
    assert r02009 != $null;
    $heap := $heap[r02009,java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases421 := $r72030];
    return;
}


implementation java.lang.String$org.kohsuke.args4j.NamedOptionDef$name$2874($this:ref) returns ($return:ref, $exception:ref){
    
var r02031 : ref;    
var $r12033 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02031 := $this;
    assert r02031 != $null;
    $r12033 := $heap[r02031,java.lang.String$org.kohsuke.args4j.NamedOptionDef$name420];
    $return := $r12033;
    return;
}


implementation java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases$2875($this:ref) returns ($return:ref, $exception:ref){
    
var $r12036 : ref;    
var r02034 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02034 := $this;
    assert r02034 != $null;
    $r12036 := $heap[r02034,java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases421];
    $return := $r12036;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.NamedOptionDef$toString$2876($this:ref) returns ($return:ref, $exception:ref){
    
var i12042 : int;    
var $r102071 : ref;    
var $fakelocal_2 : ref;    
var $ex_return : bool;    
var $fakelocal_0 : ref;    
var r22040 : ref;    
var $fakelocal_3 : ref;    
var i02041 : int;    
var r32044 : ref;    
var $i32058 : int;    
var $r152081 : ref;    
var r02037 : ref;    
var r12039 : ref;    
var $r122076 : ref;    
var $r132077 : ref;    
var $r182086 : ref;    
var $r112073 : ref;    
var $r52059 : ref;    
var $r82066 : ref;    
var $fakelocal_1 : ref;    
var $i22046 : int;    
var $r72064 : ref;    
var $r172084 : ref;    
var $r92069 : ref;    
var $r142079 : ref;    
var $r162083 : ref;    
var $r62062 : ref;    
var $r42045 : ref;
    assume $this != $null;
    $ex_return := false;
    r02037 := $this;
    assert r02037 != $null;
    $r42045 := $heap[r02037,java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases421];
    assert $r42045 != $null;
    $i22046 := $arrSizeHeap[$r42045];
    if ($i22046 <= 0) {
        goto block175;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
    r12039 := $fakelocal_0;
    assert r02037 != $null;
    r22040 := $heap[r02037,java.lang.String$lp$$rp$$org.kohsuke.args4j.NamedOptionDef$aliases421];
    assert r22040 != $null;
    i02041 := $arrSizeHeap[r22040];
    i12042 := 0;
  block176:
    if (i12042 >= i02041) {
        goto block177;
    }
    assert i12042 < $arrSizeHeap[r22040] && i12042 >= 0;
    r32044 := $refArrHeap[r22040][i12042];
    $i32058 := $stringSizeHeap[r12039];
    if ($i32058 <= 0) {
        goto block178;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.StringBuilder];
    $r52059 := $fakelocal_1;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r52059);
    assert $r52059 != $null;
    call $r62062, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r52059, r12039);
    assert $r62062 != $null;
    call $r72064, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r62062, $StringConst48);
    assert $r72064 != $null;
    call r12039, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r72064);
  block178:
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := java.lang.StringBuilder];
    $r82066 := $fakelocal_2;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r82066);
    assert $r82066 != $null;
    call $r92069, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r82066, r12039);
    assert $r92069 != $null;
    call $r102071, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r92069, r32044);
    assert $r102071 != $null;
    call r12039, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r102071);
    i12042 := i12042 + 1;
    goto block176;
  block177:
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := java.lang.StringBuilder];
    $r112073 := $fakelocal_3;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r112073);
    assert r02037 != $null;
    call $r122076, $exception := java.lang.String$org.kohsuke.args4j.NamedOptionDef$name$2874(r02037);
    assert $r112073 != $null;
    call $r132077, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r112073, $r122076);
    assert $r132077 != $null;
    call $r142079, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r132077, $StringConst49);
    assert $r142079 != $null;
    call $r152081, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r142079, r12039);
    assert $r152081 != $null;
    call $r162083, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r152081, $StringConst50);
    assert $r162083 != $null;
    call $r172084, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r162083);
    $return := $r172084;
    return;
  block175:
    assert r02037 != $null;
    call $r182086, $exception := java.lang.String$org.kohsuke.args4j.NamedOptionDef$name$2874(r02037);
    $return := $r182086;
    return;
}


implementation boolean$org.kohsuke.args4j.NamedOptionDef$isArgument$2877($this:ref) returns ($return:int, $exception:ref){
    
var r02087 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02087 := $this;
    $return := 0;
    return;
}


implementation void$org.kohsuke.args4j.spi.IntOptionHandler$$la$init$ra$$2878($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r22091 : ref;    
var r12090 : ref;    
var $ex_return : bool;    
var r02089 : ref;    
var r32092 : ref;
    assume $this != $null;
    $ex_return := false;
    r02089 := $this;
    r12090 := $in_parameter__0;
    r22091 := $in_parameter__1;
    r32092 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187(r02089, r12090, r22091, r32092);
    return;
}


implementation java.lang.Integer$org.kohsuke.args4j.spi.IntOptionHandler$parse$2879($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r12098 : ref;    
var $ex_return : bool;    
var $i02100 : int;    
var $r22101 : ref;    
var r02097 : ref;
    assume $this != $null;
    $ex_return := false;
    r02097 := $this;
    r12098 := $in_parameter__0;
    call $i02100, $exception := int$java.lang.Integer$parseInt$967(r12098);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $r22101, $exception := java.lang.Integer$java.lang.Integer$valueOf$970($i02100);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r22101;
    return;
}


implementation java.lang.Object$org.kohsuke.args4j.spi.IntOptionHandler$parse$2880($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r12103 : ref;    
var r02102 : ref;    
var $ex_return : bool;    
var $r22106 : ref;
    assume $this != $null;
    $ex_return := false;
    r02102 := $this;
    r12103 := $in_parameter__0;
    assert r02102 != $null;
    call $r22106, $exception := java.lang.Integer$org.kohsuke.args4j.spi.IntOptionHandler$parse$2879(r02102, r12103);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r22106;
    return;
}


implementation void$org.kohsuke.args4j.spi.StringOptionHandler$$la$init$ra$$2881($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r22109 : ref;    
var r02107 : ref;    
var r32110 : ref;    
var r12108 : ref;
    assume $this != $null;
    $ex_return := false;
    r02107 := $this;
    r12108 := $in_parameter__0;
    r22109 := $in_parameter__1;
    r32110 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r02107, r12108, r22109, r32110);
    return;
}


implementation int$org.kohsuke.args4j.spi.StringOptionHandler$parseArguments$2882($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var $r32121 : ref;    
var r12116 : ref;    
var r02115 : ref;    
var $r22120 : ref;
    assume $this != $null;
    $ex_return := false;
    r02115 := $this;
    r12116 := $in_parameter__0;
    assert r02115 != $null;
    $r22120 := $heap[r02115,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    assert r12116 != $null;
    call $r32121, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r12116, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r22120 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r22120, $r32121);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := 1;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.StringOptionHandler$getDefaultMetaVariable$2883($this:ref) returns ($return:ref, $exception:ref){
    
var r02123 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02123 := $this;
    $return := $StringConst51;
    return;
}


implementation void$org.kohsuke.args4j.spi.DoubleOptionHandler$$la$init$ra$$2955($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r12126 : ref;    
var r02125 : ref;    
var r22127 : ref;    
var $ex_return : bool;    
var r32128 : ref;
    assume $this != $null;
    $ex_return := false;
    r02125 := $this;
    r12126 := $in_parameter__0;
    r22127 := $in_parameter__1;
    r32128 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187(r02125, r12126, r22127, r32128);
    return;
}


implementation java.lang.Double$org.kohsuke.args4j.spi.DoubleOptionHandler$parse$2956($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r22137 : ref;    
var r02133 : ref;    
var $ex_return : bool;    
var r12134 : ref;    
var $d02136 : int;
    assume $this != $null;
    $ex_return := false;
    r02133 := $this;
    r12134 := $in_parameter__0;
    call $d02136, $exception := double$java.lang.Double$parseDouble$1058(r12134);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    call $r22137, $exception := java.lang.Double$java.lang.Double$valueOf$1057($d02136);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r22137;
    return;
}


implementation java.lang.Object$org.kohsuke.args4j.spi.DoubleOptionHandler$parse$2957($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r02138 : ref;    
var r12139 : ref;    
var $ex_return : bool;    
var $r22142 : ref;
    assume $this != $null;
    $ex_return := false;
    r02138 := $this;
    r12139 := $in_parameter__0;
    assert r02138 != $null;
    call $r22142, $exception := java.lang.Double$org.kohsuke.args4j.spi.DoubleOptionHandler$parse$2956(r02138, r12139);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        return;
    }
    $return := $r22142;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$$la$init$ra$$3047($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r02143 : ref;    
var $ex_return : bool;    
var r22145 : ref;    
var r12144 : ref;
    assume $this != $null;
    $ex_return := false;
    r02143 := $this;
    r12144 := $in_parameter__0;
    r22145 := $in_parameter__1;
    assert r02143 != $null;
    $heap := $heap[r02143,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$this$0432 := r12144];
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02143);
    assert r02143 != $null;
    $heap := $heap[r02143,java.lang.String$lp$$rp$$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$args431 := r22145];
    assert r02143 != $null;
    $heap := $heap[r02143,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0 := 0];
    return;
}


implementation boolean$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$hasMore$3048($this:ref) returns ($return:int, $exception:ref){
    
var r02153 : ref;    
var $z02159 : int;    
var $i12158 : int;    
var $i02156 : int;    
var $ex_return : bool;    
var $r12157 : ref;
    assume $this != $null;
    $ex_return := false;
    r02153 := $this;
    assert r02153 != $null;
    $i02156 := $heap[r02153,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0];
    assert r02153 != $null;
    $r12157 := $heap[r02153,java.lang.String$lp$$rp$$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$args431];
    assert $r12157 != $null;
    $i12158 := $arrSizeHeap[$r12157];
    if ($i02156 >= $i12158) {
        goto block179;
    }
    $z02159 := 1;
    goto block180;
  block179:
    $z02159 := 0;
  block180:
    $return := $z02159;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$getCurrentToken$3049($this:ref) returns ($return:ref, $exception:ref){
    
var $r12163 : ref;    
var r02160 : ref;    
var $ex_return : bool;    
var $i02164 : int;    
var $r22165 : ref;
    assume $this != $null;
    $ex_return := false;
    r02160 := $this;
    assert r02160 != $null;
    $r12163 := $heap[r02160,java.lang.String$lp$$rp$$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$args431];
    assert r02160 != $null;
    $i02164 := $heap[r02160,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0];
    assert $i02164 < $arrSizeHeap[$r12163] && $i02164 >= 0;
    $r22165 := $refArrHeap[$r12163][$i02164];
    $return := $r22165;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$proceed$3050($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var $i12171 : int;    
var $i22172 : int;    
var $ex_return : bool;    
var i02167 : int;    
var r02166 : ref;
    assume $this != $null;
    $ex_return := false;
    r02166 := $this;
    i02167 := $in_parameter__0;
    assert r02166 != $null;
    $i12171 := $heap[r02166,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0];
    $i22172 := $i12171 + i02167;
    assert r02166 != $null;
    $heap := $heap[r02166,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0 := $i22172];
    return;
}


implementation java.lang.String$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$getParameter$3051($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $r52191 : ref;    
var $r32188 : ref;    
var $i22184 : int;    
var $r22186 : ref;    
var $ex_return : bool;    
var $i52200 : int;    
var $i42198 : int;    
var $r92196 : ref;    
var $r102201 : ref;    
var $r72193 : ref;    
var $r12178 : ref;    
var $i32187 : int;    
var r02173 : ref;    
var $i12183 : int;    
var $r42190 : ref;    
var $r82194 : ref;    
var $fakelocal_1 : ref;    
var i02174 : int;    
var $r62192 : ref;    
var $fakelocal_0 : ref;
    assume $this != $null;
    $ex_return := false;
    r02173 := $this;
    i02174 := $in_parameter__0;
    assert r02173 != $null;
    $i12183 := $heap[r02173,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0];
    $i22184 := $i12183 + i02174;
    assert r02173 != $null;
    $r22186 := $heap[r02173,java.lang.String$lp$$rp$$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$args431];
    assert $r22186 != $null;
    $i32187 := $arrSizeHeap[$r22186];
    if ($i22184 < $i32187) {
        goto block181;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.CmdLineException];
    $r32188 := $fakelocal_0;
    assert r02173 != $null;
    $r42190 := $heap[r02173,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$this$0432];
    $r12178 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MISSING_OPERAND394;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 1];
    $r52191 := $fakelocal_1;
    assert r02173 != $null;
    $r62192 := $heap[r02173,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$this$0432];
    call $r72193, $exception := java.lang.String$org.kohsuke.args4j.CmdLineParser$access$000$2220($r62192);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 0 < $arrSizeHeap[$r52191] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r52191 := $refArrHeap[$r52191][0 := $r72193]];
    assert $r12178 != $null;
    call $r82194, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r12178, $r52191);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r32188, $r42190, $r82194);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r32188;
    return;
  block181:
    assert r02173 != $null;
    $r92196 := $heap[r02173,java.lang.String$lp$$rp$$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$args431];
    assert r02173 != $null;
    $i42198 := $heap[r02173,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0];
    $i52200 := $i42198 + i02174;
    assert $i52200 < $arrSizeHeap[$r92196] && $i52200 >= 0;
    $r102201 := $refArrHeap[$r92196][$i52200];
    $return := $r102201;
    return;
}


implementation int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$size$3052($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r02202 : ref;    
var $i02206 : int;    
var $i12207 : int;    
var $r12205 : ref;    
var $i22208 : int;
    assume $this != $null;
    $ex_return := false;
    r02202 := $this;
    assert r02202 != $null;
    $r12205 := $heap[r02202,java.lang.String$lp$$rp$$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$args431];
    assert $r12205 != $null;
    $i02206 := $arrSizeHeap[$r12205];
    assert r02202 != $null;
    $i12207 := $heap[r02202,int$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$pos0];
    $i22208 := $i02206 - $i12207;
    $return := $i22208;
    return;
}


implementation void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$access$100$3053($in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var r02209 : ref;    
var $ex_return : bool;    
var i02210 : int;
    $ex_return := false;
    r02209 := $in_parameter__0;
    i02210 := $in_parameter__1;
    assert r02209 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$CmdLineImpl$proceed$3050(r02209, i02210);
    return;
}


implementation void$org.kohsuke.args4j.spi.FileOptionHandler$$la$init$ra$$3054($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r02213 : ref;    
var r32216 : ref;    
var r12214 : ref;    
var r22215 : ref;
    assume $this != $null;
    $ex_return := false;
    r02213 := $this;
    r12214 := $in_parameter__0;
    r22215 := $in_parameter__1;
    r32216 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r02213, r12214, r22215, r32216);
    return;
}


implementation int$org.kohsuke.args4j.spi.FileOptionHandler$parseArguments$3055($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $r32228 : ref;    
var $fakelocal_0 : ref;    
var r12222 : ref;    
var $r22224 : ref;    
var $ex_return : bool;    
var $r42229 : ref;    
var r02221 : ref;
    assume $this != $null;
    $ex_return := false;
    r02221 := $this;
    r12222 := $in_parameter__0;
    assert r02221 != $null;
    $r32228 := $heap[r02221,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.io.File];
    $r22224 := $fakelocal_0;
    assert r12222 != $null;
    call $r42229, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r12222, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$java.io.File$$la$init$ra$$2319($r22224, $r42229);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r32228 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r32228, $r22224);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := 1;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.FileOptionHandler$getDefaultMetaVariable$3056($this:ref) returns ($return:ref, $exception:ref){
    
var r02231 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02231 := $this;
    $return := $StringConst52;
    return;
}


implementation void$org.kohsuke.args4j.ClassParser$$la$init$ra$$3185($this:ref) returns ($exception:ref){
    
var r02233 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02233 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02233);
    return;
}


implementation void$org.kohsuke.args4j.ClassParser$parse$3186($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var i32289 : int;    
var $r82264 : ref;    
var r42240 : ref;    
var $r102272 : ref;    
var $r92268 : ref;    
var $fakelocal_1 : ref;    
var i12242 : int;    
var $fakelocal_0 : ref;    
var $r162305 : ref;    
var r132295 : ref;    
var r182311 : ref;    
var r72250 : ref;    
var r152300 : ref;    
var r02235 : ref;    
var i02241 : int;    
var $r172309 : ref;    
var $r112276 : ref;    
var $r192316 : ref;    
var $r142298 : ref;    
var r12236 : ref;    
var r22237 : ref;    
var r52244 : ref;    
var r122284 : ref;    
var r32239 : ref;    
var r62245 : ref;    
var $ex_return : bool;    
var i22287 : int;
    assume $this != $null;
    $ex_return := false;
    r02235 := $this;
    r12236 := $in_parameter__0;
    r22237 := $in_parameter__1;
    assert r12236 != $null;
    call r32239, $exception := java.lang.Class$java.lang.Object$getClass$40(r12236);
  block182:
    if (r32239 == $null) {
        goto block183;
    }
    assert r32239 != $null;
    call r42240, $exception := java.lang.reflect.Method$lp$$rp$$java.lang.Class$getDeclaredMethods$497(r32239);
    assert r42240 != $null;
    i02241 := $arrSizeHeap[r42240];
    i12242 := 0;
  block184:
    if (i12242 >= i02241) {
        goto block185;
    }
    assert i12242 < $arrSizeHeap[r42240] && i12242 >= 0;
    r52244 := $refArrHeap[r42240][i12242];
    assert r52244 != $null;
    call $r82264, $exception := java.lang.annotation.Annotation$java.lang.reflect.Method$getAnnotation$1341(r52244, CC$org$_$kohsuke$_$args4j$_$Option);
    assert $heap[$r82264,$type] <: org.kohsuke.args4j.Option;
    r62245 := $r82264;
    if (r62245 == $null) {
        goto block186;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.spi.MethodSetter];
    $r92268 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.spi.MethodSetter$$la$init$ra$$3878($r92268, r22237, r12236, r52244);
    assert r22237 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$addOption$2194(r22237, $r92268, r62245);
  block186:
    assert r52244 != $null;
    call $r102272, $exception := java.lang.annotation.Annotation$java.lang.reflect.Method$getAnnotation$1341(r52244, CC$org$_$kohsuke$_$args4j$_$Argument);
    assert $heap[$r102272,$type] <: org.kohsuke.args4j.Argument;
    r72250 := $r102272;
    if (r72250 == $null) {
        goto block187;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.spi.MethodSetter];
    $r112276 := $fakelocal_1;
    call $exception := void$org.kohsuke.args4j.spi.MethodSetter$$la$init$ra$$3878($r112276, r22237, r12236, r52244);
    assert r22237 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$addArgument$2193(r22237, $r112276, r72250);
  block187:
    i12242 := i12242 + 1;
    goto block184;
  block185:
    assert r32239 != $null;
    call r122284, $exception := java.lang.reflect.Field$lp$$rp$$java.lang.Class$getDeclaredFields$496(r32239);
    assert r122284 != $null;
    i22287 := $arrSizeHeap[r122284];
    i32289 := 0;
  block188:
    if (i32289 >= i22287) {
        goto block189;
    }
    assert i32289 < $arrSizeHeap[r122284] && i32289 >= 0;
    r132295 := $refArrHeap[r122284][i32289];
    assert r132295 != $null;
    call $r142298, $exception := java.lang.annotation.Annotation$java.lang.reflect.Field$getAnnotation$1394(r132295, CC$org$_$kohsuke$_$args4j$_$Option);
    assert $heap[$r142298,$type] <: org.kohsuke.args4j.Option;
    r152300 := $r142298;
    if (r152300 == $null) {
        goto block190;
    }
    call $r162305, $exception := org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3867(r132295, r12236);
    assert r22237 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$addOption$2194(r22237, $r162305, r152300);
  block190:
    assert r132295 != $null;
    call $r172309, $exception := java.lang.annotation.Annotation$java.lang.reflect.Field$getAnnotation$1394(r132295, CC$org$_$kohsuke$_$args4j$_$Argument);
    assert $heap[$r172309,$type] <: org.kohsuke.args4j.Argument;
    r182311 := $r172309;
    if (r182311 == $null) {
        goto block191;
    }
    call $r192316, $exception := org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3867(r132295, r12236);
    assert r22237 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$addArgument$2193(r22237, $r192316, r182311);
  block191:
    i32289 := i32289 + 1;
    goto block188;
  block189:
    assert r32239 != $null;
    call r32239, $exception := java.lang.Class$java.lang.Class$getSuperclass$463(r32239);
    goto block182;
  block183:
    return;
}


implementation void$org.kohsuke.args4j.spi.OneArgumentOptionHandler$$la$init$ra$$3187($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r02320 : ref;    
var r12321 : ref;    
var $ex_return : bool;    
var r22322 : ref;    
var r32323 : ref;
    assume $this != $null;
    $ex_return := false;
    r02320 := $this;
    r12321 := $in_parameter__0;
    r22322 := $in_parameter__1;
    r32323 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r02320, r12321, r22322, r32323);
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.OneArgumentOptionHandler$getDefaultMetaVariable$3188($this:ref) returns ($return:ref, $exception:ref){
    
var r02328 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02328 := $this;
    $return := $StringConst53;
    return;
}


implementation int$org.kohsuke.args4j.spi.OneArgumentOptionHandler$parseArguments$3189($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $fakelocal_1 : ref;    
var $r92354 : ref;    
var r72351 : ref;    
var $r122360 : ref;    
var $r42337 : ref;    
var $r102355 : ref;    
var r22334 : ref;    
var r12331 : ref;    
var r32335 : ref;    
var r02330 : ref;    
var $r82352 : ref;    
var $ex_return : bool;    
var $r52348 : ref;    
var $r112356 : ref;    
var $fakelocal_0 : ref;    
var $r62350 : ref;
    assume $this != $null;
    $ex_return := false;
    r02330 := $this;
    r12331 := $in_parameter__0;
    assert r12331 != $null;
    call r22334, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r12331, 0);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block192:
    assert r02330 != $null;
    call r32335, $exception := java.lang.Object$org.kohsuke.args4j.spi.OneArgumentOptionHandler$parse$3190(r02330, r22334);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block193;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert r02330 != $null;
    $r52348 := $heap[r02330,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    assert $r52348 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r52348, r32335);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block193;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block194:
    goto block195;
  block193:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r62350 := $exception;
    r72351 := $r62350;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.CmdLineException];
    $r82352 := $fakelocal_0;
    assert r02330 != $null;
    $r92354 := $heap[r02330,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    $r42337 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 2];
    $r102355 := $fakelocal_1;
    assert r12331 != $null;
    call $r112356, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r12331, -1);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert 0 < $arrSizeHeap[$r102355] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r102355 := $refArrHeap[$r102355][0 := $r112356]];
    assert 1 < $arrSizeHeap[$r102355] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r102355 := $refArrHeap[$r102355][1 := r22334]];
    assert $r42337 != $null;
    call $r122360, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r42337, $r102355);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2181($r82352, $r92354, $r122360);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r82352;
    return;
  block195:
    $return := 1;
    return;
}


implementation void$org.kohsuke.args4j.FieldParser$$la$init$ra$$3860($this:ref) returns ($exception:ref){
    
var r02362 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02362 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02362);
    return;
}


implementation void$org.kohsuke.args4j.FieldParser$parse$3861($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var $ex_return : bool;    
var r72376 : ref;    
var $r132398 : ref;    
var $r92381 : ref;    
var $r42369 : ref;    
var r32368 : ref;    
var $r82379 : ref;    
var r22366 : ref;    
var r52371 : ref;    
var r02364 : ref;    
var i12373 : int;    
var $fakelocal_0 : ref;    
var $r102383 : ref;    
var $r142402 : ref;    
var $r112384 : ref;    
var i02372 : int;    
var $r122395 : ref;    
var r12365 : ref;    
var r62374 : ref;
    assume $this != $null;
    $ex_return := false;
    r02364 := $this;
    r12365 := $in_parameter__0;
    r22366 := $in_parameter__1;
    assert r22366 != $null;
    call r32368, $exception := java.lang.Class$java.lang.Object$getClass$40(r22366);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
  block196:
    if (r32368 == $null) {
        goto block197;
    }
    $r82379 := java.io.PrintStream$java.lang.System$out298;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.StringBuilder];
    $r42369 := $fakelocal_0;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r42369);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert $r42369 != $null;
    call $r92381, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r42369, $StringConst54);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert $r92381 != $null;
    call $r102383, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1967($r92381, r32368);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert $r102383 != $null;
    call $r112384, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r102383);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert $r82379 != $null;
    call $exception := void$java.io.PrintStream$println$217($r82379, $r112384);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert r32368 != $null;
    call r52371, $exception := java.lang.reflect.Field$lp$$rp$$java.lang.Class$getDeclaredFields$496(r32368);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert r52371 != $null;
    i02372 := $arrSizeHeap[r52371];
    i12373 := 0;
  block198:
    if (i12373 >= i02372) {
        goto block199;
    }
    assert i12373 < $arrSizeHeap[r52371] && i12373 >= 0;
    r62374 := $refArrHeap[r52371][i12373];
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.spi.OptionImpl];
    $r122395 := $fakelocal_1;
    assert r02364 != $null;
    call $r132398, $exception := org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.FieldParser$createConfigElement$3862(r02364, r62374);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.spi.OptionImpl$$la$init$ra$$3863($r122395, $r132398);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    r72376 := $r122395;
    call $r142402, $exception := org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3867(r62374, r22366);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert r12365 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$addOption$2194(r12365, $r142402, r72376);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    i12373 := i12373 + 1;
    goto block198;
  block199:
    assert r32368 != $null;
    call r32368, $exception := java.lang.Class$java.lang.Class$getSuperclass$463(r32368);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    goto block196;
  block197:
    return;
}


implementation org.kohsuke.args4j.spi.ConfigElement$org.kohsuke.args4j.FieldParser$createConfigElement$3862($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var $r92422 : ref;    
var $r82421 : ref;    
var $r22408 : ref;    
var r12407 : ref;    
var r32410 : ref;    
var $r52416 : ref;    
var $r62418 : ref;    
var $r42414 : ref;    
var $fakelocal_1 : ref;    
var r02406 : ref;    
var $fakelocal_0 : ref;    
var $r72420 : ref;
    assume $this != $null;
    $ex_return := false;
    r02406 := $this;
    r12407 := $in_parameter__0;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.spi.ConfigElement];
    $r22408 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.spi.ConfigElement$$la$init$ra$$2639($r22408);
    r32410 := $r22408;
    assert r12407 != $null;
    call $r42414, $exception := java.lang.String$java.lang.reflect.Field$getName$1361(r12407);
    assert r32410 != $null;
    $heap := $heap[r32410,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$field379 := $r42414];
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.StringBuilder];
    $r52416 := $fakelocal_1;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963($r52416);
    assert $r52416 != $null;
    call $r62418, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r52416, $StringConst14);
    assert r12407 != $null;
    call $r72420, $exception := java.lang.String$java.lang.reflect.Field$getName$1361(r12407);
    assert $r62418 != $null;
    call $r82421, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r62418, $r72420);
    assert $r82421 != $null;
    call $r92422, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r82421);
    assert r32410 != $null;
    $heap := $heap[r32410,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$name381 := $r92422];
    $return := r32410;
    return;
}


implementation void$org.kohsuke.args4j.spi.OptionImpl$$la$init$ra$$3863($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r12425 : ref;    
var r02424 : ref;    
var $r22431 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02424 := $this;
    r12425 := $in_parameter__0;
    call $exception := void$org.kohsuke.args4j.spi.AnnotationImpl$$la$init$ra$$3869(r02424, CC$org$_$kohsuke$_$args4j$_$Option, r12425);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert r12425 != $null;
    $r22431 := $heap[r12425,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$name381];
    assert r02424 != $null;
    $heap := $heap[r02424,java.lang.String$org.kohsuke.args4j.spi.OptionImpl$name566 := $r22431];
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.OptionImpl$name$3864($this:ref) returns ($return:ref, $exception:ref){
    
var $r12434 : ref;    
var $ex_return : bool;    
var r02432 : ref;
    assume $this != $null;
    $ex_return := false;
    r02432 := $this;
    assert r02432 != $null;
    $r12434 := $heap[r02432,java.lang.String$org.kohsuke.args4j.spi.OptionImpl$name566];
    $return := $r12434;
    return;
}


implementation void$org.kohsuke.args4j.spi.Setters$$la$init$ra$$3865($this:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r02435 : ref;
    assume $this != $null;
    $ex_return := false;
    r02435 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02435);
    return;
}


implementation org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3866($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var r12438 : ref;    
var r02437 : ref;    
var $r42447 : ref;    
var $r52449 : ref;    
var $r62451 : ref;    
var $fakelocal_0 : ref;    
var r22439 : ref;    
var $z02445 : int;    
var $ex_return : bool;    
var $r32446 : ref;
    $ex_return := false;
    r02437 := $in_parameter__0;
    r12438 := $in_parameter__1;
    r22439 := $in_parameter__2;
    $z02445 := $boolToInt($heap[r12438,$type] <: java.lang.reflect.Method);
    if ($z02445 == 0) {
        goto block200;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.spi.MethodSetter];
    $r32446 := $fakelocal_0;
    assert $heap[r12438,$type] <: java.lang.reflect.Method;
    $r42447 := r12438;
    call $exception := void$org.kohsuke.args4j.spi.MethodSetter$$la$init$ra$$3878($r32446, r02437, r22439, $r42447);
    $return := $r32446;
    return;
  block200:
    assert $heap[r12438,$type] <: java.lang.reflect.Field;
    $r52449 := r12438;
    call $r62451, $exception := org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3867($r52449, r22439);
    $return := $r62451;
    return;
}


implementation org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3867($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var $z02459 : int;    
var $ex_return : bool;    
var r02452 : ref;    
var $r22454 : ref;    
var $r52462 : ref;    
var $r42460 : ref;    
var $r32458 : ref;    
var $r62464 : ref;    
var $r82470 : ref;    
var $fakelocal_1 : ref;    
var r12453 : ref;    
var $r72466 : ref;    
var $z12465 : int;
    $ex_return := false;
    r02452 := $in_parameter__0;
    r12453 := $in_parameter__1;
    $r22454 := CC$java$_$util$_$List;
    assert r02452 != $null;
    call $r32458, $exception := java.lang.Class$java.lang.reflect.Field$getType$1365(r02452);
    assert $r22454 != $null;
    call $z02459, $exception := boolean$java.lang.Class$isAssignableFrom$452($r22454, $r32458);
    if ($z02459 == 0) {
        goto block201;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.spi.MultiValueFieldSetter];
    $r42460 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.spi.MultiValueFieldSetter$$la$init$ra$$4041($r42460, r12453, r02452);
    $return := $r42460;
    return;
  block201:
    $r52462 := CC$java$_$util$_$Map;
    assert r02452 != $null;
    call $r62464, $exception := java.lang.Class$java.lang.reflect.Field$getType$1365(r02452);
    assert $r52462 != $null;
    call $z12465, $exception := boolean$java.lang.Class$isAssignableFrom$452($r52462, $r62464);
    if ($z12465 == 0) {
        goto block202;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.MapSetter];
    $r72466 := $fakelocal_1;
    call $exception := void$org.kohsuke.args4j.MapSetter$$la$init$ra$$4046($r72466, r12453, r02452);
    $return := $r72466;
    return;
  block202:
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.spi.FieldSetter];
    $r82470 := $fakelocal_2;
    call $exception := void$org.kohsuke.args4j.spi.FieldSetter$$la$init$ra$$4037($r82470, r12453, r02452);
    $return := $r82470;
    return;
}


implementation void$org.kohsuke.args4j.spi.AnnotationImpl$$la$init$ra$$3868($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r12475 : ref;    
var $ex_return : bool;    
var r02474 : ref;
    assume $this != $null;
    $ex_return := false;
    r02474 := $this;
    r12475 := $in_parameter__0;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02474);
    assert r02474 != $null;
    $heap := $heap[r02474,java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$annotationType567 := r12475];
    return;
}


implementation void$org.kohsuke.args4j.spi.AnnotationImpl$$la$init$ra$$3869($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $r132511 : ref;    
var $r142513 : ref;    
var $z12508 : int;    
var $fakelocal_1 : ref;    
var r12480 : ref;    
var $r72494 : ref;    
var r02479 : ref;    
var $r82495 : ref;    
var $r62491 : ref;    
var $r102500 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $r52488 : ref;    
var $r112502 : ref;    
var $r42486 : ref;    
var r22481 : ref;    
var $z02505 : int;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02479 := $this;
    r12480 := $in_parameter__0;
    r22481 := $in_parameter__1;
    call $exception := void$org.kohsuke.args4j.spi.AnnotationImpl$$la$init$ra$$3868(r02479, r12480);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert r22481 != $null;
    $r42486 := $heap[r22481,java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.ConfigElement$aliases385];
    if ($r42486 == $null) {
        goto block203;
    }
    assert r22481 != $null;
    $r52488 := $heap[r22481,java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.ConfigElement$aliases385];
    goto block204;
  block203:
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := $arrayType(java.lang.String)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 0];
    $r52488 := $fakelocal_0;
  block204:
    assert r02479 != $null;
    $heap := $heap[r02479,java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.AnnotationImpl$aliases568 := $r52488];
    assert r22481 != $null;
    $r62491 := $heap[r22481,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$handler383];
    if ($r62491 == $null) {
        goto block205;
    }
    assert r22481 != $null;
    $r72494 := $heap[r22481,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$handler383];
    call $r82495, $exception := java.lang.Class$java.lang.Class$forName$447($r72494);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    assert r02479 != $null;
    $heap := $heap[r02479,java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$handler569 := $r82495];
    goto block206;
  block205:
    assert r02479 != $null;
    $heap := $heap[r02479,java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$handler569 := CC$org$_$kohsuke$_$args4j$_$spi$_$OptionHandler];
  block206:
    assert r22481 != $null;
    $r102500 := $heap[r22481,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$metavar384];
    if ($r102500 == $null) {
        goto block207;
    }
    assert r22481 != $null;
    $r112502 := $heap[r22481,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$metavar384];
    goto block208;
  block207:
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_1 := 0];
    $r112502 := $fakelocal_1;
  block208:
    assert r02479 != $null;
    $heap := $heap[r02479,java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$metaVar570 := $r112502];
    assert r22481 != $null;
    $z02505 := $heap[r22481,boolean$org.kohsuke.args4j.spi.ConfigElement$multiValued0];
    assert r02479 != $null;
    $heap := $heap[r02479,boolean$org.kohsuke.args4j.spi.AnnotationImpl$multiValued0 := $z02505];
    assert r22481 != $null;
    $z12508 := $heap[r22481,boolean$org.kohsuke.args4j.spi.ConfigElement$required0];
    assert r02479 != $null;
    $heap := $heap[r02479,boolean$org.kohsuke.args4j.spi.AnnotationImpl$required0 := $z12508];
    assert r22481 != $null;
    $r132511 := $heap[r22481,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$usage382];
    if ($r132511 == $null) {
        goto block209;
    }
    assert r22481 != $null;
    $r142513 := $heap[r22481,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$usage382];
    goto block210;
  block209:
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := java.lang.String];
    $stringSizeHeap := $stringSizeHeap[$fakelocal_2 := 0];
    $r142513 := $fakelocal_2;
  block210:
    assert r02479 != $null;
    $heap := $heap[r02479,java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$usage571 := $r142513];
    return;
}


implementation java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.AnnotationImpl$aliases$3870($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var $r12516 : ref;    
var r02514 : ref;
    assume $this != $null;
    $ex_return := false;
    r02514 := $this;
    assert r02514 != $null;
    $r12516 := $heap[r02514,java.lang.String$lp$$rp$$org.kohsuke.args4j.spi.AnnotationImpl$aliases568];
    $return := $r12516;
    return;
}


implementation java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$handler$3871($this:ref) returns ($return:ref, $exception:ref){
    
var $r12519 : ref;    
var $ex_return : bool;    
var r02517 : ref;
    assume $this != $null;
    $ex_return := false;
    r02517 := $this;
    assert r02517 != $null;
    $r12519 := $heap[r02517,java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$handler569];
    $return := $r12519;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$metaVar$3872($this:ref) returns ($return:ref, $exception:ref){
    
var $r12522 : ref;    
var $ex_return : bool;    
var r02520 : ref;
    assume $this != $null;
    $ex_return := false;
    r02520 := $this;
    assert r02520 != $null;
    $r12522 := $heap[r02520,java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$metaVar570];
    $return := $r12522;
    return;
}


implementation boolean$org.kohsuke.args4j.spi.AnnotationImpl$multiValued$3873($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var $z02525 : int;    
var r02523 : ref;
    assume $this != $null;
    $ex_return := false;
    r02523 := $this;
    assert r02523 != $null;
    $z02525 := $heap[r02523,boolean$org.kohsuke.args4j.spi.AnnotationImpl$multiValued0];
    $return := $z02525;
    return;
}


implementation boolean$org.kohsuke.args4j.spi.AnnotationImpl$required$3874($this:ref) returns ($return:int, $exception:ref){
    
var r02526 : ref;    
var $ex_return : bool;    
var $z02528 : int;
    assume $this != $null;
    $ex_return := false;
    r02526 := $this;
    assert r02526 != $null;
    $z02528 := $heap[r02526,boolean$org.kohsuke.args4j.spi.AnnotationImpl$required0];
    $return := $z02528;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$usage$3875($this:ref) returns ($return:ref, $exception:ref){
    
var $r12531 : ref;    
var $ex_return : bool;    
var r02529 : ref;
    assume $this != $null;
    $ex_return := false;
    r02529 := $this;
    assert r02529 != $null;
    $r12531 := $heap[r02529,java.lang.String$org.kohsuke.args4j.spi.AnnotationImpl$usage571];
    $return := $r12531;
    return;
}


implementation java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$annotationType$3876($this:ref) returns ($return:ref, $exception:ref){
    
var $r12534 : ref;    
var $ex_return : bool;    
var r02532 : ref;
    assume $this != $null;
    $ex_return := false;
    r02532 := $this;
    assert r02532 != $null;
    $r12534 := $heap[r02532,java.lang.Class$org.kohsuke.args4j.spi.AnnotationImpl$annotationType567];
    $return := $r12534;
    return;
}


implementation int$org.kohsuke.args4j.spi.AnnotationImpl$index$3877($this:ref) returns ($return:int, $exception:ref){
    
var r02535 : ref;    
var $i02537 : int;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02535 := $this;
    assert r02535 != $null;
    $i02537 := $heap[r02535,int$org.kohsuke.args4j.spi.AnnotationImpl$index0];
    $return := $i02537;
    return;
}


implementation void$org.kohsuke.args4j.spi.MethodSetter$$la$init$ra$$3878($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var $r82561 : ref;    
var $r72560 : ref;    
var $i02556 : int;    
var $r42544 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var $r52555 : ref;    
var r12539 : ref;    
var r02538 : ref;    
var $r62558 : ref;    
var r22540 : ref;    
var r32541 : ref;
    assume $this != $null;
    $ex_return := false;
    r02538 := $this;
    r12539 := $in_parameter__0;
    r22540 := $in_parameter__1;
    r32541 := $in_parameter__2;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02538);
    assert r02538 != $null;
    $heap := $heap[r02538,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.MethodSetter$parser572 := r12539];
    assert r02538 != $null;
    $heap := $heap[r02538,java.lang.Object$org.kohsuke.args4j.spi.MethodSetter$bean573 := r22540];
    assert r02538 != $null;
    $heap := $heap[r02538,java.lang.reflect.Method$org.kohsuke.args4j.spi.MethodSetter$m574 := r32541];
    assert r32541 != $null;
    call $r52555, $exception := java.lang.Class$lp$$rp$$java.lang.reflect.Method$getParameterTypes$1325(r32541);
    assert $r52555 != $null;
    $i02556 := $arrSizeHeap[$r52555];
    if ($i02556 == 1) {
        goto block211;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r62558 := $fakelocal_0;
    $r42544 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_METHOD_SIGNATURE580;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 1];
    $r72560 := $fakelocal_1;
    assert 0 < $arrSizeHeap[$r72560] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r72560 := $refArrHeap[$r72560][0 := r32541]];
    assert $r42544 != $null;
    call $r82561, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r42544, $r72560);
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($r62558, $r82561);
    $exception := $r62558;
    return;
  block211:
    return;
}


implementation java.lang.Class$org.kohsuke.args4j.spi.MethodSetter$getType$3879($this:ref) returns ($return:ref, $exception:ref){
    
var $r12565 : ref;    
var $r22566 : ref;    
var $ex_return : bool;    
var r02562 : ref;    
var $r32567 : ref;
    assume $this != $null;
    $ex_return := false;
    r02562 := $this;
    assert r02562 != $null;
    $r12565 := $heap[r02562,java.lang.reflect.Method$org.kohsuke.args4j.spi.MethodSetter$m574];
    assert $r12565 != $null;
    call $r22566, $exception := java.lang.Class$lp$$rp$$java.lang.reflect.Method$getParameterTypes$1325($r12565);
    assert 0 < $arrSizeHeap[$r22566] && 0 >= 0;
    $r32567 := $refArrHeap[$r22566][0];
    $return := $r32567;
    return;
}


implementation boolean$org.kohsuke.args4j.spi.MethodSetter$isMultiValued$3880($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r02568 : ref;
    assume $this != $null;
    $ex_return := false;
    r02568 := $this;
    $return := 0;
    return;
}


implementation void$org.kohsuke.args4j.spi.MethodSetter$addValue$3881($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_5 : ref;    
var $fakelocal_6 : ref;    
var $r242624 : ref;    
var $r52581 : ref;    
var $r222619 : ref;    
var $fakelocal_0 : ref;    
var $r122593 : ref;    
var $r162602 : ref;    
var $z22617 : int;    
var $r252626 : ref;    
var $z02609 : int;    
var r192607 : ref;    
var $ex_return : bool;    
var $r62582 : ref;    
var $r202611 : ref;    
var $fakelocal_2 : ref;    
var $r152599 : ref;    
var $fakelocal_1 : ref;    
var $r142598 : ref;    
var r32579 : ref;    
var $fakelocal_4 : ref;    
var $r262629 : ref;    
var $r102589 : ref;    
var $fakelocal_3 : ref;    
var $r42580 : ref;    
var r182604 : ref;    
var r12571 : ref;    
var r02570 : ref;    
var r22578 : ref;    
var $r92586 : ref;    
var $r212615 : ref;    
var $r172603 : ref;    
var $r112591 : ref;    
var $r82584 : ref;    
var $z12613 : int;    
var $r232621 : ref;
    assume $this != $null;
    $ex_return := false;
    r02570 := $this;
    r12571 := $in_parameter__0;
  block212:
    assert r02570 != $null;
    $r42580 := $heap[r02570,java.lang.reflect.Method$org.kohsuke.args4j.spi.MethodSetter$m574];
    assert r02570 != $null;
    $r52581 := $heap[r02570,java.lang.Object$org.kohsuke.args4j.spi.MethodSetter$bean573];
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 1];
    $r62582 := $fakelocal_0;
    assert 0 < $arrSizeHeap[$r62582] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r62582 := $refArrHeap[$r62582][0 := r12571]];
    assert $r42580 != $null;
    call $fakelocal_1, $exception := java.lang.Object$java.lang.reflect.Method$invoke$1333($r42580, $r52581, $r62582);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block213;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block214;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block215:
    goto block216;
  block213:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r82584 := $exception;
    r22578 := $r82584;
    assert r02570 != $null;
    $r92586 := $heap[r02570,java.lang.reflect.Method$org.kohsuke.args4j.spi.MethodSetter$m574];
    assert $r92586 != $null;
    call $exception := void$java.lang.reflect.AccessibleObject$setAccessible$1540($r92586, 1);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block214;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block217:
    assert r02570 != $null;
    $r102589 := $heap[r02570,java.lang.reflect.Method$org.kohsuke.args4j.spi.MethodSetter$m574];
    assert r02570 != $null;
    $r112591 := $heap[r02570,java.lang.Object$org.kohsuke.args4j.spi.MethodSetter$bean573];
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 1];
    $r122593 := $fakelocal_2;
    assert 0 < $arrSizeHeap[$r122593] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r122593 := $refArrHeap[$r122593][0 := r12571]];
    assert $r102589 != $null;
    call $fakelocal_3, $exception := java.lang.Object$java.lang.reflect.Method$invoke$1333($r102589, $r112591, $r122593);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block218;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block214;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
  block219:
    goto block216;
  block218:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r142598 := $exception;
    r32579 := $r142598;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := java.lang.IllegalAccessError];
    $r152599 := $fakelocal_4;
    assert r32579 != $null;
    call $r162602, $exception := java.lang.String$java.lang.Throwable$getMessage$16(r32579);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block214;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    call $exception := void$java.lang.IllegalAccessError$$la$init$ra$$1856($r152599, $r162602);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.reflect.InvocationTargetException) {
        goto block214;
    }
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r152599;
    return;
  block216:
    goto block220;
  block214:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r172603 := $exception;
    r182604 := $r172603;
    assert r182604 != $null;
    call r192607, $exception := java.lang.Throwable$java.lang.reflect.InvocationTargetException$getTargetException$2225(r182604);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $z02609 := $boolToInt($heap[r192607,$type] <: java.lang.RuntimeException);
    if ($z02609 == 0) {
        goto block221;
    }
    assert $heap[r192607,$type] <: java.lang.RuntimeException;
    $r202611 := r192607;
    $exception := $r202611;
    return;
  block221:
    $z12613 := $boolToInt($heap[r192607,$type] <: java.lang.Error);
    if ($z12613 == 0) {
        goto block222;
    }
    assert $heap[r192607,$type] <: java.lang.Error;
    $r212615 := r192607;
    $exception := $r212615;
    return;
  block222:
    $z22617 := $boolToInt($heap[r192607,$type] <: org.kohsuke.args4j.CmdLineException);
    if ($z22617 == 0) {
        goto block223;
    }
    assert $heap[r192607,$type] <: org.kohsuke.args4j.CmdLineException;
    $r222619 := r192607;
    $exception := $r222619;
    return;
  block223:
    if (r192607 == $null) {
        goto block224;
    }
    havoc $fakelocal_5;
    assume !$heap[$fakelocal_5,$alloc];
    $heap := $heap[$fakelocal_5,$alloc := true];
    assume $fakelocal_5 != $null;
    $heap := $heap[$fakelocal_5,$type := org.kohsuke.args4j.CmdLineException];
    $r232621 := $fakelocal_5;
    assert r02570 != $null;
    $r242624 := $heap[r02570,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.MethodSetter$parser572];
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2183($r232621, $r242624, r192607);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r232621;
    return;
  block224:
    havoc $fakelocal_6;
    assume !$heap[$fakelocal_6,$alloc];
    $heap := $heap[$fakelocal_6,$alloc := true];
    assume $fakelocal_6 != $null;
    $heap := $heap[$fakelocal_6,$type := org.kohsuke.args4j.CmdLineException];
    $r252626 := $fakelocal_6;
    assert r02570 != $null;
    $r262629 := $heap[r02570,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.MethodSetter$parser572];
    call $exception := void$org.kohsuke.args4j.CmdLineException$$la$init$ra$$2183($r252626, $r262629, r182604);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $exception := $r252626;
    return;
  block220:
    return;
}


implementation void$org.kohsuke.args4j.XmlParser$$la$init$ra$$3882($this:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r02631 : ref;
    assume $this != $null;
    $ex_return := false;
    r02631 := $this;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02631);
    return;
}


implementation void$org.kohsuke.args4j.XmlParser$parse$3883($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var r02633 : ref;    
var r12634 : ref;    
var $r42638 : ref;    
var r22635 : ref;    
var r32636 : ref;    
var $r52641 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02633 := $this;
    r12634 := $in_parameter__0;
    r22635 := $in_parameter__1;
    r32636 := $in_parameter__2;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.xml.sax.InputSource];
    $r42638 := $fakelocal_0;
    assert r12634 != $null;
    call $r52641, $exception := java.lang.String$java.net.URL$toExternalForm$1429(r12634);
    call $exception := void$org.xml.sax.InputSource$$la$init$ra$$2662($r42638, $r52641);
    assert r02633 != $null;
    call $exception := void$org.kohsuke.args4j.XmlParser$parse$3884(r02633, $r42638, r22635, r32636);
    return;
}


implementation void$org.kohsuke.args4j.XmlParser$parse$3884($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var $fakelocal_3 : ref;    
var $r192687 : ref;    
var $fakelocal_4 : ref;    
var $r252703 : ref;    
var $fakelocal_10 : ref;    
var $fakelocal_9 : ref;    
var r22646 : ref;    
var $r242701 : ref;    
var $fakelocal_7 : ref;    
var $r122672 : ref;    
var $fakelocal_6 : ref;    
var $r232699 : ref;    
var $fakelocal_17 : ref;    
var $fakelocal_20 : ref;    
var r02644 : ref;    
var $r132673 : ref;    
var r262704 : ref;    
var r162680 : ref;    
var $fakelocal_0 : ref;    
var $r222698 : ref;    
var $fakelocal_15 : ref;    
var $z02663 : int;    
var $r282707 : ref;    
var r42649 : ref;    
var $fakelocal_14 : ref;    
var r52650 : ref;    
var r182686 : ref;    
var $fakelocal_19 : ref;    
var $fakelocal_13 : ref;    
var $fakelocal_18 : ref;    
var $fakelocal_16 : ref;    
var $fakelocal_11 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_12 : ref;    
var r12645 : ref;    
var $ex_return : bool;    
var $r292709 : ref;    
var r62651 : ref;    
var $r172684 : ref;    
var $r112671 : ref;    
var $r142675 : ref;    
var r202690 : ref;    
var $r82660 : ref;    
var $fakelocal_21 : ref;    
var $r212696 : ref;    
var $z12682 : int;    
var $r102667 : ref;    
var $fakelocal_2 : ref;    
var $r272705 : ref;    
var $fakelocal_5 : ref;    
var r32647 : ref;    
var $r152678 : ref;    
var $r302710 : ref;    
var r72654 : ref;    
var $r92665 : ref;    
var $fakelocal_8 : ref;
    assume $this != $null;
    $ex_return := false;
    r02644 := $this;
    r12645 := $in_parameter__0;
    r22646 := $in_parameter__1;
    r32647 := $in_parameter__2;
  block225:
    call r42649, $exception := org.kohsuke.args4j.Config$org.kohsuke.args4j.Config$parse$2638(r12645);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    if (r42649 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_0;
        assume !$heap[$fakelocal_0,$alloc];
        $heap := $heap[$fakelocal_0,$alloc := true];
        assume $fakelocal_0 != $null;
        $heap := $heap[$fakelocal_0,$type := java.lang.NullPointerException];
        $exception := $fakelocal_0;
        goto block226;
    }
    $r82660 := $heap[r42649,java.util.List$org.kohsuke.args4j.Config$options377];
    if ($r82660 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_1;
        assume !$heap[$fakelocal_1,$alloc];
        $heap := $heap[$fakelocal_1,$alloc := true];
        assume $fakelocal_1 != $null;
        $heap := $heap[$fakelocal_1,$type := java.lang.NullPointerException];
        $exception := $fakelocal_1;
        goto block226;
    }
    call r52650, $exception := java.util.Iterator$java.util.List$iterator$155($r82660);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
  block227:
    if (r52650 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_2;
        assume !$heap[$fakelocal_2,$alloc];
        $heap := $heap[$fakelocal_2,$alloc := true];
        assume $fakelocal_2 != $null;
        $heap := $heap[$fakelocal_2,$type := java.lang.NullPointerException];
        $exception := $fakelocal_2;
        goto block226;
    }
    call $z02663, $exception := boolean$java.util.Iterator$hasNext$1051(r52650);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    if ($z02663 == 0) {
        goto block228;
    }
    if (r52650 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_3;
        assume !$heap[$fakelocal_3,$alloc];
        $heap := $heap[$fakelocal_3,$alloc := true];
        assume $fakelocal_3 != $null;
        $heap := $heap[$fakelocal_3,$type := java.lang.NullPointerException];
        $exception := $fakelocal_3;
        goto block226;
    }
    call $r92665, $exception := java.lang.Object$java.util.Iterator$next$1052(r52650);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    if ($heap[$r92665,$type] <: org.kohsuke.args4j.spi.ConfigElement) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_4;
        assume !$heap[$fakelocal_4,$alloc];
        $heap := $heap[$fakelocal_4,$alloc := true];
        assume $fakelocal_4 != $null;
        $heap := $heap[$fakelocal_4,$type := java.lang.ClassCastException];
        $exception := $fakelocal_4;
        goto block226;
    }
    r62651 := $r92665;
    havoc $fakelocal_5;
    assume !$heap[$fakelocal_5,$alloc];
    $heap := $heap[$fakelocal_5,$alloc := true];
    assume $fakelocal_5 != $null;
    $heap := $heap[$fakelocal_5,$type := org.kohsuke.args4j.spi.OptionImpl];
    $r102667 := $fakelocal_5;
    call $exception := void$org.kohsuke.args4j.spi.OptionImpl$$la$init$ra$$3863($r102667, r62651);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    r72654 := $r102667;
    if (r62651 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_6;
        assume !$heap[$fakelocal_6,$alloc];
        $heap := $heap[$fakelocal_6,$alloc := true];
        assume $fakelocal_6 != $null;
        $heap := $heap[$fakelocal_6,$type := java.lang.NullPointerException];
        $exception := $fakelocal_6;
        goto block226;
    }
    $r112671 := $heap[r62651,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$field379];
    if (r62651 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_7;
        assume !$heap[$fakelocal_7,$alloc];
        $heap := $heap[$fakelocal_7,$alloc := true];
        assume $fakelocal_7 != $null;
        $heap := $heap[$fakelocal_7,$type := java.lang.NullPointerException];
        $exception := $fakelocal_7;
        goto block226;
    }
    $r122672 := $heap[r62651,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$method380];
    if (r02644 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_8;
        assume !$heap[$fakelocal_8,$alloc];
        $heap := $heap[$fakelocal_8,$alloc := true];
        assume $fakelocal_8 != $null;
        $heap := $heap[$fakelocal_8,$type := java.lang.NullPointerException];
        $exception := $fakelocal_8;
        goto block226;
    }
    call $r132673, $exception := java.lang.reflect.AccessibleObject$org.kohsuke.args4j.XmlParser$findMethodOrField$3885(r02644, r32647, $r112671, $r122672);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    call $r142675, $exception := org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3866(r22646, $r132673, r32647);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    if (r22646 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_9;
        assume !$heap[$fakelocal_9,$alloc];
        $heap := $heap[$fakelocal_9,$alloc := true];
        assume $fakelocal_9 != $null;
        $heap := $heap[$fakelocal_9,$type := java.lang.NullPointerException];
        $exception := $fakelocal_9;
        goto block226;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineParser$addOption$2194(r22646, $r142675, r72654);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    goto block227;
  block228:
    if (r42649 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_10;
        assume !$heap[$fakelocal_10,$alloc];
        $heap := $heap[$fakelocal_10,$alloc := true];
        assume $fakelocal_10 != $null;
        $heap := $heap[$fakelocal_10,$type := java.lang.NullPointerException];
        $exception := $fakelocal_10;
        goto block226;
    }
    $r152678 := $heap[r42649,java.util.List$org.kohsuke.args4j.Config$arguments378];
    if ($r152678 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_11;
        assume !$heap[$fakelocal_11,$alloc];
        $heap := $heap[$fakelocal_11,$alloc := true];
        assume $fakelocal_11 != $null;
        $heap := $heap[$fakelocal_11,$type := java.lang.NullPointerException];
        $exception := $fakelocal_11;
        goto block226;
    }
    call r162680, $exception := java.util.Iterator$java.util.List$iterator$155($r152678);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
  block229:
    if (r162680 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_12;
        assume !$heap[$fakelocal_12,$alloc];
        $heap := $heap[$fakelocal_12,$alloc := true];
        assume $fakelocal_12 != $null;
        $heap := $heap[$fakelocal_12,$type := java.lang.NullPointerException];
        $exception := $fakelocal_12;
        goto block226;
    }
    call $z12682, $exception := boolean$java.util.Iterator$hasNext$1051(r162680);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    if ($z12682 == 0) {
        goto block230;
    }
    if (r162680 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_13;
        assume !$heap[$fakelocal_13,$alloc];
        $heap := $heap[$fakelocal_13,$alloc := true];
        assume $fakelocal_13 != $null;
        $heap := $heap[$fakelocal_13,$type := java.lang.NullPointerException];
        $exception := $fakelocal_13;
        goto block226;
    }
    call $r172684, $exception := java.lang.Object$java.util.Iterator$next$1052(r162680);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    if ($heap[$r172684,$type] <: org.kohsuke.args4j.spi.ConfigElement) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_14;
        assume !$heap[$fakelocal_14,$alloc];
        $heap := $heap[$fakelocal_14,$alloc := true];
        assume $fakelocal_14 != $null;
        $heap := $heap[$fakelocal_14,$type := java.lang.ClassCastException];
        $exception := $fakelocal_14;
        goto block226;
    }
    r182686 := $r172684;
    havoc $fakelocal_15;
    assume !$heap[$fakelocal_15,$alloc];
    $heap := $heap[$fakelocal_15,$alloc := true];
    assume $fakelocal_15 != $null;
    $heap := $heap[$fakelocal_15,$type := org.kohsuke.args4j.spi.ArgumentImpl];
    $r192687 := $fakelocal_15;
    call $exception := void$org.kohsuke.args4j.spi.ArgumentImpl$$la$init$ra$$3886($r192687, r182686);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    r202690 := $r192687;
    if (r182686 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_16;
        assume !$heap[$fakelocal_16,$alloc];
        $heap := $heap[$fakelocal_16,$alloc := true];
        assume $fakelocal_16 != $null;
        $heap := $heap[$fakelocal_16,$type := java.lang.NullPointerException];
        $exception := $fakelocal_16;
        goto block226;
    }
    $r212696 := $heap[r182686,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$field379];
    if (r182686 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_17;
        assume !$heap[$fakelocal_17,$alloc];
        $heap := $heap[$fakelocal_17,$alloc := true];
        assume $fakelocal_17 != $null;
        $heap := $heap[$fakelocal_17,$type := java.lang.NullPointerException];
        $exception := $fakelocal_17;
        goto block226;
    }
    $r222698 := $heap[r182686,java.lang.String$org.kohsuke.args4j.spi.ConfigElement$method380];
    if (r02644 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_18;
        assume !$heap[$fakelocal_18,$alloc];
        $heap := $heap[$fakelocal_18,$alloc := true];
        assume $fakelocal_18 != $null;
        $heap := $heap[$fakelocal_18,$type := java.lang.NullPointerException];
        $exception := $fakelocal_18;
        goto block226;
    }
    call $r232699, $exception := java.lang.reflect.AccessibleObject$org.kohsuke.args4j.XmlParser$findMethodOrField$3885(r02644, r32647, $r212696, $r222698);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    call $r242701, $exception := org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.Setters$create$3866(r22646, $r232699, r32647);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    if (r22646 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_19;
        assume !$heap[$fakelocal_19,$alloc];
        $heap := $heap[$fakelocal_19,$alloc := true];
        assume $fakelocal_19 != $null;
        $heap := $heap[$fakelocal_19,$type := java.lang.NullPointerException];
        $exception := $fakelocal_19;
        goto block226;
    }
    call $exception := void$org.kohsuke.args4j.CmdLineParser$addArgument$2193(r22646, $r242701, r202690);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Exception) {
        goto block226;
    }
    goto block229;
  block230:
    goto block231;
  block226:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r252703 := $exception;
    r262704 := $r252703;
    havoc $fakelocal_20;
    assume !$heap[$fakelocal_20,$alloc];
    $heap := $heap[$fakelocal_20,$alloc := true];
    assume $fakelocal_20 != $null;
    $heap := $heap[$fakelocal_20,$type := java.lang.RuntimeException];
    $r272705 := $fakelocal_20;
    $r282707 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$METADATA_ERROR400;
    havoc $fakelocal_21;
    assume !$heap[$fakelocal_21,$alloc];
    $heap := $heap[$fakelocal_21,$alloc := true];
    assume $fakelocal_21 != $null;
    $heap := $heap[$fakelocal_21,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_21 := 0];
    $r292709 := $fakelocal_21;
    assert $r282707 != $null;
    call $r302710, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r282707, $r292709);
    call $exception := void$java.lang.RuntimeException$$la$init$ra$$924($r272705, $r302710, r262704);
    $exception := $r272705;
    return;
  block231:
    return;
}


implementation java.lang.reflect.AccessibleObject$org.kohsuke.args4j.XmlParser$findMethodOrField$3885($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var i02724 : int;    
var $i42741 : int;    
var r62722 : ref;    
var $r132763 : ref;    
var $ex_return : bool;    
var $fakelocal_1 : ref;    
var r42718 : ref;    
var $i62751 : int;    
var $r92727 : ref;    
var r22714 : ref;    
var r172776 : ref;    
var $r152770 : ref;    
var r02712 : ref;    
var $i32738 : int;    
var $i12731 : int;    
var r182777 : ref;    
var r52721 : ref;    
var r72723 : ref;    
var $fakelocal_0 : ref;    
var $r142768 : ref;    
var r82725 : ref;    
var $r102742 : ref;    
var $i22736 : int;    
var r12713 : ref;    
var r32715 : ref;    
var r162775 : ref;    
var $i52746 : int;    
var $i72757 : int;    
var $r122761 : ref;
    assume $this != $null;
    $ex_return := false;
    r02712 := $this;
    r12713 := $in_parameter__0;
    r22714 := $in_parameter__1;
    r32715 := $in_parameter__2;
    if (r22714 == $null) {
        goto block232;
    }
    assert r12713 != $null;
    call $r92727, $exception := java.lang.Class$java.lang.Object$getClass$40(r12713);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert $r92727 != $null;
    call r42718, $exception := java.lang.reflect.Field$java.lang.Class$getDeclaredField$499($r92727, r22714);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    goto block233;
  block232:
    assert r32715 != $null;
    call $i12731, $exception := int$java.lang.String$indexOf$101(r32715, $StringConst55);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert r32715 != $null;
    call r52721, $exception := java.lang.String$java.lang.String$substring$108(r32715, 0, $i12731);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert r32715 != $null;
    call $i22736, $exception := int$java.lang.String$indexOf$101(r32715, $StringConst55);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    $i32738 := $i22736 + 1;
    assert r32715 != $null;
    call $i42741, $exception := int$java.lang.String$indexOf$101(r32715, $StringConst50);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert r32715 != $null;
    call $r102742, $exception := java.lang.String$java.lang.String$substring$108(r32715, $i32738, $i42741);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert $r102742 != $null;
    call r62722, $exception := java.lang.String$lp$$rp$$java.lang.String$split$118($r102742, $StringConst28);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert r62722 != $null;
    $i52746 := $arrSizeHeap[r62722];
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := $arrayType(java.lang.Class)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := $i52746];
    r72723 := $fakelocal_0;
    i02724 := 0;
  block234:
    assert r62722 != $null;
    $i62751 := $arrSizeHeap[r62722];
    if (i02724 >= $i62751) {
        goto block235;
    }
    assert i02724 < $arrSizeHeap[r62722] && i02724 >= 0;
    r82725 := $refArrHeap[r62722][i02724];
    assert r82725 != $null;
    call $i72757, $exception := int$java.lang.String$indexOf$95(r82725, 46);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    if ($i72757 >= 0) {
        goto block236;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := java.lang.StringBuilder];
    r162775 := $fakelocal_1;
    call $exception := void$java.lang.StringBuilder$$la$init$ra$$1963(r162775);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert r162775 != $null;
    call $r122761, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968(r162775, $StringConst56);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert $r122761 != $null;
    call $r132763, $exception := java.lang.StringBuilder$java.lang.StringBuilder$append$1968($r122761, r82725);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert $r132763 != $null;
    call r82725, $exception := java.lang.String$java.lang.StringBuilder$toString$2002($r132763);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
  block236:
    call $r142768, $exception := java.lang.Class$java.lang.Class$forName$447(r82725);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert i02724 < $arrSizeHeap[r72723] && i02724 >= 0;
    $refArrHeap := $refArrHeap[r72723 := $refArrHeap[r72723][i02724 := $r142768]];
    i02724 := i02724 + 1;
    goto block234;
  block235:
    assert r12713 != $null;
    call $r152770, $exception := java.lang.Class$java.lang.Object$getClass$40(r12713);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert $r152770 != $null;
    call r172776, $exception := java.lang.reflect.Method$java.lang.Class$getMethod$493($r152770, r52721, r72723);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchFieldException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NoSuchMethodException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.SecurityException) {
        return;
    }
    assert $heap[r172776,$type] <: java.lang.reflect.Field;
    r182777 := r172776;
    r42718 := r182777;
  block233:
    $return := r42718;
    return;
}


implementation void$org.kohsuke.args4j.spi.ArgumentImpl$$la$init$ra$$3886($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r02778 : ref;    
var r12779 : ref;
    assume $this != $null;
    $ex_return := false;
    r02778 := $this;
    r12779 := $in_parameter__0;
    call $exception := void$org.kohsuke.args4j.spi.AnnotationImpl$$la$init$ra$$3869(r02778, CC$org$_$kohsuke$_$args4j$_$Argument, r12779);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.ClassNotFoundException) {
        return;
    }
    return;
}


implementation void$org.kohsuke.args4j.spi.StopOptionHandler$$la$init$ra$$3900($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r22785 : ref;    
var $ex_return : bool;    
var r02783 : ref;    
var r32786 : ref;    
var r12784 : ref;
    assume $this != $null;
    $ex_return := false;
    r02783 := $this;
    r12784 := $in_parameter__0;
    r22785 := $in_parameter__1;
    r32786 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r02783, r12784, r22785, r32786);
    return;
}


implementation int$org.kohsuke.args4j.spi.StopOptionHandler$parseArguments$3901($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var $r22794 : ref;    
var r02791 : ref;    
var r12792 : ref;
    assume $this != $null;
    $ex_return := false;
    r02791 := $this;
    r12792 := $in_parameter__0;
    assert r02791 != $null;
    $r22794 := $heap[r02791,org.kohsuke.args4j.CmdLineParser$org.kohsuke.args4j.spi.OptionHandler$owner341];
    assert $r22794 != $null;
    call $exception := void$org.kohsuke.args4j.CmdLineParser$stopOptionParsing$2216($r22794);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := 0;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.StopOptionHandler$getDefaultMetaVariable$3902($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r02796 : ref;
    assume $this != $null;
    $ex_return := false;
    r02796 := $this;
    $return := $StringConst57;
    return;
}


implementation org.kohsuke.args4j.spi.Messages$lp$$rp$$org.kohsuke.args4j.spi.Messages$values$3903() returns ($return:ref, $exception:ref){
    
var $r22800 : ref;    
var $r02798 : ref;    
var $r12799 : ref;    
var $ex_return : bool;
    $ex_return := false;
    $r02798 := org.kohsuke.args4j.spi.Messages$lp$$rp$$org.kohsuke.args4j.spi.Messages$$VALUES584;
    assert $r02798 != $null;
    call $r12799 := java.lang.Object$java.lang.Object$clone$43($r02798);
    assert $heap[$r12799,$type] <: $arrayType(org.kohsuke.args4j.spi.Messages);
    $r22800 := $r12799;
    $return := $r22800;
    return;
}


implementation org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$valueOf$3904($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r02801 : ref;    
var $ex_return : bool;    
var $r22805 : ref;    
var $r12804 : ref;
    $ex_return := false;
    r02801 := $in_parameter__0;
    call $r12804, $exception := java.lang.Enum$java.lang.Enum$valueOf$1906(CC$org$_$kohsuke$_$args4j$_$spi$_$Messages, r02801);
    assert $heap[$r12804,$type] <: org.kohsuke.args4j.spi.Messages;
    $r22805 := $r12804;
    $return := $r22805;
    return;
}


implementation void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref){
    
var $ex_return : bool;    
var r02806 : ref;    
var r12807 : ref;    
var i02808 : int;
    assume $this != $null;
    $ex_return := false;
    r02806 := $this;
    r12807 := $in_parameter__0;
    i02808 := $in_parameter__1;
    call $exception := void$java.lang.Enum$$la$init$ra$$1899(r02806, r12807, i02808);
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r02812 : ref;    
var $r92822 : ref;    
var $fakelocal_2 : ref;    
var $ex_return : bool;    
var r42817 : ref;    
var r12813 : ref;    
var $r112825 : ref;    
var $r82821 : ref;    
var $r122827 : ref;    
var $r62819 : ref;    
var $fakelocal_0 : ref;    
var $r102824 : ref;    
var $fakelocal_1 : ref;    
var $r132829 : ref;    
var r32816 : ref;    
var $r52818 : ref;    
var $r72820 : ref;
    assume $this != $null;
    $ex_return := false;
    r02812 := $this;
    r12813 := $in_parameter__0;
    r32816 := CC$org$_$kohsuke$_$args4j$_$spi$_$Messages;
  block237:
    $r52818 := java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583;
    if ($r52818 != $null) {
        goto block238;
    }
    $r62819 := CC$org$_$kohsuke$_$args4j$_$spi$_$Messages;
    if ($r62819 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_0;
        assume !$heap[$fakelocal_0,$alloc];
        $heap := $heap[$fakelocal_0,$alloc := true];
        assume $fakelocal_0 != $null;
        $heap := $heap[$fakelocal_0,$type := java.lang.NullPointerException];
        $exception := $fakelocal_0;
        goto block239;
    }
    call $r72820, $exception := java.lang.String$java.lang.Class$getName$458($r62819);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block239;
    }
    call $r82821, $exception := java.util.ResourceBundle$java.util.ResourceBundle$getBundle$2513($r72820);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block239;
    }
    java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583 := $r82821;
  block238:
    $r92822 := java.util.ResourceBundle$org.kohsuke.args4j.spi.Messages$rb583;
    if (r02812 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_1;
        assume !$heap[$fakelocal_1,$alloc];
        $heap := $heap[$fakelocal_1,$alloc := true];
        assume $fakelocal_1 != $null;
        $heap := $heap[$fakelocal_1,$type := java.lang.NullPointerException];
        $exception := $fakelocal_1;
        goto block239;
    }
    call $r102824, $exception := java.lang.String$java.lang.Enum$name$1897(r02812);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block239;
    }
    if ($r92822 != $null) {
        assert true;
    } else {
        assert { :NoCode } true;
        havoc $fakelocal_2;
        assume !$heap[$fakelocal_2,$alloc];
        $heap := $heap[$fakelocal_2,$alloc := true];
        assume $fakelocal_2 != $null;
        $heap := $heap[$fakelocal_2,$type := java.lang.NullPointerException];
        $exception := $fakelocal_2;
        goto block239;
    }
    call $r112825, $exception := java.lang.String$java.util.ResourceBundle$getString$2507($r92822, $r102824);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block239;
    }
    call $r122827, $exception := java.lang.String$java.text.MessageFormat$format$4070($r112825, r12813);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.Throwable) {
        goto block239;
    }
  block240:
    $return := $r122827;
    return;
  block239:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r132829 := $exception;
  block241:
    r42817 := $r132829;
  block242:
    $exception := r42817;
    return;
}


implementation void$org.kohsuke.args4j.spi.Messages$$la$clinit$ra$$3907() returns ($exception:ref){
    
var $fakelocal_0 : ref;    
var $fakelocal_6 : ref;    
var $r42848 : ref;    
var $r02832 : ref;    
var $r122875 : ref;    
var $fakelocal_3 : ref;    
var $r92866 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_4 : ref;    
var $r82863 : ref;    
var $fakelocal_5 : ref;    
var $r22840 : ref;    
var $r52852 : ref;    
var $fakelocal_1 : ref;    
var $ex_return : bool;    
var $r112872 : ref;    
var $r32844 : ref;    
var $r62857 : ref;    
var $r12836 : ref;    
var $r72860 : ref;    
var $r102869 : ref;
    $ex_return := false;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.spi.Messages];
    $r02832 := $fakelocal_0;
    call $exception := void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($r02832, $StringConst58, 0);
    org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577 := $r02832;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.spi.Messages];
    $r12836 := $fakelocal_1;
    call $exception := void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($r12836, $StringConst59, 1);
    org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_CHAR578 := $r12836;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := org.kohsuke.args4j.spi.Messages];
    $r22840 := $fakelocal_2;
    call $exception := void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($r22840, $StringConst60, 2);
    org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_BOOLEAN579 := $r22840;
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := org.kohsuke.args4j.spi.Messages];
    $r32844 := $fakelocal_3;
    call $exception := void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($r32844, $StringConst61, 3);
    org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_METHOD_SIGNATURE580 := $r32844;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := org.kohsuke.args4j.spi.Messages];
    $r42848 := $fakelocal_4;
    call $exception := void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($r42848, $StringConst62, 4);
    org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_FIELD_SIGNATURE581 := $r42848;
    havoc $fakelocal_5;
    assume !$heap[$fakelocal_5,$alloc];
    $heap := $heap[$fakelocal_5,$alloc := true];
    assume $fakelocal_5 != $null;
    $heap := $heap[$fakelocal_5,$type := org.kohsuke.args4j.spi.Messages];
    $r52852 := $fakelocal_5;
    call $exception := void$org.kohsuke.args4j.spi.Messages$$la$init$ra$$3905($r52852, $StringConst63, 5);
    org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_LIST582 := $r52852;
    havoc $fakelocal_6;
    assume !$heap[$fakelocal_6,$alloc];
    $heap := $heap[$fakelocal_6,$alloc := true];
    assume $fakelocal_6 != $null;
    $heap := $heap[$fakelocal_6,$type := $arrayType(org.kohsuke.args4j.spi.Messages)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_6 := 6];
    $r62857 := $fakelocal_6;
    $r72860 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_OPERAND577;
    assert 0 < $arrSizeHeap[$r62857] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r62857 := $refArrHeap[$r62857][0 := $r72860]];
    $r82863 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_CHAR578;
    assert 1 < $arrSizeHeap[$r62857] && 1 >= 0;
    $refArrHeap := $refArrHeap[$r62857 := $refArrHeap[$r62857][1 := $r82863]];
    $r92866 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_BOOLEAN579;
    assert 2 < $arrSizeHeap[$r62857] && 2 >= 0;
    $refArrHeap := $refArrHeap[$r62857 := $refArrHeap[$r62857][2 := $r92866]];
    $r102869 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_METHOD_SIGNATURE580;
    assert 3 < $arrSizeHeap[$r62857] && 3 >= 0;
    $refArrHeap := $refArrHeap[$r62857 := $refArrHeap[$r62857][3 := $r102869]];
    $r112872 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_FIELD_SIGNATURE581;
    assert 4 < $arrSizeHeap[$r62857] && 4 >= 0;
    $refArrHeap := $refArrHeap[$r62857 := $refArrHeap[$r62857][4 := $r112872]];
    $r122875 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_LIST582;
    assert 5 < $arrSizeHeap[$r62857] && 5 >= 0;
    $refArrHeap := $refArrHeap[$r62857 := $refArrHeap[$r62857][5 := $r122875]];
    org.kohsuke.args4j.spi.Messages$lp$$rp$$org.kohsuke.args4j.spi.Messages$$VALUES584 := $r62857;
    return;
}


implementation void$org.kohsuke.args4j.spi.RestOfArgumentsHandler$$la$init$ra$$3908($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r02876 : ref;    
var r32879 : ref;    
var r12877 : ref;    
var r22878 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02876 := $this;
    r12877 := $in_parameter__0;
    r22878 := $in_parameter__1;
    r32879 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r02876, r12877, r22878, r32879);
    return;
}


implementation int$org.kohsuke.args4j.spi.RestOfArgumentsHandler$parseArguments$3909($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r02884 : ref;    
var $r22893 : ref;    
var $r32895 : ref;    
var i02887 : int;    
var $i12891 : int;    
var r12885 : ref;    
var $i22897 : int;
    assume $this != $null;
    $ex_return := false;
    r02884 := $this;
    r12885 := $in_parameter__0;
    i02887 := 0;
  block243:
    assert r12885 != $null;
    call $i12891, $exception := int$org.kohsuke.args4j.spi.Parameters$size$3058(r12885);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if (i02887 >= $i12891) {
        goto block244;
    }
    assert r02884 != $null;
    $r22893 := $heap[r02884,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    assert r12885 != $null;
    call $r32895, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r12885, i02887);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert $r22893 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503($r22893, $r32895);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    i02887 := i02887 + 1;
    goto block243;
  block244:
    assert r12885 != $null;
    call $i22897, $exception := int$org.kohsuke.args4j.spi.Parameters$size$3058(r12885);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := $i22897;
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.RestOfArgumentsHandler$getDefaultMetaVariable$3910($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r02898 : ref;
    assume $this != $null;
    $ex_return := false;
    r02898 := $this;
    $return := $StringConst64;
    return;
}


implementation void$org.kohsuke.args4j.spi.FieldSetter$$la$init$ra$$4037($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r22902 : ref;    
var r02900 : ref;    
var $ex_return : bool;    
var r12901 : ref;
    assume $this != $null;
    $ex_return := false;
    r02900 := $this;
    r12901 := $in_parameter__0;
    r22902 := $in_parameter__1;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02900);
    assert r02900 != $null;
    $heap := $heap[r02900,java.lang.Object$org.kohsuke.args4j.spi.FieldSetter$bean586 := r12901];
    assert r02900 != $null;
    $heap := $heap[r02900,java.lang.reflect.Field$org.kohsuke.args4j.spi.FieldSetter$f585 := r22902];
    return;
}


implementation java.lang.Class$org.kohsuke.args4j.spi.FieldSetter$getType$4038($this:ref) returns ($return:ref, $exception:ref){
    
var $r12910 : ref;    
var $r22911 : ref;    
var r02908 : ref;    
var $ex_return : bool;
    assume $this != $null;
    $ex_return := false;
    r02908 := $this;
    assert r02908 != $null;
    $r12910 := $heap[r02908,java.lang.reflect.Field$org.kohsuke.args4j.spi.FieldSetter$f585];
    assert $r12910 != $null;
    call $r22911, $exception := java.lang.Class$java.lang.reflect.Field$getType$1365($r12910);
    $return := $r22911;
    return;
}


implementation boolean$org.kohsuke.args4j.spi.FieldSetter$isMultiValued$4039($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r02912 : ref;
    assume $this != $null;
    $ex_return := false;
    r02912 := $this;
    $return := 0;
    return;
}


implementation void$org.kohsuke.args4j.spi.FieldSetter$addValue$4040($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r12915 : ref;    
var $r72925 : ref;    
var $r42921 : ref;    
var r22919 : ref;    
var r02914 : ref;    
var $r62923 : ref;    
var $r82928 : ref;    
var $r112933 : ref;    
var $r92930 : ref;    
var r32920 : ref;    
var $r122936 : ref;    
var $r102932 : ref;    
var $r52922 : ref;    
var $fakelocal_0 : ref;
    assume $this != $null;
    $ex_return := false;
    r02914 := $this;
    r12915 := $in_parameter__0;
  block245:
    assert r02914 != $null;
    $r42921 := $heap[r02914,java.lang.reflect.Field$org.kohsuke.args4j.spi.FieldSetter$f585];
    assert r02914 != $null;
    $r52922 := $heap[r02914,java.lang.Object$org.kohsuke.args4j.spi.FieldSetter$bean586];
    assert $r42921 != $null;
    call $exception := void$java.lang.reflect.Field$set$1380($r42921, $r52922, r12915);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block246;
    }
  block247:
    goto block248;
  block246:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r62923 := $exception;
    r22919 := $r62923;
    assert r02914 != $null;
    $r72925 := $heap[r02914,java.lang.reflect.Field$org.kohsuke.args4j.spi.FieldSetter$f585];
    assert $r72925 != $null;
    call $exception := void$java.lang.reflect.AccessibleObject$setAccessible$1540($r72925, 1);
  block249:
    assert r02914 != $null;
    $r82928 := $heap[r02914,java.lang.reflect.Field$org.kohsuke.args4j.spi.FieldSetter$f585];
    assert r02914 != $null;
    $r92930 := $heap[r02914,java.lang.Object$org.kohsuke.args4j.spi.FieldSetter$bean586];
    assert $r82928 != $null;
    call $exception := void$java.lang.reflect.Field$set$1380($r82928, $r92930, r12915);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block250;
    }
  block251:
    goto block248;
  block250:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r102932 := $exception;
    r32920 := $r102932;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.IllegalAccessError];
    $r112933 := $fakelocal_0;
    assert r32920 != $null;
    call $r122936, $exception := java.lang.String$java.lang.Throwable$getMessage$16(r32920);
    call $exception := void$java.lang.IllegalAccessError$$la$init$ra$$1856($r112933, $r122936);
    $exception := $r112933;
    return;
  block248:
    return;
}


implementation void$org.kohsuke.args4j.spi.MultiValueFieldSetter$$la$init$ra$$4041($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var r02937 : ref;    
var $fakelocal_1 : ref;    
var $ex_return : bool;    
var $r32942 : ref;    
var $r42950 : ref;    
var $r62954 : ref;    
var $r92958 : ref;    
var $r52952 : ref;    
var $r72956 : ref;    
var r22939 : ref;    
var $z02953 : int;    
var $fakelocal_0 : ref;    
var $r82957 : ref;    
var r12938 : ref;
    assume $this != $null;
    $ex_return := false;
    r02937 := $this;
    r12938 := $in_parameter__0;
    r22939 := $in_parameter__1;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r02937);
    assert r02937 != $null;
    $heap := $heap[r02937,java.lang.Object$org.kohsuke.args4j.spi.MultiValueFieldSetter$bean587 := r12938];
    assert r02937 != $null;
    $heap := $heap[r02937,java.lang.reflect.Field$org.kohsuke.args4j.spi.MultiValueFieldSetter$f588 := r22939];
    $r42950 := CC$java$_$util$_$List;
    assert r22939 != $null;
    call $r52952, $exception := java.lang.Class$java.lang.reflect.Field$getType$1365(r22939);
    assert $r42950 != $null;
    call $z02953, $exception := boolean$java.lang.Class$isAssignableFrom$452($r42950, $r52952);
    if ($z02953 != 0) {
        goto block252;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r62954 := $fakelocal_0;
    $r32942 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_FIELD_SIGNATURE581;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 1];
    $r72956 := $fakelocal_1;
    assert r22939 != $null;
    call $r82957, $exception := java.lang.Class$java.lang.reflect.Field$getType$1365(r22939);
    assert 0 < $arrSizeHeap[$r72956] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r72956 := $refArrHeap[$r72956][0 := $r82957]];
    assert $r32942 != $null;
    call $r92958, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r32942, $r72956);
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($r62954, $r92958);
    $exception := $r62954;
    return;
  block252:
    return;
}


implementation boolean$org.kohsuke.args4j.spi.MultiValueFieldSetter$isMultiValued$4042($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r02959 : ref;
    assume $this != $null;
    $ex_return := false;
    r02959 := $this;
    $return := 1;
    return;
}


implementation java.lang.Class$org.kohsuke.args4j.spi.MultiValueFieldSetter$getType$4043($this:ref) returns ($return:ref, $exception:ref){
    
var r52975 : ref;    
var $ex_return : bool;    
var $z02969 : int;    
var $r42973 : ref;    
var r12963 : ref;    
var r22964 : ref;    
var $r32966 : ref;    
var $z12977 : int;    
var $r62979 : ref;    
var r02961 : ref;
    assume $this != $null;
    $ex_return := false;
    r02961 := $this;
    assert r02961 != $null;
    $r32966 := $heap[r02961,java.lang.reflect.Field$org.kohsuke.args4j.spi.MultiValueFieldSetter$f588];
    assert $r32966 != $null;
    call r12963, $exception := java.lang.reflect.Type$java.lang.reflect.Field$getGenericType$1366($r32966);
    $z02969 := $boolToInt($heap[r12963,$type] <: java.lang.reflect.ParameterizedType);
    if ($z02969 == 0) {
        goto block253;
    }
    assert $heap[r12963,$type] <: java.lang.reflect.ParameterizedType;
    r22964 := r12963;
    assert r22964 != $null;
    call $r42973, $exception := java.lang.reflect.Type$lp$$rp$$java.lang.reflect.ParameterizedType$getActualTypeArguments$4051(r22964);
    assert 0 < $arrSizeHeap[$r42973] && 0 >= 0;
    r52975 := $refArrHeap[$r42973][0];
    $z12977 := $boolToInt($heap[r52975,$type] <: java.lang.Class);
    if ($z12977 == 0) {
        goto block253;
    }
    assert $heap[r52975,$type] <: java.lang.Class;
    $r62979 := r52975;
    $return := $r62979;
    return;
  block253:
    $return := CC$java$_$lang$_$Object;
    return;
}


implementation void$org.kohsuke.args4j.spi.MultiValueFieldSetter$addValue$4044($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r12982 : ref;    
var r32987 : ref;    
var $r62991 : ref;    
var $ex_return : bool;    
var $r52989 : ref;    
var $r42988 : ref;    
var $r72995 : ref;    
var r22986 : ref;    
var $r92998 : ref;    
var r02981 : ref;    
var $r103001 : ref;    
var $r82997 : ref;    
var $fakelocal_0 : ref;
    assume $this != $null;
    $ex_return := false;
    r02981 := $this;
    r12982 := $in_parameter__0;
  block254:
    assert r02981 != $null;
    $r42988 := $heap[r02981,java.lang.Object$org.kohsuke.args4j.spi.MultiValueFieldSetter$bean587];
    assert r02981 != $null;
    call $exception := void$org.kohsuke.args4j.spi.MultiValueFieldSetter$doAddValue$4045(r02981, $r42988, r12982);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block255;
    }
  block256:
    goto block257;
  block255:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r52989 := $exception;
    r22986 := $r52989;
    assert r02981 != $null;
    $r62991 := $heap[r02981,java.lang.reflect.Field$org.kohsuke.args4j.spi.MultiValueFieldSetter$f588];
    assert $r62991 != $null;
    call $exception := void$java.lang.reflect.AccessibleObject$setAccessible$1540($r62991, 1);
  block258:
    assert r02981 != $null;
    $r72995 := $heap[r02981,java.lang.Object$org.kohsuke.args4j.spi.MultiValueFieldSetter$bean587];
    assert r02981 != $null;
    call $exception := void$org.kohsuke.args4j.spi.MultiValueFieldSetter$doAddValue$4045(r02981, $r72995, r12982);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block259;
    }
  block260:
    goto block257;
  block259:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r82997 := $exception;
    r32987 := $r82997;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.IllegalAccessError];
    $r92998 := $fakelocal_0;
    assert r32987 != $null;
    call $r103001, $exception := java.lang.String$java.lang.Throwable$getMessage$16(r32987);
    call $exception := void$java.lang.IllegalAccessError$$la$init$ra$$1856($r92998, $r103001);
    $exception := $r92998;
    return;
  block257:
    return;
}


implementation void$org.kohsuke.args4j.spi.MultiValueFieldSetter$doAddValue$4045($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $fakelocal_3 : int;    
var $r73023 : ref;    
var r03002 : ref;    
var r13003 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_2 : ref;    
var $ex_return : bool;    
var $r83025 : ref;    
var $z03022 : int;    
var $r123030 : ref;    
var $r63019 : ref;    
var $r53016 : ref;    
var r33007 : ref;    
var $r43013 : ref;    
var $r93026 : ref;    
var $fakelocal_1 : ref;    
var r23004 : ref;    
var $r113028 : ref;    
var $r103027 : ref;
    assume $this != $null;
    $ex_return := false;
    r03002 := $this;
    r13003 := $in_parameter__0;
    r23004 := $in_parameter__1;
    assert r03002 != $null;
    $r43013 := $heap[r03002,java.lang.reflect.Field$org.kohsuke.args4j.spi.MultiValueFieldSetter$f588];
    assert $r43013 != $null;
    call r33007, $exception := java.lang.Object$java.lang.reflect.Field$get$1371($r43013, r13003);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    if (r33007 != $null) {
        goto block261;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.ArrayList];
    $r53016 := $fakelocal_0;
    call $exception := void$java.util.ArrayList$$la$init$ra$$3003($r53016);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    r33007 := $r53016;
    assert r03002 != $null;
    $r63019 := $heap[r03002,java.lang.reflect.Field$org.kohsuke.args4j.spi.MultiValueFieldSetter$f588];
    assert $r63019 != $null;
    call $exception := void$java.lang.reflect.Field$set$1380($r63019, r13003, r33007);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
  block261:
    $z03022 := $boolToInt($heap[r33007,$type] <: java.util.List);
    if ($z03022 != 0) {
        goto block262;
    }
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := org.kohsuke.args4j.IllegalAnnotationError];
    $r73023 := $fakelocal_1;
    $r83025 := org.kohsuke.args4j.spi.Messages$org.kohsuke.args4j.spi.Messages$ILLEGAL_LIST582;
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := 1];
    $r93026 := $fakelocal_2;
    assert r03002 != $null;
    $r103027 := $heap[r03002,java.lang.reflect.Field$org.kohsuke.args4j.spi.MultiValueFieldSetter$f588];
    assert 0 < $arrSizeHeap[$r93026] && 0 >= 0;
    $refArrHeap := $refArrHeap[$r93026 := $refArrHeap[$r93026][0 := $r103027]];
    assert $r83025 != $null;
    call $r113028, $exception := java.lang.String$org.kohsuke.args4j.spi.Messages$format$3906($r83025, $r93026);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    call $exception := void$org.kohsuke.args4j.IllegalAnnotationError$$la$init$ra$$2133($r73023, $r113028);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    $exception := $r73023;
    return;
  block262:
    assert $heap[r33007,$type] <: java.util.List;
    $r123030 := r33007;
    assert $r123030 != $null;
    call $fakelocal_3, $exception := boolean$java.util.List$add$158($r123030, r23004);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    return;
}


implementation void$org.kohsuke.args4j.MapSetter$$la$init$ra$$4046($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $ex_return : bool;    
var r13034 : ref;    
var r23035 : ref;    
var r03033 : ref;
    assume $this != $null;
    $ex_return := false;
    r03033 := $this;
    r13034 := $in_parameter__0;
    r23035 := $in_parameter__1;
    call $exception := void$java.lang.Object$$la$init$ra$$38(r03033);
    assert r03033 != $null;
    $heap := $heap[r03033,java.lang.reflect.Field$org.kohsuke.args4j.MapSetter$f589 := r23035];
    assert r03033 != $null;
    $heap := $heap[r03033,java.lang.Object$org.kohsuke.args4j.MapSetter$bean590 := r13034];
    return;
}


implementation java.lang.Class$org.kohsuke.args4j.MapSetter$getType$4047($this:ref) returns ($return:ref, $exception:ref){
    
var $r13043 : ref;    
var $ex_return : bool;    
var $r23044 : ref;    
var r03041 : ref;
    assume $this != $null;
    $ex_return := false;
    r03041 := $this;
    assert r03041 != $null;
    $r13043 := $heap[r03041,java.lang.reflect.Field$org.kohsuke.args4j.MapSetter$f589];
    assert $r13043 != $null;
    call $r23044, $exception := java.lang.Class$java.lang.reflect.Field$getType$1365($r13043);
    $return := $r23044;
    return;
}


implementation boolean$org.kohsuke.args4j.MapSetter$isMultiValued$4048($this:ref) returns ($return:int, $exception:ref){
    
var $ex_return : bool;    
var r03045 : ref;
    assume $this != $null;
    $ex_return := false;
    r03045 := $this;
    $return := 0;
    return;
}


implementation void$org.kohsuke.args4j.MapSetter$addValue$4049($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $r163085 : ref;    
var r43054 : ref;    
var r63056 : ref;    
var $r223101 : ref;    
var $i13073 : int;    
var $r133077 : ref;    
var $r213098 : ref;    
var r33053 : ref;    
var $fakelocal_4 : ref;    
var r73057 : ref;    
var $fakelocal_3 : ref;    
var $r123066 : ref;    
var $r113064 : ref;    
var $fakelocal_0 : ref;    
var $r193092 : ref;    
var $r83058 : ref;    
var $r103063 : ref;    
var $r23051 : ref;    
var $r173086 : ref;    
var $i23080 : int;    
var $ex_return : bool;    
var $fakelocal_2 : ref;    
var $r143081 : ref;    
var $i03059 : int;    
var $r183090 : ref;    
var $r153083 : ref;    
var r13048 : ref;    
var r53055 : ref;    
var r03047 : ref;    
var $r93061 : ref;    
var $fakelocal_1 : ref;    
var $r203097 : ref;
    assume $this != $null;
    $ex_return := false;
    r03047 := $this;
    r13048 := $in_parameter__0;
    call $r83058, $exception := java.lang.String$java.lang.String$valueOf$128(r13048);
    assert $r83058 != $null;
    call $i03059, $exception := int$java.lang.String$indexOf$95($r83058, 61);
    if ($i03059 != -1) {
        goto block263;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.lang.RuntimeException];
    $r93061 := $fakelocal_0;
    $r23051 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$FORMAT_ERROR_FOR_MAP406;
    havoc $fakelocal_1;
    assume !$heap[$fakelocal_1,$alloc];
    $heap := $heap[$fakelocal_1,$alloc := true];
    assume $fakelocal_1 != $null;
    $heap := $heap[$fakelocal_1,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 0];
    $r103063 := $fakelocal_1;
    assert $r23051 != $null;
    call $r113064, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r23051, $r103063);
    call $exception := void$java.lang.RuntimeException$$la$init$ra$$923($r93061, $r113064);
    $exception := $r93061;
    return;
  block263:
    call $r123066, $exception := java.lang.String$java.lang.String$valueOf$128(r13048);
    assert $r123066 != $null;
    call r33053, $exception := java.lang.String$lp$$rp$$java.lang.String$split$118($r123066, $StringConst65);
    assert 0 < $arrSizeHeap[r33053] && 0 >= 0;
    r43054 := $refArrHeap[r33053][0];
    assert r33053 != $null;
    $i13073 := $arrSizeHeap[r33053];
    if ($i13073 <= 1) {
        goto block264;
    }
    assert 1 < $arrSizeHeap[r33053] && 1 >= 0;
    $r133077 := $refArrHeap[r33053][1];
    goto block265;
  block264:
    $r133077 := $null;
  block265:
    r53055 := $r133077;
    if (r43054 == $null) {
        goto block266;
    }
    $i23080 := $stringSizeHeap[r43054];
    if ($i23080 != 0) {
        goto block267;
    }
  block266:
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := java.lang.RuntimeException];
    $r143081 := $fakelocal_2;
    $r153083 := org.kohsuke.args4j.Messages$org.kohsuke.args4j.Messages$MAP_HAS_NO_KEY407;
    havoc $fakelocal_3;
    assume !$heap[$fakelocal_3,$alloc];
    $heap := $heap[$fakelocal_3,$alloc := true];
    assume $fakelocal_3 != $null;
    $heap := $heap[$fakelocal_3,$type := $arrayType(java.lang.Object)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_3 := 0];
    $r163085 := $fakelocal_3;
    assert $r153083 != $null;
    call $r173086, $exception := java.lang.String$org.kohsuke.args4j.Messages$format$2710($r153083, $r163085);
    call $exception := void$java.lang.RuntimeException$$la$init$ra$$923($r143081, $r173086);
    $exception := $r143081;
    return;
  block267:
    assert r03047 != $null;
    call $exception := void$org.kohsuke.args4j.MapSetter$addValue$4050(r03047, r43054, r53055);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block268;
    }
  block269:
    goto block270;
  block268:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r183090 := $exception;
    r63056 := $r183090;
    assert r03047 != $null;
    $r193092 := $heap[r03047,java.lang.reflect.Field$org.kohsuke.args4j.MapSetter$f589];
    assert $r193092 != $null;
    call $exception := void$java.lang.reflect.AccessibleObject$setAccessible$1540($r193092, 1);
  block271:
    assert r03047 != $null;
    call $exception := void$org.kohsuke.args4j.MapSetter$addValue$4050(r03047, r43054, r53055);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        goto block272;
    }
  block273:
    goto block270;
  block272:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r203097 := $exception;
    r73057 := $r203097;
    havoc $fakelocal_4;
    assume !$heap[$fakelocal_4,$alloc];
    $heap := $heap[$fakelocal_4,$alloc := true];
    assume $fakelocal_4 != $null;
    $heap := $heap[$fakelocal_4,$type := java.lang.IllegalAccessError];
    $r213098 := $fakelocal_4;
    assert r73057 != $null;
    call $r223101, $exception := java.lang.String$java.lang.Throwable$getMessage$16(r73057);
    call $exception := void$java.lang.IllegalAccessError$$la$init$ra$$1856($r213098, $r223101);
    $exception := $r213098;
    return;
  block270:
    return;
}


implementation void$org.kohsuke.args4j.MapSetter$addValue$4050($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $fakelocal_1 : ref;    
var $r93119 : ref;    
var r23104 : ref;    
var r13103 : ref;    
var $r63111 : ref;    
var $r43109 : ref;    
var $fakelocal_0 : ref;    
var $r83117 : ref;    
var r33107 : ref;    
var r03102 : ref;    
var $r53110 : ref;    
var $ex_return : bool;    
var $r73114 : ref;
    assume $this != $null;
    $ex_return := false;
    r03102 := $this;
    r13103 := $in_parameter__0;
    r23104 := $in_parameter__1;
    assert r03102 != $null;
    $r43109 := $heap[r03102,java.lang.reflect.Field$org.kohsuke.args4j.MapSetter$f589];
    assert r03102 != $null;
    $r53110 := $heap[r03102,java.lang.Object$org.kohsuke.args4j.MapSetter$bean590];
    assert $r43109 != $null;
    call $r63111, $exception := java.lang.Object$java.lang.reflect.Field$get$1371($r43109, $r53110);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    assert $heap[$r63111,$type] <: java.util.Map;
    r33107 := $r63111;
    if (r33107 != $null) {
        goto block274;
    }
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.HashMap];
    $r73114 := $fakelocal_0;
    call $exception := void$java.util.HashMap$$la$init$ra$$2960($r73114);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    r33107 := $r73114;
    assert r03102 != $null;
    $r83117 := $heap[r03102,java.lang.reflect.Field$org.kohsuke.args4j.MapSetter$f589];
    assert r03102 != $null;
    $r93119 := $heap[r03102,java.lang.Object$org.kohsuke.args4j.MapSetter$bean590];
    assert $r83117 != $null;
    call $exception := void$java.lang.reflect.Field$set$1380($r83117, $r93119, r33107);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
  block274:
    assert r33107 != $null;
    call $fakelocal_1, $exception := java.lang.Object$java.util.Map$put$1161(r33107, r13103, r23104);
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalArgumentException) {
        return;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.IllegalAccessException) {
        return;
    }
    return;
}


implementation void$org.kohsuke.args4j.spi.StringArrayOptionHandler$$la$init$ra$$4054($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref){
    
var r03124 : ref;    
var r23126 : ref;    
var $ex_return : bool;    
var r33127 : ref;    
var r13125 : ref;
    assume $this != $null;
    $ex_return := false;
    r03124 := $this;
    r13125 := $in_parameter__0;
    r23126 := $in_parameter__1;
    r33127 := $in_parameter__2;
    call $exception := void$org.kohsuke.args4j.spi.OptionHandler$$la$init$ra$$2432(r03124, r13125, r23126, r33127);
    return;
}


implementation java.lang.String$org.kohsuke.args4j.spi.StringArrayOptionHandler$getDefaultMetaVariable$4055($this:ref) returns ($return:ref, $exception:ref){
    
var $ex_return : bool;    
var r03132 : ref;
    assume $this != $null;
    $ex_return := false;
    r03132 := $this;
    $return := $StringConst66;
    return;
}


implementation int$org.kohsuke.args4j.spi.StringArrayOptionHandler$parseArguments$4056($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var $fakelocal_2 : ref;    
var i03137 : int;    
var $r63146 : ref;    
var r93171 : ref;    
var $ex_return : bool;    
var r53144 : ref;    
var r03134 : ref;    
var $i33174 : int;    
var r43141 : ref;    
var r23139 : ref;    
var i23143 : int;    
var $fakelocal_1 : int;    
var $r113176 : ref;    
var i13142 : int;    
var r33140 : ref;    
var r13135 : ref;    
var r83157 : ref;    
var $r73150 : ref;    
var $fakelocal_0 : ref;    
var $r103175 : ref;    
var $z03153 : int;
    assume $this != $null;
    $ex_return := false;
    r03134 := $this;
    r13135 := $in_parameter__0;
    i03137 := 0;
    havoc $fakelocal_0;
    assume !$heap[$fakelocal_0,$alloc];
    $heap := $heap[$fakelocal_0,$alloc := true];
    assume $fakelocal_0 != $null;
    $heap := $heap[$fakelocal_0,$type := java.util.ArrayList];
    $r63146 := $fakelocal_0;
    call $exception := void$java.util.ArrayList$$la$init$ra$$3003($r63146);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    r23139 := $r63146;
  block275:
    assert r13135 != $null;
    call r33140, $exception := java.lang.String$org.kohsuke.args4j.spi.Parameters$getParameter$3057(r13135, i03137);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        goto block276;
    }
  block277:
    goto block278;
  block276:
    assert $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r73150 := $exception;
    r43141 := $r73150;
    goto block279;
  block278:
    assert r33140 != $null;
    call $z03153, $exception := boolean$java.lang.String$startsWith$92(r33140, $StringConst14);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    if ($z03153 == 0) {
        goto block280;
    }
    goto block279;
  block280:
    assert r33140 != $null;
    call r83157, $exception := java.lang.String$lp$$rp$$java.lang.String$split$118(r33140, $StringConst16);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert r83157 != $null;
    i13142 := $arrSizeHeap[r83157];
    i23143 := 0;
  block281:
    if (i23143 >= i13142) {
        goto block282;
    }
    assert i23143 < $arrSizeHeap[r83157] && i23143 >= 0;
    r53144 := $refArrHeap[r83157][i23143];
    assert r23139 != $null;
    call $fakelocal_1, $exception := boolean$java.util.ArrayList$add$3022(r23139, r53144);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    i23143 := i23143 + 1;
    goto block281;
  block282:
    i03137 := i03137 + 1;
    goto block275;
  block279:
    assert r03134 != $null;
    r93171 := $heap[r03134,org.kohsuke.args4j.spi.Setter$org.kohsuke.args4j.spi.OptionHandler$setter340];
    assert r23139 != $null;
    call $i33174, $exception := int$java.util.ArrayList$size$3011(r23139);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    havoc $fakelocal_2;
    assume !$heap[$fakelocal_2,$alloc];
    $heap := $heap[$fakelocal_2,$alloc := true];
    assume $fakelocal_2 != $null;
    $heap := $heap[$fakelocal_2,$type := $arrayType(java.lang.String)];
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := $i33174];
    $r103175 := $fakelocal_2;
    assert r23139 != $null;
    call $r113176, $exception := java.lang.Object$lp$$rp$$java.util.ArrayList$toArray$3018(r23139, $r103175);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    assert r93171 != $null;
    call $exception := void$org.kohsuke.args4j.spi.Setter$addValue$2503(r93171, $r113176);
    if ($exception != $null && $heap[$exception,$type] <: org.kohsuke.args4j.CmdLineException) {
        return;
    }
    $return := i03137;
    return;
}


