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
const { :sourceloc "AbstractWriter.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractWriter : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MinimalHTMLWriter.java",-1,-1,-1,-1 } unique javax.swing.text.html.MinimalHTMLWriter : javaType extends  unique javax.swing.text.AbstractWriter complete;
const { :sourceloc "CsdMinimalHtmlWriter.java",-1,-1,-1,-1 } unique terpword.CsdMinimalHtmlWriter : javaType extends  unique javax.swing.text.html.MinimalHTMLWriter complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "CsdRtfConverter.java",-1,-1,-1,-1 } unique terpword.CsdRtfConverter : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Serializable.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Comparable.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "CharSequence.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  unique java.lang.Object complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.io.Serializable, unique java.lang.Comparable, unique java.lang.Object, unique java.lang.CharSequence complete;
const { :sourceloc "Cloneable.java",-1,-1,-1,-1 } unique java.lang.Cloneable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "EditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.EditorKit : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique java.lang.Cloneable complete;
const { :sourceloc "DefaultEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.DefaultEditorKit : javaType extends  unique javax.swing.text.EditorKit complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit : javaType extends  unique javax.swing.text.DefaultEditorKit complete;
const { :sourceloc "RTFEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.rtf.RTFEditorKit : javaType extends  unique javax.swing.text.StyledEditorKit complete;
const { :sourceloc "Throwable.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "Exception.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "AbstractDocument.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractDocument$AttributeContext : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StyleContext.java",-1,-1,-1,-1 } unique javax.swing.text.StyleContext : javaType extends  unique javax.swing.text.AbstractDocument$AttributeContext, unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "Document.java",-1,-1,-1,-1 } unique javax.swing.text.Document : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AbstractDocument.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractDocument : javaType extends  unique java.io.Serializable, unique javax.swing.text.Document, unique java.lang.Object complete;
const { :sourceloc "StyledDocument.java",-1,-1,-1,-1 } unique javax.swing.text.StyledDocument : javaType extends  unique javax.swing.text.Document, unique java.lang.Object complete;
const { :sourceloc "DefaultStyledDocument.java",-1,-1,-1,-1 } unique javax.swing.text.DefaultStyledDocument : javaType extends  unique javax.swing.text.StyledDocument, unique javax.swing.text.AbstractDocument complete;
const { :sourceloc "Readable.java",-1,-1,-1,-1 } unique java.lang.Readable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AutoCloseable.java",-1,-1,-1,-1 } unique java.lang.AutoCloseable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Closeable.java",-1,-1,-1,-1 } unique java.io.Closeable : javaType extends  unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :sourceloc "Reader.java",-1,-1,-1,-1 } unique java.io.Reader : javaType extends  unique java.io.Closeable, unique java.lang.Readable, unique java.lang.Object complete;
const { :sourceloc "StringReader.java",-1,-1,-1,-1 } unique java.io.StringReader : javaType extends  unique java.io.Reader complete;
const { :sourceloc "RuntimeException.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "NullPointerException.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Appendable.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Flushable.java",-1,-1,-1,-1 } unique java.io.Flushable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Writer.java",-1,-1,-1,-1 } unique java.io.Writer : javaType extends  unique java.io.Closeable, unique java.lang.Object, unique java.io.Flushable, unique java.lang.Appendable complete;
const { :sourceloc "StringWriter.java",-1,-1,-1,-1 } unique java.io.StringWriter : javaType extends  unique java.io.Writer complete;
const unique $StringConst1 : ref extends  complete;
const unique $StringConst2 : ref extends  complete;
const { :sourceloc "AbstractStringBuilder.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, unique java.lang.CharSequence, unique java.lang.Appendable complete;
const { :sourceloc "StringBuffer.java",-1,-1,-1,-1 } unique java.lang.StringBuffer : javaType extends  unique java.lang.AbstractStringBuilder, unique java.io.Serializable, unique java.lang.CharSequence complete;
const unique $StringConst3 : ref extends  complete;
const { :sourceloc "EventListener.java",-1,-1,-1,-1 } unique java.util.EventListener : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ActionListener.java",-1,-1,-1,-1 } unique java.awt.event.ActionListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "Action.java",-1,-1,-1,-1 } unique javax.swing.Action : javaType extends  unique java.awt.event.ActionListener, unique java.lang.Object complete;
const { :sourceloc "AbstractAction.java",-1,-1,-1,-1 } unique javax.swing.AbstractAction : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique javax.swing.Action, unique java.lang.Cloneable complete;
const { :sourceloc "EkitCore.java",-1,-1,-1,-1 } unique terpword.EkitCore$UndoAction : javaType extends  unique javax.swing.AbstractAction complete;
const unique $StringConst4 : ref extends  complete;
const { :sourceloc "UndoableEdit.java",-1,-1,-1,-1 } unique javax.swing.undo.UndoableEdit : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AbstractUndoableEdit.java",-1,-1,-1,-1 } unique javax.swing.undo.AbstractUndoableEdit : javaType extends  unique java.io.Serializable, unique javax.swing.undo.UndoableEdit, unique java.lang.Object complete;
const { :sourceloc "CompoundEdit.java",-1,-1,-1,-1 } unique javax.swing.undo.CompoundEdit : javaType extends  unique javax.swing.undo.AbstractUndoableEdit complete;
const { :sourceloc "UndoableEditListener.java",-1,-1,-1,-1 } unique javax.swing.event.UndoableEditListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "UndoManager.java",-1,-1,-1,-1 } unique javax.swing.undo.UndoManager : javaType extends  unique javax.swing.undo.CompoundEdit, unique javax.swing.event.UndoableEditListener complete;
const { :sourceloc "CannotUndoException.java",-1,-1,-1,-1 } unique javax.swing.undo.CannotUndoException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "EkitCore.java",-1,-1,-1,-1 } unique terpword.EkitCore$RedoAction : javaType extends  unique javax.swing.AbstractAction complete;
const unique $StringConst5 : ref extends  complete;
const { :sourceloc "CaretListener.java",-1,-1,-1,-1 } unique javax.swing.event.CaretListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "EkitCore.java",-1,-1,-1,-1 } unique terpword.EkitCore$1Anonymous1 : javaType extends  unique javax.swing.event.CaretListener, unique java.lang.Object complete;
const { :sourceloc "ImageObserver.java",-1,-1,-1,-1 } unique java.awt.image.ImageObserver : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MenuContainer.java",-1,-1,-1,-1 } unique java.awt.MenuContainer : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Component.java",-1,-1,-1,-1 } unique java.awt.Component : javaType extends  unique java.awt.MenuContainer, unique java.awt.image.ImageObserver, unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "Container.java",-1,-1,-1,-1 } unique java.awt.Container : javaType extends  unique java.awt.Component complete;
const { :sourceloc "TransferHandler.java",-1,-1,-1,-1 } unique javax.swing.TransferHandler$HasGetTransferHandler : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JComponent.java",-1,-1,-1,-1 } unique javax.swing.JComponent : javaType extends  unique java.io.Serializable, unique java.awt.Container, unique javax.swing.TransferHandler$HasGetTransferHandler complete;
const { :sourceloc "Accessible.java",-1,-1,-1,-1 } unique javax.accessibility.Accessible : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JPanel.java",-1,-1,-1,-1 } unique javax.swing.JPanel : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const { :sourceloc "KeyListener.java",-1,-1,-1,-1 } unique java.awt.event.KeyListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "FocusListener.java",-1,-1,-1,-1 } unique java.awt.event.FocusListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "DocumentListener.java",-1,-1,-1,-1 } unique javax.swing.event.DocumentListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "EkitCore.java",-1,-1,-1,-1 } unique terpword.EkitCore : javaType extends  unique javax.swing.event.DocumentListener, unique java.awt.event.ActionListener, unique javax.swing.JPanel, unique java.awt.event.KeyListener, unique java.awt.event.FocusListener complete;
const { :sourceloc "EkitCore.java",-1,-1,-1,-1 } unique terpword.EkitCore$2Anonymous0 : javaType extends  unique javax.swing.event.CaretListener, unique java.lang.Object complete;
const { :sourceloc "EkitCore.java",-1,-1,-1,-1 } unique terpword.EkitCore$CustomUndoableEditListener : javaType extends  unique java.lang.Object, unique javax.swing.event.UndoableEditListener complete;
const { :sourceloc "EventObject.java",-1,-1,-1,-1 } unique java.util.EventObject : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "UndoableEditEvent.java",-1,-1,-1,-1 } unique javax.swing.event.UndoableEditEvent : javaType extends  unique java.util.EventObject complete;
const { :sourceloc "PropertyChangeListener.java",-1,-1,-1,-1 } unique java.beans.PropertyChangeListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "SimpleInfoDialog.java",-1,-1,-1,-1 } unique terpword.SimpleInfoDialog$1Anonymous0 : javaType extends  unique java.beans.PropertyChangeListener, unique java.lang.Object complete;
const { :sourceloc "PropertyChangeEvent.java",-1,-1,-1,-1 } unique java.beans.PropertyChangeEvent : javaType extends  unique java.util.EventObject complete;
const { :sourceloc "Window.java",-1,-1,-1,-1 } unique java.awt.Window : javaType extends  unique javax.accessibility.Accessible, unique java.awt.Container complete;
const { :sourceloc "Dialog.java",-1,-1,-1,-1 } unique java.awt.Dialog : javaType extends  unique java.awt.Window complete;
const { :sourceloc "WindowConstants.java",-1,-1,-1,-1 } unique javax.swing.WindowConstants : javaType extends  unique java.lang.Object complete;
const { :sourceloc "RootPaneContainer.java",-1,-1,-1,-1 } unique javax.swing.RootPaneContainer : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JDialog.java",-1,-1,-1,-1 } unique javax.swing.JDialog : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.WindowConstants, unique javax.swing.TransferHandler$HasGetTransferHandler, unique javax.swing.RootPaneContainer, unique java.awt.Dialog complete;
const { :sourceloc "SimpleInfoDialog.java",-1,-1,-1,-1 } unique terpword.SimpleInfoDialog : javaType extends  unique javax.swing.JDialog complete;
const { :sourceloc "JOptionPane.java",-1,-1,-1,-1 } unique javax.swing.JOptionPane : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const unique $StringConst6 : ref extends  complete;
const unique $StringConst7 : ref extends  complete;
const { :sourceloc "TextAction.java",-1,-1,-1,-1 } unique javax.swing.text.TextAction : javaType extends  unique javax.swing.AbstractAction complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$StyledTextAction : javaType extends  unique javax.swing.text.TextAction complete;
const { :sourceloc "CustomAction.java",-1,-1,-1,-1 } unique terpword.CustomAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const { :sourceloc "Dictionary.java",-1,-1,-1,-1 } unique java.util.Dictionary : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Map.java",-1,-1,-1,-1 } unique java.util.Map : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Hashtable.java",-1,-1,-1,-1 } unique java.util.Hashtable : javaType extends  unique java.util.Dictionary, unique java.io.Serializable, unique java.util.Map, unique java.lang.Cloneable complete;
const { :sourceloc "Scrollable.java",-1,-1,-1,-1 } unique javax.swing.Scrollable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JTextComponent.java",-1,-1,-1,-1 } unique javax.swing.text.JTextComponent : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.Scrollable, unique javax.swing.JComponent complete;
const { :sourceloc "JEditorPane.java",-1,-1,-1,-1 } unique javax.swing.JEditorPane : javaType extends  unique javax.swing.text.JTextComponent complete;
const { :sourceloc "JTextPane.java",-1,-1,-1,-1 } unique javax.swing.JTextPane : javaType extends  unique javax.swing.JEditorPane complete;
const { :sourceloc "Frame.java",-1,-1,-1,-1 } unique java.awt.Frame : javaType extends  unique java.awt.MenuContainer, unique java.awt.Window complete;
const unique $StringConst8 : ref extends  complete;
const unique $StringConst9 : ref extends  complete;
const { :sourceloc "HTML.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTML$Tag : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AttributeSet.java",-1,-1,-1,-1 } unique javax.swing.text.AttributeSet : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MutableAttributeSet.java",-1,-1,-1,-1 } unique javax.swing.text.MutableAttributeSet : javaType extends  unique javax.swing.text.AttributeSet, unique java.lang.Object complete;
const { :sourceloc "SimpleAttributeSet.java",-1,-1,-1,-1 } unique javax.swing.text.SimpleAttributeSet : javaType extends  unique java.io.Serializable, unique javax.swing.text.MutableAttributeSet, unique java.lang.Object, unique java.lang.Cloneable complete;
const { :sourceloc "Enumeration.java",-1,-1,-1,-1 } unique java.util.Enumeration : javaType extends  unique java.lang.Object complete;
const unique $StringConst10 : ref extends  complete;
const { :sourceloc "UserInputAnchorDialog.java",-1,-1,-1,-1 } unique terpword.UserInputAnchorDialog : javaType extends  unique java.awt.event.ActionListener, unique javax.swing.JDialog complete;
const unique $StringConst11 : ref extends  complete;
const unique $StringConst12 : ref extends  complete;
const { :sourceloc "JColorChooser.java",-1,-1,-1,-1 } unique javax.swing.JColorChooser : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const unique $StringConst13 : ref extends  complete;
const { :sourceloc "Transparency.java",-1,-1,-1,-1 } unique java.awt.Transparency : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Paint.java",-1,-1,-1,-1 } unique java.awt.Paint : javaType extends  unique java.awt.Transparency, unique java.lang.Object complete;
const { :sourceloc "Color.java",-1,-1,-1,-1 } unique java.awt.Color : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique java.awt.Paint complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$ForegroundAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const unique $StringConst14 : ref extends  complete;
const unique $StringConst15 : ref extends  complete;
const unique $StringConst16 : ref extends  complete;
const { :sourceloc "JFrame.java",-1,-1,-1,-1 } unique javax.swing.JFrame : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.WindowConstants, unique java.awt.Frame, unique javax.swing.TransferHandler$HasGetTransferHandler, unique javax.swing.RootPaneContainer complete;
const { :sourceloc "Ekit.java",-1,-1,-1,-1 } unique terpword.Ekit : javaType extends  unique javax.swing.JFrame complete;
const { :sourceloc "LayoutManager.java",-1,-1,-1,-1 } unique java.awt.LayoutManager : javaType extends  unique java.lang.Object complete;
const { :sourceloc "LayoutManager2.java",-1,-1,-1,-1 } unique java.awt.LayoutManager2 : javaType extends  unique java.awt.LayoutManager, unique java.lang.Object complete;
const { :sourceloc "GridBagLayout.java",-1,-1,-1,-1 } unique java.awt.GridBagLayout : javaType extends  unique java.awt.LayoutManager2, unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "GridBagConstraints.java",-1,-1,-1,-1 } unique java.awt.GridBagConstraints : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique java.lang.Cloneable complete;
const unique $DoubleConst0 : int extends  complete;
const unique $DoubleConst1 : int extends  complete;
const { :sourceloc "SwingConstants.java",-1,-1,-1,-1 } unique javax.swing.SwingConstants : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JToolBar.java",-1,-1,-1,-1 } unique javax.swing.JToolBar : javaType extends  unique javax.swing.SwingConstants, unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const { :sourceloc "BorderLayout.java",-1,-1,-1,-1 } unique java.awt.BorderLayout : javaType extends  unique java.awt.LayoutManager2, unique java.io.Serializable, unique java.lang.Object complete;
const unique $StringConst17 : ref extends  complete;
const unique $StringConst18 : ref extends  complete;
const { :sourceloc "MenuElement.java",-1,-1,-1,-1 } unique javax.swing.MenuElement : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JMenuBar.java",-1,-1,-1,-1 } unique javax.swing.JMenuBar : javaType extends  unique javax.swing.MenuElement, unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const { :sourceloc "AWTEvent.java",-1,-1,-1,-1 } unique java.awt.AWTEvent : javaType extends  unique java.util.EventObject complete;
const unique $StringConst19 : ref extends  complete;
const { :sourceloc "File.java",-1,-1,-1,-1 } unique java.io.File : javaType extends  unique java.io.Serializable, unique java.lang.Comparable, unique java.lang.Object complete;
const { :sourceloc "Image.java",-1,-1,-1,-1 } unique java.awt.Image : javaType extends  unique java.lang.Object complete;
const { :sourceloc "RenderedImage.java",-1,-1,-1,-1 } unique java.awt.image.RenderedImage : javaType extends  unique java.lang.Object complete;
const { :sourceloc "WritableRenderedImage.java",-1,-1,-1,-1 } unique java.awt.image.WritableRenderedImage : javaType extends  unique java.awt.image.RenderedImage, unique java.lang.Object complete;
const { :sourceloc "BufferedImage.java",-1,-1,-1,-1 } unique java.awt.image.BufferedImage : javaType extends  unique java.awt.image.WritableRenderedImage, unique java.awt.Transparency, unique java.awt.Image complete;
const { :sourceloc "Graphics.java",-1,-1,-1,-1 } unique java.awt.Graphics : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Graphics2D.java",-1,-1,-1,-1 } unique java.awt.Graphics2D : javaType extends  unique java.awt.Graphics complete;
const { :sourceloc "Font.java",-1,-1,-1,-1 } unique java.awt.Font : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const unique $StringConst20 : ref extends  complete;
const unique $StringConst21 : ref extends  complete;
const { :sourceloc "OutputStream.java",-1,-1,-1,-1 } unique java.io.OutputStream : javaType extends  unique java.io.Closeable, unique java.lang.Object, unique java.io.Flushable complete;
const { :sourceloc "FilterOutputStream.java",-1,-1,-1,-1 } unique java.io.FilterOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "PrintStream.java",-1,-1,-1,-1 } unique java.io.PrintStream : javaType extends  unique java.io.Closeable, unique java.io.FilterOutputStream, unique java.lang.Appendable complete;
const { :sourceloc "BufferedReader.java",-1,-1,-1,-1 } unique java.io.BufferedReader : javaType extends  unique java.io.Reader complete;
const { :sourceloc "InputStreamReader.java",-1,-1,-1,-1 } unique java.io.InputStreamReader : javaType extends  unique java.io.Reader complete;
const { :sourceloc "FileReader.java",-1,-1,-1,-1 } unique java.io.FileReader : javaType extends  unique java.io.InputStreamReader complete;
const { :sourceloc "IOException.java",-1,-1,-1,-1 } unique java.io.IOException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "FileNotFoundException.java",-1,-1,-1,-1 } unique java.io.FileNotFoundException : javaType extends  unique java.io.IOException complete;
const unique $StringConst22 : ref extends  complete;
const unique $StringConst23 : ref extends  complete;
const unique $StringConst24 : ref extends  complete;
const unique $StringConst25 : ref extends  complete;
const unique $StringConst26 : ref extends  complete;
const unique $StringConst27 : ref extends  complete;
const unique $StringConst28 : ref extends  complete;
const unique $StringConst29 : ref extends  complete;
const unique $StringConst30 : ref extends  complete;
const unique $StringConst31 : ref extends  complete;
const unique $StringConst32 : ref extends  complete;
const { :sourceloc "URL.java",-1,-1,-1,-1 } unique java.net.URL : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "MalformedURLException.java",-1,-1,-1,-1 } unique java.net.MalformedURLException : javaType extends  unique java.io.IOException complete;
const unique $StringConst33 : ref extends  complete;
const { :sourceloc "ListSelectionListener.java",-1,-1,-1,-1 } unique javax.swing.event.ListSelectionListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "FileDialog.java",-1,-1,-1,-1 } unique terpword.FileDialog$1Anonymous0 : javaType extends  unique javax.swing.event.ListSelectionListener, unique java.lang.Object complete;
const { :sourceloc "ListSelectionEvent.java",-1,-1,-1,-1 } unique javax.swing.event.ListSelectionEvent : javaType extends  unique java.util.EventObject complete;
const { :sourceloc "FileDialog.java",-1,-1,-1,-1 } unique terpword.FileDialog : javaType extends  unique java.awt.event.ActionListener, unique javax.swing.JDialog complete;
const { :sourceloc "JList.java",-1,-1,-1,-1 } unique javax.swing.JList : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.Scrollable, unique javax.swing.JComponent complete;
const { :sourceloc "ListSelectionModel.java",-1,-1,-1,-1 } unique javax.swing.ListSelectionModel : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ViewFactory.java",-1,-1,-1,-1 } unique javax.swing.text.ViewFactory : javaType extends  unique java.lang.Object complete;
const { :sourceloc "HTMLEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTMLEditorKit$HTMLFactory : javaType extends  unique javax.swing.text.ViewFactory, unique java.lang.Object complete;
const { :sourceloc "ExtendedHTMLEditorKit.java",-1,-1,-1,-1 } unique terpword.ExtendedHTMLEditorKit$HTMLFactoryExtended : javaType extends  unique javax.swing.text.ViewFactory, unique javax.swing.text.html.HTMLEditorKit$HTMLFactory complete;
const { :sourceloc "View.java",-1,-1,-1,-1 } unique javax.swing.text.View : javaType extends  unique javax.swing.SwingConstants, unique java.lang.Object complete;
const { :sourceloc "Element.java",-1,-1,-1,-1 } unique javax.swing.text.Element : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MouseListener.java",-1,-1,-1,-1 } unique java.awt.event.MouseListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "MouseMotionListener.java",-1,-1,-1,-1 } unique java.awt.event.MouseMotionListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "RelativeImageView.java",-1,-1,-1,-1 } unique terpword.RelativeImageView : javaType extends  unique javax.swing.text.View, unique java.awt.image.ImageObserver, unique java.awt.event.MouseListener, unique java.awt.event.MouseMotionListener complete;
const { :sourceloc "HelpBrowser.java",-1,-1,-1,-1 } unique terpword.HelpBrowser$1Anonymous1 : javaType extends  unique java.awt.event.ActionListener, unique java.lang.Object complete;
const { :sourceloc "ActionEvent.java",-1,-1,-1,-1 } unique java.awt.event.ActionEvent : javaType extends  unique java.awt.AWTEvent complete;
const unique $StringConst34 : ref extends  complete;
const { :sourceloc "JLabel.java",-1,-1,-1,-1 } unique javax.swing.JLabel : javaType extends  unique javax.swing.SwingConstants, unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const { :sourceloc "WindowListener.java",-1,-1,-1,-1 } unique java.awt.event.WindowListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "WindowStateListener.java",-1,-1,-1,-1 } unique java.awt.event.WindowStateListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "WindowFocusListener.java",-1,-1,-1,-1 } unique java.awt.event.WindowFocusListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "WindowAdapter.java",-1,-1,-1,-1 } unique java.awt.event.WindowAdapter : javaType extends  unique java.awt.event.WindowFocusListener, unique java.awt.event.WindowListener, unique java.awt.event.WindowStateListener, unique java.lang.Object complete;
const { :sourceloc "HelpBrowser.java",-1,-1,-1,-1 } unique terpword.HelpBrowser$2Anonymous0 : javaType extends  unique java.awt.event.WindowAdapter complete;
const { :sourceloc "ComponentEvent.java",-1,-1,-1,-1 } unique java.awt.event.ComponentEvent : javaType extends  unique java.awt.AWTEvent complete;
const { :sourceloc "WindowEvent.java",-1,-1,-1,-1 } unique java.awt.event.WindowEvent : javaType extends  unique java.awt.event.ComponentEvent complete;
const { :sourceloc "PropertiesDialog.java",-1,-1,-1,-1 } unique terpword.PropertiesDialog$1Anonymous0 : javaType extends  unique java.beans.PropertyChangeListener, unique java.lang.Object complete;
const { :sourceloc "PropertiesDialog.java",-1,-1,-1,-1 } unique terpword.PropertiesDialog : javaType extends  unique javax.swing.JDialog complete;
const { :sourceloc "SearchDialog.java",-1,-1,-1,-1 } unique terpword.SearchDialog$1Anonymous1 : javaType extends  unique java.beans.PropertyChangeListener, unique java.lang.Object complete;
const { :sourceloc "SearchDialog.java",-1,-1,-1,-1 } unique terpword.SearchDialog : javaType extends  unique javax.swing.JDialog complete;
const { :sourceloc "ItemSelectable.java",-1,-1,-1,-1 } unique java.awt.ItemSelectable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AbstractButton.java",-1,-1,-1,-1 } unique javax.swing.AbstractButton : javaType extends  unique javax.swing.SwingConstants, unique java.awt.ItemSelectable, unique javax.swing.JComponent complete;
const { :sourceloc "SearchDialog.java",-1,-1,-1,-1 } unique terpword.SearchDialog$2Anonymous0 : javaType extends  unique java.awt.event.WindowAdapter complete;
const { :sourceloc "Number.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "Integer.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Number, unique java.lang.Comparable complete;
const { :sourceloc "Iterable.java",-1,-1,-1,-1 } unique java.lang.Iterable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Collection.java",-1,-1,-1,-1 } unique java.util.Collection : javaType extends  unique java.lang.Iterable, unique java.lang.Object complete;
const { :sourceloc "AbstractCollection.java",-1,-1,-1,-1 } unique java.util.AbstractCollection : javaType extends  unique java.util.Collection, unique java.lang.Object complete;
const { :sourceloc "List.java",-1,-1,-1,-1 } unique java.util.List : javaType extends  unique java.util.Collection, unique java.lang.Object complete;
const { :sourceloc "AbstractList.java",-1,-1,-1,-1 } unique java.util.AbstractList : javaType extends  unique java.util.List, unique java.util.AbstractCollection complete;
const { :sourceloc "RandomAccess.java",-1,-1,-1,-1 } unique java.util.RandomAccess : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Vector.java",-1,-1,-1,-1 } unique java.util.Vector : javaType extends  unique java.io.Serializable, unique java.util.List, unique java.util.RandomAccess, unique java.lang.Cloneable, unique java.util.AbstractList complete;
const { :sourceloc "Stack.java",-1,-1,-1,-1 } unique java.util.Stack : javaType extends  unique java.util.Vector complete;
const { :sourceloc "HTMLUtilities.java",-1,-1,-1,-1 } unique terpword.HTMLUtilities : javaType extends  unique java.lang.Object complete;
const unique $StringConst35 : ref extends  complete;
const { :sourceloc "System.java",-1,-1,-1,-1 } unique java.lang.System : javaType extends  unique java.lang.Object complete;
const { :sourceloc "SecurityManager.java",-1,-1,-1,-1 } unique java.lang.SecurityManager : javaType extends  unique java.lang.Object complete;
const { :sourceloc "SecurityException.java",-1,-1,-1,-1 } unique java.lang.SecurityException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Toolkit.java",-1,-1,-1,-1 } unique java.awt.Toolkit : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Clipboard.java",-1,-1,-1,-1 } unique java.awt.datatransfer.Clipboard : javaType extends  unique java.lang.Object complete;
const unique $StringConst36 : ref extends  complete;
const { :sourceloc "ResourceBundle.java",-1,-1,-1,-1 } unique java.util.ResourceBundle : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MissingResourceException.java",-1,-1,-1,-1 } unique java.util.MissingResourceException : javaType extends  unique java.lang.RuntimeException complete;
const unique $StringConst37 : ref extends  complete;
const { :sourceloc "HTMLEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTMLEditorKit : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.text.StyledEditorKit complete;
const { :sourceloc "ExtendedHTMLEditorKit.java",-1,-1,-1,-1 } unique terpword.ExtendedHTMLEditorKit : javaType extends  unique javax.swing.text.html.HTMLEditorKit complete;
const { :sourceloc "HTMLDocument.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTMLDocument : javaType extends  unique javax.swing.text.DefaultStyledDocument complete;
const { :sourceloc "ExtendedHTMLDocument.java",-1,-1,-1,-1 } unique terpword.ExtendedHTMLDocument : javaType extends  unique javax.swing.text.html.HTMLDocument complete;
const { :sourceloc "StyleSheet.java",-1,-1,-1,-1 } unique javax.swing.text.html.StyleSheet : javaType extends  unique javax.swing.text.StyleContext complete;
const { :sourceloc "Cursor.java",-1,-1,-1,-1 } unique java.awt.Cursor : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "Insets.java",-1,-1,-1,-1 } unique java.awt.Insets : javaType extends  unique java.io.Serializable, unique java.lang.Object, unique java.lang.Cloneable complete;
const { :sourceloc "ClassCastException.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "InputStream.java",-1,-1,-1,-1 } unique java.io.InputStream : javaType extends  unique java.io.Closeable, unique java.lang.Object complete;
const unique $StringConst38 : ref extends  complete;
const unique $StringConst39 : ref extends  complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$BoldAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$ItalicAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$UnderlineAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const { :sourceloc "FormatAction.java",-1,-1,-1,-1 } unique terpword.FormatAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const unique $StringConst40 : ref extends  complete;
const unique $StringConst41 : ref extends  complete;
const unique $StringConst42 : ref extends  complete;
const { :sourceloc "HTMLEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTMLEditorKit$HTMLTextAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const { :sourceloc "HTMLEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTMLEditorKit$InsertHTMLTextAction : javaType extends  unique javax.swing.text.html.HTMLEditorKit$HTMLTextAction complete;
const { :sourceloc "ListAutomationAction.java",-1,-1,-1,-1 } unique terpword.ListAutomationAction : javaType extends  unique javax.swing.text.html.HTMLEditorKit$InsertHTMLTextAction complete;
const unique $StringConst43 : ref extends  complete;
const unique $StringConst44 : ref extends  complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$FontFamilyAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const { :sourceloc "SetFontFamilyAction.java",-1,-1,-1,-1 } unique terpword.SetFontFamilyAction : javaType extends  unique javax.swing.text.StyledEditorKit$FontFamilyAction complete;
const unique $StringConst45 : ref extends  complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$AlignmentAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const unique $StringConst46 : ref extends  complete;
const unique $StringConst47 : ref extends  complete;
const unique $StringConst48 : ref extends  complete;
const unique $StringConst49 : ref extends  complete;
const unique $StringConst50 : ref extends  complete;
const { :sourceloc "JMenuItem.java",-1,-1,-1,-1 } unique javax.swing.JMenuItem : javaType extends  unique javax.swing.MenuElement, unique javax.accessibility.Accessible, unique javax.swing.AbstractButton complete;
const { :sourceloc "JMenu.java",-1,-1,-1,-1 } unique javax.swing.JMenu : javaType extends  unique javax.swing.MenuElement, unique javax.accessibility.Accessible, unique javax.swing.JMenuItem complete;
const unique $StringConst51 : ref extends  complete;
const unique $StringConst52 : ref extends  complete;
const unique $StringConst53 : ref extends  complete;
const unique $StringConst54 : ref extends  complete;
const { :sourceloc "AWTKeyStroke.java",-1,-1,-1,-1 } unique java.awt.AWTKeyStroke : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "KeyStroke.java",-1,-1,-1,-1 } unique javax.swing.KeyStroke : javaType extends  unique java.awt.AWTKeyStroke complete;
const unique $StringConst55 : ref extends  complete;
const { :sourceloc "Icon.java",-1,-1,-1,-1 } unique javax.swing.Icon : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ImageIcon.java",-1,-1,-1,-1 } unique javax.swing.ImageIcon : javaType extends  unique javax.accessibility.Accessible, unique java.io.Serializable, unique java.lang.Object, unique javax.swing.Icon complete;
const unique $StringConst56 : ref extends  complete;
const unique $StringConst57 : ref extends  complete;
const unique $StringConst58 : ref extends  complete;
const unique $StringConst59 : ref extends  complete;
const unique $StringConst60 : ref extends  complete;
const unique $StringConst61 : ref extends  complete;
const unique $StringConst62 : ref extends  complete;
const unique $StringConst63 : ref extends  complete;
const unique $StringConst64 : ref extends  complete;
const unique $StringConst65 : ref extends  complete;
const unique $StringConst66 : ref extends  complete;
const unique $StringConst67 : ref extends  complete;
const unique $StringConst68 : ref extends  complete;
const unique $StringConst69 : ref extends  complete;
const unique $StringConst70 : ref extends  complete;
const unique $StringConst71 : ref extends  complete;
const unique $StringConst72 : ref extends  complete;
const unique $StringConst73 : ref extends  complete;
const unique $StringConst74 : ref extends  complete;
const unique $StringConst75 : ref extends  complete;
const unique $StringConst76 : ref extends  complete;
const unique $StringConst77 : ref extends  complete;
const unique $StringConst78 : ref extends  complete;
const unique $StringConst79 : ref extends  complete;
const unique $StringConst80 : ref extends  complete;
const unique $StringConst81 : ref extends  complete;
const unique $StringConst82 : ref extends  complete;
const unique $StringConst83 : ref extends  complete;
const unique $StringConst84 : ref extends  complete;
const unique $StringConst85 : ref extends  complete;
const unique $StringConst86 : ref extends  complete;
const unique $StringConst87 : ref extends  complete;
const unique $StringConst88 : ref extends  complete;
const unique $StringConst89 : ref extends  complete;
const unique $StringConst90 : ref extends  complete;
const unique $StringConst91 : ref extends  complete;
const unique $StringConst92 : ref extends  complete;
const unique $StringConst93 : ref extends  complete;
const { :sourceloc "JCheckBoxMenuItem.java",-1,-1,-1,-1 } unique javax.swing.JCheckBoxMenuItem : javaType extends  unique javax.swing.SwingConstants, unique javax.accessibility.Accessible, unique javax.swing.JMenuItem complete;
const unique $StringConst94 : ref extends  complete;
const unique $StringConst95 : ref extends  complete;
const unique $StringConst96 : ref extends  complete;
const unique $StringConst97 : ref extends  complete;
const unique $StringConst98 : ref extends  complete;
const unique $StringConst99 : ref extends  complete;
const unique $StringConst100 : ref extends  complete;
const unique $StringConst101 : ref extends  complete;
const unique $StringConst102 : ref extends  complete;
const unique $StringConst103 : ref extends  complete;
const unique $StringConst104 : ref extends  complete;
const unique $StringConst105 : ref extends  complete;
const unique $StringConst106 : ref extends  complete;
const unique $StringConst107 : ref extends  complete;
const unique $StringConst108 : ref extends  complete;
const unique $StringConst109 : ref extends  complete;
const unique $StringConst110 : ref extends  complete;
const { :sourceloc "StyledEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.StyledEditorKit$FontSizeAction : javaType extends  unique javax.swing.text.StyledEditorKit$StyledTextAction complete;
const unique $StringConst111 : ref extends  complete;
const unique $StringConst112 : ref extends  complete;
const unique $StringConst113 : ref extends  complete;
const unique $StringConst114 : ref extends  complete;
const unique $StringConst115 : ref extends  complete;
const unique $StringConst116 : ref extends  complete;
const unique $StringConst117 : ref extends  complete;
const unique $StringConst118 : ref extends  complete;
const unique $StringConst119 : ref extends  complete;
const unique $StringConst120 : ref extends  complete;
const unique $StringConst121 : ref extends  complete;
const unique $StringConst122 : ref extends  complete;
const unique $StringConst123 : ref extends  complete;
const unique $StringConst124 : ref extends  complete;
const unique $StringConst125 : ref extends  complete;
const unique $StringConst126 : ref extends  complete;
const unique $StringConst127 : ref extends  complete;
const unique $StringConst128 : ref extends  complete;
const unique $StringConst129 : ref extends  complete;
const unique $StringConst130 : ref extends  complete;
const unique $StringConst131 : ref extends  complete;
const unique $StringConst132 : ref extends  complete;
const unique $StringConst133 : ref extends  complete;
const unique $StringConst134 : ref extends  complete;
const unique $StringConst135 : ref extends  complete;
const unique $StringConst136 : ref extends  complete;
const unique $StringConst137 : ref extends  complete;
const unique $StringConst138 : ref extends  complete;
const unique $StringConst139 : ref extends  complete;
const unique $StringConst140 : ref extends  complete;
const unique $StringConst141 : ref extends  complete;
const unique $StringConst142 : ref extends  complete;
const unique $StringConst143 : ref extends  complete;
const unique $StringConst144 : ref extends  complete;
const unique $StringConst145 : ref extends  complete;
const unique $StringConst146 : ref extends  complete;
const unique $StringConst147 : ref extends  complete;
const unique $StringConst148 : ref extends  complete;
const unique $StringConst149 : ref extends  complete;
const unique $StringConst150 : ref extends  complete;
const unique $StringConst151 : ref extends  complete;
const unique $StringConst152 : ref extends  complete;
const unique $StringConst153 : ref extends  complete;
const unique $StringConst154 : ref extends  complete;
const unique $StringConst155 : ref extends  complete;
const unique $StringConst156 : ref extends  complete;
const unique $StringConst157 : ref extends  complete;
const unique $StringConst158 : ref extends  complete;
const unique $StringConst159 : ref extends  complete;
const unique $StringConst160 : ref extends  complete;
const unique $StringConst161 : ref extends  complete;
const unique $StringConst162 : ref extends  complete;
const unique $StringConst163 : ref extends  complete;
const unique $StringConst164 : ref extends  complete;
const unique $StringConst165 : ref extends  complete;
const unique $StringConst166 : ref extends  complete;
const unique $StringConst167 : ref extends  complete;
const unique $StringConst168 : ref extends  complete;
const unique $StringConst169 : ref extends  complete;
const unique $StringConst170 : ref extends  complete;
const unique $StringConst171 : ref extends  complete;
const unique $StringConst172 : ref extends  complete;
const unique $StringConst173 : ref extends  complete;
const unique $StringConst174 : ref extends  complete;
const unique $StringConst175 : ref extends  complete;
const unique $StringConst176 : ref extends  complete;
const unique $StringConst177 : ref extends  complete;
const unique $StringConst178 : ref extends  complete;
const unique $StringConst179 : ref extends  complete;
const unique $StringConst180 : ref extends  complete;
const unique $StringConst181 : ref extends  complete;
const unique $StringConst182 : ref extends  complete;
const unique $StringConst183 : ref extends  complete;
const unique $StringConst184 : ref extends  complete;
const unique $StringConst185 : ref extends  complete;
const unique $StringConst186 : ref extends  complete;
const unique $StringConst187 : ref extends  complete;
const unique $StringConst188 : ref extends  complete;
const unique $StringConst189 : ref extends  complete;
const unique $StringConst190 : ref extends  complete;
const unique $StringConst191 : ref extends  complete;
const unique $StringConst192 : ref extends  complete;
const unique $StringConst193 : ref extends  complete;
const unique $StringConst194 : ref extends  complete;
const unique $StringConst195 : ref extends  complete;
const unique $StringConst196 : ref extends  complete;
const unique $StringConst197 : ref extends  complete;
const unique $StringConst198 : ref extends  complete;
const unique $StringConst199 : ref extends  complete;
const unique $StringConst200 : ref extends  complete;
const unique $StringConst201 : ref extends  complete;
const unique $StringConst202 : ref extends  complete;
const unique $StringConst203 : ref extends  complete;
const unique $StringConst204 : ref extends  complete;
const unique $StringConst205 : ref extends  complete;
const unique $StringConst206 : ref extends  complete;
const unique $StringConst207 : ref extends  complete;
const unique $StringConst208 : ref extends  complete;
const unique $StringConst209 : ref extends  complete;
const unique $StringConst210 : ref extends  complete;
const unique $StringConst211 : ref extends  complete;
const unique $StringConst212 : ref extends  complete;
const unique $StringConst213 : ref extends  complete;
const unique $StringConst214 : ref extends  complete;
const unique $StringConst215 : ref extends  complete;
const unique $StringConst216 : ref extends  complete;
const { :sourceloc "JButton.java",-1,-1,-1,-1 } unique javax.swing.JButton : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.AbstractButton complete;
const { :sourceloc "JButtonNoFocus.java",-1,-1,-1,-1 } unique terpword.JButtonNoFocus : javaType extends  unique javax.swing.JButton complete;
const unique $StringConst217 : ref extends  complete;
const unique $StringConst218 : ref extends  complete;
const unique $StringConst219 : ref extends  complete;
const unique $StringConst220 : ref extends  complete;
const unique $StringConst221 : ref extends  complete;
const unique $StringConst222 : ref extends  complete;
const unique $StringConst223 : ref extends  complete;
const unique $StringConst224 : ref extends  complete;
const unique $StringConst225 : ref extends  complete;
const { :sourceloc "JToggleButton.java",-1,-1,-1,-1 } unique javax.swing.JToggleButton : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.AbstractButton complete;
const { :sourceloc "JToggleButtonNoFocus.java",-1,-1,-1,-1 } unique terpword.JToggleButtonNoFocus : javaType extends  unique javax.swing.JToggleButton complete;
const unique $StringConst226 : ref extends  complete;
const unique $StringConst227 : ref extends  complete;
const unique $StringConst228 : ref extends  complete;
const unique $StringConst229 : ref extends  complete;
const unique $StringConst230 : ref extends  complete;
const unique $StringConst231 : ref extends  complete;
const unique $StringConst232 : ref extends  complete;
const unique $StringConst233 : ref extends  complete;
const unique $StringConst234 : ref extends  complete;
const unique $StringConst235 : ref extends  complete;
const unique $StringConst236 : ref extends  complete;
const unique $StringConst237 : ref extends  complete;
const unique $StringConst238 : ref extends  complete;
const unique $StringConst239 : ref extends  complete;
const unique $StringConst240 : ref extends  complete;
const unique $StringConst241 : ref extends  complete;
const unique $StringConst242 : ref extends  complete;
const unique $StringConst243 : ref extends  complete;
const unique $StringConst244 : ref extends  complete;
const { :sourceloc "Dimension2D.java",-1,-1,-1,-1 } unique java.awt.geom.Dimension2D : javaType extends  unique java.lang.Object, unique java.lang.Cloneable complete;
const { :sourceloc "Dimension.java",-1,-1,-1,-1 } unique java.awt.Dimension : javaType extends  unique java.awt.geom.Dimension2D, unique java.io.Serializable complete;
const unique $StringConst245 : ref extends  complete;
const { :sourceloc "GraphicsEnvironment.java",-1,-1,-1,-1 } unique java.awt.GraphicsEnvironment : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Collections.java",-1,-1,-1,-1 } unique java.util.Collections : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ListDataListener.java",-1,-1,-1,-1 } unique javax.swing.event.ListDataListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "JComboBox.java",-1,-1,-1,-1 } unique javax.swing.JComboBox : javaType extends  unique java.awt.event.ActionListener, unique javax.accessibility.Accessible, unique javax.swing.event.ListDataListener, unique java.awt.ItemSelectable, unique javax.swing.JComponent complete;
const { :sourceloc "JComboBoxNoFocus.java",-1,-1,-1,-1 } unique terpword.JComboBoxNoFocus : javaType extends  unique javax.swing.JComboBox complete;
const unique $StringConst246 : ref extends  complete;
const unique $StringConst247 : ref extends  complete;
const { :sourceloc "SetFontSizeAction.java",-1,-1,-1,-1 } unique terpword.SetFontSizeAction : javaType extends  unique javax.swing.text.StyledEditorKit$FontSizeAction complete;
const unique $StringConst248 : ref extends  complete;
const unique $StringConst249 : ref extends  complete;
const { :sourceloc "JSeparator.java",-1,-1,-1,-1 } unique javax.swing.JSeparator : javaType extends  unique javax.swing.SwingConstants, unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const { :sourceloc "JToolBar.java",-1,-1,-1,-1 } unique javax.swing.JToolBar$Separator : javaType extends  unique javax.swing.JSeparator complete;
const { :sourceloc "ScrollPaneConstants.java",-1,-1,-1,-1 } unique javax.swing.ScrollPaneConstants : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JScrollPane.java",-1,-1,-1,-1 } unique javax.swing.JScrollPane : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.ScrollPaneConstants, unique javax.swing.JComponent complete;
const { :sourceloc "JSplitPane.java",-1,-1,-1,-1 } unique javax.swing.JSplitPane : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const { :sourceloc "BadLocationException.java",-1,-1,-1,-1 } unique javax.swing.text.BadLocationException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "IllegalArgumentException.java",-1,-1,-1,-1 } unique java.lang.IllegalArgumentException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "NumberFormatException.java",-1,-1,-1,-1 } unique java.lang.NumberFormatException : javaType extends  unique java.lang.IllegalArgumentException complete;
const unique $StringConst250 : ref extends  complete;
const { :sourceloc "Printable.java",-1,-1,-1,-1 } unique java.awt.print.Printable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "PrintUtilities.java",-1,-1,-1,-1 } unique terpword.PrintUtilities : javaType extends  unique java.awt.print.Printable, unique java.lang.Object complete;
const { :sourceloc "ImageGrabber.java",-1,-1,-1,-1 } unique terpword.ImageGrabber : javaType extends  unique java.lang.Object complete;
const unique $StringConst251 : ref extends  complete;
const unique $StringConst252 : ref extends  complete;
const { :sourceloc "ImageIO.java",-1,-1,-1,-1 } unique javax.imageio.ImageIO : javaType extends  unique java.lang.Object complete;
const unique $StringConst253 : ref extends  complete;
const unique $StringConst254 : ref extends  complete;
const { :sourceloc "IndexOutOfBoundsException.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "ArrayIndexOutOfBoundsException.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const unique $StringConst255 : ref extends  complete;
const unique $StringConst256 : ref extends  complete;
const unique $StringConst257 : ref extends  complete;
const unique $StringConst258 : ref extends  complete;
const unique $StringConst259 : ref extends  complete;
const { :sourceloc "HelpBrowser.java",-1,-1,-1,-1 } unique terpword.HelpBrowser : javaType extends  unique javax.swing.JFrame complete;
const unique $StringConst260 : ref extends  complete;
const unique $StringConst261 : ref extends  complete;
const unique $StringConst262 : ref extends  complete;
const unique $StringConst263 : ref extends  complete;
const unique $StringConst264 : ref extends  complete;
const unique $StringConst265 : ref extends  complete;
const unique $StringConst266 : ref extends  complete;
const unique $StringConst267 : ref extends  complete;
const { :sourceloc "InputEvent.java",-1,-1,-1,-1 } unique java.awt.event.InputEvent : javaType extends  unique java.awt.event.ComponentEvent complete;
const { :sourceloc "KeyEvent.java",-1,-1,-1,-1 } unique java.awt.event.KeyEvent : javaType extends  unique java.awt.event.InputEvent complete;
const { :sourceloc "Character.java",-1,-1,-1,-1 } unique java.lang.Character : javaType extends  unique java.io.Serializable, unique java.lang.Comparable, unique java.lang.Object complete;
const unique $StringConst268 : ref extends  complete;
const unique $StringConst269 : ref extends  complete;
const { :sourceloc "DocumentEvent.java",-1,-1,-1,-1 } unique javax.swing.event.DocumentEvent : javaType extends  unique java.lang.Object complete;
const { :sourceloc "PlainDocument.java",-1,-1,-1,-1 } unique javax.swing.text.PlainDocument : javaType extends  unique javax.swing.text.AbstractDocument complete;
const unique $StringConst270 : ref extends  complete;
const unique $StringConst271 : ref extends  complete;
const unique $StringConst272 : ref extends  complete;
const unique $StringConst273 : ref extends  complete;
const unique $StringConst274 : ref extends  complete;
const unique $StringConst275 : ref extends  complete;
const unique $StringConst276 : ref extends  complete;
const unique $StringConst277 : ref extends  complete;
const unique $StringConst278 : ref extends  complete;
const unique $StringConst279 : ref extends  complete;
const unique $StringConst280 : ref extends  complete;
const unique $StringConst281 : ref extends  complete;
const unique $StringConst282 : ref extends  complete;
const unique $StringConst283 : ref extends  complete;
const unique $StringConst284 : ref extends  complete;
const unique $StringConst285 : ref extends  complete;
const unique $StringConst286 : ref extends  complete;
const unique $StringConst287 : ref extends  complete;
const unique $StringConst288 : ref extends  complete;
const { :sourceloc "UnicodeDialog.java",-1,-1,-1,-1 } unique terpword.UnicodeDialog : javaType extends  unique java.awt.event.ActionListener, unique javax.swing.JDialog complete;
const unique $StringConst289 : ref extends  complete;
const unique $StringConst290 : ref extends  complete;
const unique $StringConst291 : ref extends  complete;
const unique $StringConst292 : ref extends  complete;
const unique $StringConst293 : ref extends  complete;
const unique $StringConst294 : ref extends  complete;
const unique $StringConst295 : ref extends  complete;
const { :sourceloc "ReflectiveOperationException.java",-1,-1,-1,-1 } unique java.lang.ReflectiveOperationException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "ClassNotFoundException.java",-1,-1,-1,-1 } unique java.lang.ClassNotFoundException : javaType extends  unique java.lang.ReflectiveOperationException complete;
const unique $StringConst296 : ref extends  complete;
const unique $StringConst297 : ref extends  complete;
const unique $StringConst298 : ref extends  complete;
const { :sourceloc "URLConnection.java",-1,-1,-1,-1 } unique java.net.URLConnection : javaType extends  unique java.lang.Object complete;
const { :sourceloc "DataInput.java",-1,-1,-1,-1 } unique java.io.DataInput : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ObjectInput.java",-1,-1,-1,-1 } unique java.io.ObjectInput : javaType extends  unique java.io.DataInput, unique java.lang.AutoCloseable, unique java.lang.Object complete;
const { :sourceloc "ObjectStreamConstants.java",-1,-1,-1,-1 } unique java.io.ObjectStreamConstants : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ObjectInputStream.java",-1,-1,-1,-1 } unique java.io.ObjectInputStream : javaType extends  unique java.io.InputStream, unique java.io.ObjectStreamConstants, unique java.io.ObjectInput complete;
const unique $StringConst299 : ref extends  complete;
const unique $StringConst300 : ref extends  complete;
const unique $StringConst301 : ref extends  complete;
const unique $StringConst302 : ref extends  complete;
const unique $StringConst303 : ref extends  complete;
const unique $StringConst304 : ref extends  complete;
const { :sourceloc "OutputStreamWriter.java",-1,-1,-1,-1 } unique java.io.OutputStreamWriter : javaType extends  unique java.io.Writer complete;
const { :sourceloc "FileWriter.java",-1,-1,-1,-1 } unique java.io.FileWriter : javaType extends  unique java.io.OutputStreamWriter complete;
const unique $StringConst305 : ref extends  complete;
const unique $StringConst306 : ref extends  complete;
const { :sourceloc "TxtConverter.java",-1,-1,-1,-1 } unique terpword.TxtConverter : javaType extends  unique java.lang.Object complete;
const unique $StringConst307 : ref extends  complete;
const unique $StringConst308 : ref extends  complete;
const unique $StringConst309 : ref extends  complete;
const { :sourceloc "FileOutputStream.java",-1,-1,-1,-1 } unique java.io.FileOutputStream : javaType extends  unique java.io.OutputStream complete;
const { :sourceloc "ChangedCharSetException.java",-1,-1,-1,-1 } unique javax.swing.text.ChangedCharSetException : javaType extends  unique java.io.IOException complete;
const unique $StringConst310 : ref extends  complete;
const unique $StringConst311 : ref extends  complete;
const { :sourceloc "FileInputStream.java",-1,-1,-1,-1 } unique java.io.FileInputStream : javaType extends  unique java.io.InputStream complete;
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.io.Serializable, unique java.lang.Comparable, unique java.lang.Object complete;
const unique $StringConst312 : ref extends  complete;
const unique $StringConst313 : ref extends  complete;
const { :sourceloc "JFileChooser.java",-1,-1,-1,-1 } unique javax.swing.JFileChooser : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const { :sourceloc "FileFilter.java",-1,-1,-1,-1 } unique javax.swing.filechooser.FileFilter : javaType extends  unique java.lang.Object complete;
const { :sourceloc "MutableFilter.java",-1,-1,-1,-1 } unique terpword.MutableFilter : javaType extends  unique javax.swing.filechooser.FileFilter complete;
const { :sourceloc "ImageFileChooser.java",-1,-1,-1,-1 } unique terpword.ImageFileChooser : javaType extends  unique javax.swing.JFileChooser complete;
const unique $StringConst314 : ref extends  complete;
const unique $StringConst315 : ref extends  complete;
const unique $StringConst316 : ref extends  complete;
const unique $StringConst317 : ref extends  complete;
const unique $StringConst318 : ref extends  complete;
const unique $StringConst319 : ref extends  complete;
const unique $StringConst320 : ref extends  complete;
const unique $DoubleConst2 : int extends  complete;
const unique $StringConst321 : ref extends  complete;
const unique $StringConst322 : ref extends  complete;
const { :sourceloc "StringTokenizer.java",-1,-1,-1,-1 } unique java.util.StringTokenizer : javaType extends  unique java.lang.Object, unique java.util.Enumeration complete;
const { :sourceloc "Pattern.java",-1,-1,-1,-1 } unique java.util.regex.Pattern : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const unique $StringConst323 : ref extends  complete;
const { :sourceloc "CaretEvent.java",-1,-1,-1,-1 } unique javax.swing.event.CaretEvent : javaType extends  unique java.util.EventObject complete;
const { :sourceloc "StyleConstants.java",-1,-1,-1,-1 } unique javax.swing.text.StyleConstants : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ButtonModel.java",-1,-1,-1,-1 } unique javax.swing.ButtonModel : javaType extends  unique java.awt.ItemSelectable, unique java.lang.Object complete;
const { :sourceloc "ListModel.java",-1,-1,-1,-1 } unique javax.swing.ListModel : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ComboBoxModel.java",-1,-1,-1,-1 } unique javax.swing.ComboBoxModel : javaType extends  unique java.lang.Object, unique javax.swing.ListModel complete;
const { :sourceloc "BufferedWriter.java",-1,-1,-1,-1 } unique java.io.BufferedWriter : javaType extends  unique java.io.Writer complete;
const unique $StringConst324 : ref extends  complete;
const unique $StringConst325 : ref extends  complete;
const unique $StringConst326 : ref extends  complete;
const unique $StringConst327 : ref extends  complete;
const { :sourceloc "AbstractDocument.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractDocument$DefaultDocumentEvent : javaType extends  unique javax.swing.event.DocumentEvent, unique javax.swing.undo.CompoundEdit complete;
const { :sourceloc "DefaultStyledDocument.java",-1,-1,-1,-1 } unique javax.swing.text.DefaultStyledDocument$AttributeUndoableEdit : javaType extends  unique javax.swing.undo.AbstractUndoableEdit complete;
const { :sourceloc "TreeNode.java",-1,-1,-1,-1 } unique javax.swing.tree.TreeNode : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AbstractDocument.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractDocument$AbstractElement : javaType extends  unique java.io.Serializable, unique javax.swing.text.MutableAttributeSet, unique java.lang.Object, unique javax.swing.tree.TreeNode, unique javax.swing.text.Element complete;
const { :sourceloc "AbstractDocument.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractDocument$BranchElement : javaType extends  unique javax.swing.text.AbstractDocument$AbstractElement complete;
const { :sourceloc "DocumentEvent.java",-1,-1,-1,-1 } unique javax.swing.event.DocumentEvent$ElementChange : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AbstractDocument.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractDocument$ElementEdit : javaType extends  unique javax.swing.event.DocumentEvent$ElementChange, unique javax.swing.undo.AbstractUndoableEdit complete;
const { :sourceloc "AbstractDocument.java",-1,-1,-1,-1 } unique javax.swing.text.AbstractDocument$Content : javaType extends  unique java.lang.Object complete;
const { :sourceloc "HTMLEditorKit.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTMLEditorKit$Parser : javaType extends  unique java.lang.Object complete;
const unique $StringConst328 : ref extends  complete;
const { :sourceloc "BoxLayout.java",-1,-1,-1,-1 } unique javax.swing.BoxLayout : javaType extends  unique java.awt.LayoutManager2, unique java.io.Serializable, unique java.lang.Object complete;
const unique $FloatConst0 : int extends  complete;
const unique $StringConst329 : ref extends  complete;
const { :sourceloc "BorderFactory.java",-1,-1,-1,-1 } unique javax.swing.BorderFactory : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Border.java",-1,-1,-1,-1 } unique javax.swing.border.Border : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AbstractBorder.java",-1,-1,-1,-1 } unique javax.swing.border.AbstractBorder : javaType extends  unique javax.swing.border.Border, unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "TitledBorder.java",-1,-1,-1,-1 } unique javax.swing.border.TitledBorder : javaType extends  unique javax.swing.border.AbstractBorder complete;
const { :sourceloc "BevelBorder.java",-1,-1,-1,-1 } unique javax.swing.border.BevelBorder : javaType extends  unique javax.swing.border.AbstractBorder complete;
const { :sourceloc "SoftBevelBorder.java",-1,-1,-1,-1 } unique javax.swing.border.SoftBevelBorder : javaType extends  unique javax.swing.border.BevelBorder complete;
const unique $StringConst330 : ref extends  complete;
const unique $StringConst331 : ref extends  complete;
const { :sourceloc "FontSelectorDialog.java",-1,-1,-1,-1 } unique terpword.FontSelectorDialog$1Anonymous1 : javaType extends  unique java.beans.PropertyChangeListener, unique java.lang.Object complete;
const { :sourceloc "ItemListener.java",-1,-1,-1,-1 } unique java.awt.event.ItemListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "FontSelectorDialog.java",-1,-1,-1,-1 } unique terpword.FontSelectorDialog : javaType extends  unique java.awt.event.ItemListener, unique javax.swing.JDialog complete;
const { :sourceloc "FontSelectorDialog.java",-1,-1,-1,-1 } unique terpword.FontSelectorDialog$2Anonymous0 : javaType extends  unique java.awt.event.WindowAdapter complete;
const unique $StringConst332 : ref extends  complete;
const unique $StringConst333 : ref extends  complete;
const unique $StringConst334 : ref extends  complete;
const { :sourceloc "ItemEvent.java",-1,-1,-1,-1 } unique java.awt.event.ItemEvent : javaType extends  unique java.awt.AWTEvent complete;
const unique $StringConst335 : ref extends  complete;
const unique $StringConst336 : ref extends  complete;
const unique $StringConst337 : ref extends  complete;
const unique $StringConst338 : ref extends  complete;
const { :sourceloc "HTML.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTML$Attribute : javaType extends  unique java.lang.Object complete;
const unique $StringConst339 : ref extends  complete;
const { :sourceloc "MouseWheelListener.java",-1,-1,-1,-1 } unique java.awt.event.MouseWheelListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "MouseAdapter.java",-1,-1,-1,-1 } unique java.awt.event.MouseAdapter : javaType extends  unique java.awt.event.MouseListener, unique java.lang.Object, unique java.awt.event.MouseWheelListener, unique java.awt.event.MouseMotionListener complete;
const { :sourceloc "MouseInputListener.java",-1,-1,-1,-1 } unique javax.swing.event.MouseInputListener : javaType extends  unique java.awt.event.MouseListener, unique java.lang.Object, unique java.awt.event.MouseMotionListener complete;
const { :sourceloc "MouseInputAdapter.java",-1,-1,-1,-1 } unique javax.swing.event.MouseInputAdapter : javaType extends  unique java.awt.event.MouseAdapter, unique javax.swing.event.MouseInputListener complete;
const { :sourceloc "PatchedHTMLEditorKit.java",-1,-1,-1,-1 } unique terpword.PatchedHTMLEditorKit$LinkController : javaType extends  unique java.io.Serializable, unique javax.swing.event.MouseInputAdapter complete;
const { :sourceloc "Point2D.java",-1,-1,-1,-1 } unique java.awt.geom.Point2D : javaType extends  unique java.lang.Object, unique java.lang.Cloneable complete;
const { :sourceloc "Point.java",-1,-1,-1,-1 } unique java.awt.Point : javaType extends  unique java.awt.geom.Point2D, unique java.io.Serializable complete;
const { :sourceloc "MouseEvent.java",-1,-1,-1,-1 } unique java.awt.event.MouseEvent : javaType extends  unique java.awt.event.InputEvent complete;
const { :sourceloc "HyperlinkEvent.java",-1,-1,-1,-1 } unique javax.swing.event.HyperlinkEvent : javaType extends  unique java.util.EventObject complete;
const unique $StringConst340 : ref extends  complete;
const { :sourceloc "JTextField.java",-1,-1,-1,-1 } unique javax.swing.JTextField : javaType extends  unique javax.swing.SwingConstants, unique javax.swing.text.JTextComponent complete;
const { :sourceloc "PatchedHTMLEditorKit.java",-1,-1,-1,-1 } unique terpword.PatchedHTMLEditorKit : javaType extends  unique javax.swing.text.html.HTMLEditorKit complete;
const unique $StringConst341 : ref extends  complete;
const unique $StringConst342 : ref extends  complete;
const { :sourceloc "HyperlinkListener.java",-1,-1,-1,-1 } unique javax.swing.event.HyperlinkListener : javaType extends  unique java.lang.Object, unique java.util.EventListener complete;
const { :sourceloc "SimpleLinkListener.java",-1,-1,-1,-1 } unique terpword.SimpleLinkListener : javaType extends  unique javax.swing.event.HyperlinkListener, unique java.lang.Object complete;
const { :sourceloc "HTML.java",-1,-1,-1,-1 } unique javax.swing.text.html.HTML : javaType extends  unique java.lang.Object complete;
const unique $StringConst343 : ref extends  complete;
const unique $StringConst344 : ref extends  complete;
const unique $StringConst345 : ref extends  complete;
const unique $StringConst346 : ref extends  complete;
const unique $StringConst347 : ref extends  complete;
const unique $StringConst348 : ref extends  complete;
const unique $StringConst349 : ref extends  complete;
const unique $StringConst350 : ref extends  complete;
const unique $StringConst351 : ref extends  complete;
const unique $StringConst352 : ref extends  complete;
const unique $StringConst353 : ref extends  complete;
const unique $StringConst354 : ref extends  complete;
const unique $StringConst355 : ref extends  complete;
const unique $StringConst356 : ref extends  complete;
const unique $StringConst357 : ref extends  complete;
const unique $StringConst358 : ref extends  complete;
const { :sourceloc "Arrays.java",-1,-1,-1,-1 } unique java.util.Arrays : javaType extends  unique java.lang.Object complete;
const { :sourceloc "ImageDialog.java",-1,-1,-1,-1 } unique terpword.ImageDialog$1Anonymous0 : javaType extends  unique javax.swing.event.ListSelectionListener, unique java.lang.Object complete;
const { :sourceloc "ImageDialog.java",-1,-1,-1,-1 } unique terpword.ImageDialog : javaType extends  unique java.awt.event.ActionListener, unique javax.swing.JDialog complete;
const unique $StringConst359 : ref extends  complete;
const unique $StringConst360 : ref extends  complete;
const unique $StringConst361 : ref extends  complete;
const { :sourceloc "Box.java",-1,-1,-1,-1 } unique javax.swing.Box : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.JComponent complete;
const unique $StringConst362 : ref extends  complete;
const unique $StringConst363 : ref extends  complete;
const unique $StringConst364 : ref extends  complete;
const unique $StringConst365 : ref extends  complete;
const unique $StringConst366 : ref extends  complete;
const unique $StringConst367 : ref extends  complete;
const unique $StringConst368 : ref extends  complete;
const unique $StringConst369 : ref extends  complete;
const unique $StringConst370 : ref extends  complete;
const unique $StringConst371 : ref extends  complete;
const unique $StringConst372 : ref extends  complete;
const unique $StringConst373 : ref extends  complete;
const unique $StringConst374 : ref extends  complete;
const unique $StringConst375 : ref extends  complete;
const unique $StringConst376 : ref extends  complete;
const unique $StringConst377 : ref extends  complete;
const unique $StringConst378 : ref extends  complete;
const unique $StringConst379 : ref extends  complete;
const { :sourceloc "ImageFileChooserPreview.java",-1,-1,-1,-1 } unique terpword.ImageFileChooserPreview : javaType extends  unique java.beans.PropertyChangeListener, unique javax.swing.JComponent complete;
const unique $StringConst380 : ref extends  complete;
const { :sourceloc "Transferable.java",-1,-1,-1,-1 } unique java.awt.datatransfer.Transferable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "UnsupportedFlavorException.java",-1,-1,-1,-1 } unique java.awt.datatransfer.UnsupportedFlavorException : javaType extends  unique java.lang.Exception complete;
const unique $StringConst381 : ref extends  complete;
const unique $StringConst382 : ref extends  complete;
const unique $StringConst383 : ref extends  complete;
const unique $StringConst384 : ref extends  complete;
const unique $StringConst385 : ref extends  complete;
const unique $StringConst386 : ref extends  complete;
const unique $StringConst387 : ref extends  complete;
const unique $StringConst388 : ref extends  complete;
const unique $StringConst389 : ref extends  complete;
const { :sourceloc "PrinterJob.java",-1,-1,-1,-1 } unique java.awt.print.PrinterJob : javaType extends  unique java.lang.Object complete;
const { :sourceloc "PrinterException.java",-1,-1,-1,-1 } unique java.awt.print.PrinterException : javaType extends  unique java.lang.Exception complete;
const unique $StringConst390 : ref extends  complete;
const { :sourceloc "PageFormat.java",-1,-1,-1,-1 } unique java.awt.print.PageFormat : javaType extends  unique java.lang.Object, unique java.lang.Cloneable complete;
const { :sourceloc "RepaintManager.java",-1,-1,-1,-1 } unique javax.swing.RepaintManager : javaType extends  unique java.lang.Object complete;
const unique $StringConst391 : ref extends  complete;
const unique $StringConst392 : ref extends  complete;
const { :sourceloc "JCheckBox.java",-1,-1,-1,-1 } unique javax.swing.JCheckBox : javaType extends  unique javax.accessibility.Accessible, unique javax.swing.JToggleButton complete;
const unique $StringConst393 : ref extends  complete;
const unique $StringConst394 : ref extends  complete;
const unique $StringConst395 : ref extends  complete;
const unique $StringConst396 : ref extends  complete;
const { :sourceloc "InterruptedException.java",-1,-1,-1,-1 } unique java.lang.InterruptedException : javaType extends  unique java.lang.Exception complete;
const unique $StringConst397 : ref extends  complete;
const unique $StringConst398 : ref extends  complete;
const unique $StringConst399 : ref extends  complete;
const { :sourceloc "Runnable.java",-1,-1,-1,-1 } unique java.lang.Runnable : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Thread.java",-1,-1,-1,-1 } unique java.lang.Thread : javaType extends  unique java.lang.Object, unique java.lang.Runnable complete;
const unique $StringConst400 : ref extends  complete;
const unique $StringConst401 : ref extends  complete;
const unique $StringConst402 : ref extends  complete;
const unique $StringConst403 : ref extends  complete;
const unique $FloatConst1 : int extends  complete;
const unique $FloatConst2 : int extends  complete;
const { :sourceloc "Math.java",-1,-1,-1,-1 } unique java.lang.Math : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Shape.java",-1,-1,-1,-1 } unique java.awt.Shape : javaType extends  unique java.lang.Object complete;
const { :sourceloc "RectangularShape.java",-1,-1,-1,-1 } unique java.awt.geom.RectangularShape : javaType extends  unique java.awt.Shape, unique java.lang.Object, unique java.lang.Cloneable complete;
const { :sourceloc "Rectangle2D.java",-1,-1,-1,-1 } unique java.awt.geom.Rectangle2D : javaType extends  unique java.awt.geom.RectangularShape complete;
const { :sourceloc "Rectangle.java",-1,-1,-1,-1 } unique java.awt.Rectangle : javaType extends  unique java.io.Serializable, unique java.awt.Shape, unique java.awt.geom.Rectangle2D complete;
const unique $StringConst404 : ref extends  complete;
const { :sourceloc "Caret.java",-1,-1,-1,-1 } unique javax.swing.text.Caret : javaType extends  unique java.lang.Object complete;
const unique $StringConst405 : ref extends  complete;
const { :sourceloc "GenericDeclaration.java",-1,-1,-1,-1 } unique java.lang.reflect.GenericDeclaration : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Type.java",-1,-1,-1,-1 } unique java.lang.reflect.Type : javaType extends  unique java.lang.Object complete;
const { :sourceloc "AnnotatedElement.java",-1,-1,-1,-1 } unique java.lang.reflect.AnnotatedElement : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Class.java",-1,-1,-1,-1 } unique java.lang.Class : javaType extends  unique java.lang.reflect.Type, unique java.lang.reflect.GenericDeclaration, unique java.io.Serializable, unique java.lang.reflect.AnnotatedElement, unique java.lang.Object complete;
const { :sourceloc "FilterInputStream.java",-1,-1,-1,-1 } unique java.io.FilterInputStream : javaType extends  unique java.io.InputStream complete;
const { :sourceloc "BufferedInputStream.java",-1,-1,-1,-1 } unique java.io.BufferedInputStream : javaType extends  unique java.io.FilterInputStream complete;
const { :sourceloc "ByteArrayOutputStream.java",-1,-1,-1,-1 } unique java.io.ByteArrayOutputStream : javaType extends  unique java.io.OutputStream complete;
const unique $StringConst406 : ref extends  complete;
const unique $StringConst407 : ref extends  complete;
const unique $StringConst408 : ref extends  complete;
const unique $StringConst409 : ref extends  complete;
const unique $StringConst410 : ref extends  complete;
const { :sourceloc "Error.java",-1,-1,-1,-1 } unique java.lang.Error : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "LinkageError.java",-1,-1,-1,-1 } unique java.lang.LinkageError : javaType extends  unique java.lang.Error complete;
const { :sourceloc "NoClassDefFoundError.java",-1,-1,-1,-1 } unique java.lang.NoClassDefFoundError : javaType extends  unique java.lang.LinkageError complete;
const unique $StringConst411 : ref extends  complete;
const unique $StringConst412 : ref extends  complete;
const unique $StringConst413 : ref extends  complete;
const unique $StringConst414 : ref extends  complete;
const unique $StringConst415 : ref extends  complete;
const unique $DoubleConst3 : int extends  complete;
const { :sourceloc "HyperlinkEvent.java",-1,-1,-1,-1 } unique javax.swing.event.HyperlinkEvent$EventType : javaType extends  unique java.lang.Object complete;
const { :sourceloc "SymbolDialog.java",-1,-1,-1,-1 } unique terpword.SymbolDialog : javaType extends  unique java.awt.event.ActionListener, unique javax.swing.JDialog complete;
const unique $StringConst416 : ref extends  complete;
const { :sourceloc "ButtonGroup.java",-1,-1,-1,-1 } unique javax.swing.ButtonGroup : javaType extends  unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "GridLayout.java",-1,-1,-1,-1 } unique java.awt.GridLayout : javaType extends  unique java.awt.LayoutManager, unique java.io.Serializable, unique java.lang.Object complete;
const { :sourceloc "TableInputDialog.java",-1,-1,-1,-1 } unique terpword.TableInputDialog$1Anonymous0 : javaType extends  unique java.awt.event.WindowAdapter complete;
const { :sourceloc "TableInputDialog.java",-1,-1,-1,-1 } unique terpword.TableInputDialog : javaType extends  unique javax.swing.JDialog complete;
const { :sourceloc "TableInputDialog.java",-1,-1,-1,-1 } unique terpword.TableInputDialog$2Anonymous1 : javaType extends  unique java.beans.PropertyChangeListener, unique java.lang.Object complete;
const { :sourceloc "testgeticon.java",-1,-1,-1,-1 } unique terpword.testgeticon : javaType extends  unique java.lang.Object complete;
const unique $StringConst417 : ref extends  complete;
const { :sourceloc "JPEGCodec.java",-1,-1,-1,-1 } unique com.sun.image.codec.jpeg.JPEGCodec : javaType extends  unique java.lang.Object complete;
const { :sourceloc "JPEGImageEncoder.java",-1,-1,-1,-1 } unique com.sun.image.codec.jpeg.JPEGImageEncoder : javaType extends  unique java.lang.Object complete;
const unique $StringConst418 : ref extends  complete;
const unique $StringConst419 : ref extends  complete;
const unique $StringConst420 : ref extends  complete;
const unique $StringConst421 : ref extends  complete;
const unique $StringConst422 : ref extends  complete;
const unique $StringConst423 : ref extends  complete;
const unique $StringConst424 : ref extends  complete;
const unique $StringConst425 : ref extends  complete;
const unique $StringConst426 : ref extends  complete;
const unique $FloatConst3 : int extends  complete;
const { :sourceloc "FontRenderContext.java",-1,-1,-1,-1 } unique java.awt.font.FontRenderContext : javaType extends  unique java.lang.Object complete;
const unique $StringConst427 : ref extends  complete;
const unique $StringConst428 : ref extends  complete;
const unique $StringConst429 : ref extends  complete;
const unique $StringConst430 : ref extends  complete;
const unique $StringConst431 : ref extends  complete;
const unique $StringConst432 : ref extends  complete;
const { :sourceloc "UserInputDialog.java",-1,-1,-1,-1 } unique terpword.UserInputDialog$1Anonymous0 : javaType extends  unique java.awt.event.WindowAdapter complete;
const { :sourceloc "UserInputDialog.java",-1,-1,-1,-1 } unique terpword.UserInputDialog : javaType extends  unique javax.swing.JDialog complete;
const { :sourceloc "UserInputDialog.java",-1,-1,-1,-1 } unique terpword.UserInputDialog$2Anonymous2 : javaType extends  unique java.beans.PropertyChangeListener, unique java.lang.Object complete;
const { :sourceloc "UserInputDialog.java",-1,-1,-1,-1 } unique terpword.UserInputDialog$3Anonymous1 : javaType extends  unique java.awt.event.ActionListener, unique java.lang.Object complete;
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
var terpword.EkitCore$terpword.EkitCore$UndoAction$this$02521 : Field ref;
var javax.swing.undo.UndoManager$terpword.EkitCore$undoMngr701 : Field ref;
var terpword.EkitCore$RedoAction$terpword.EkitCore$redoAction703 : Field ref;
var terpword.EkitCore$terpword.EkitCore$RedoAction$this$02522 : Field ref;
var terpword.EkitCore$UndoAction$terpword.EkitCore$undoAction702 : Field ref;
var terpword.EkitCore$terpword.EkitCore$1Anonymous1$this$02523 : Field ref;
var terpword.EkitCore$terpword.EkitCore$2Anonymous0$this$02524 : Field ref;
var terpword.EkitCore$terpword.EkitCore$CustomUndoableEditListener$this$02525 : Field ref;
var terpword.SimpleInfoDialog$terpword.SimpleInfoDialog$1Anonymous0$this$02526 : Field ref;
var terpword.EkitCore$terpword.CustomAction$parentEkit637 : Field ref;
var javax.swing.text.html.HTML$Tag$terpword.CustomAction$htmlTag638 : Field ref;
var java.util.Hashtable$terpword.CustomAction$htmlAttribs639 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$A790 : ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$FONT812 : ref;
var java.awt.Color$java.awt.Color$black388 : ref;
var java.io.File$terpword.Ekit$currentFile1343 : Field ref;
var terpword.EkitCore$terpword.Ekit$ekitCore1342 : Field ref;
var int$java.awt.GridBagConstraints$fill0 : Field int;
var int$java.awt.GridBagConstraints$anchor0 : Field int;
var int$java.awt.GridBagConstraints$gridheight0 : Field int;
var int$java.awt.GridBagConstraints$gridwidth0 : Field int;
var double$java.awt.GridBagConstraints$weightx0 : Field int;
var double$java.awt.GridBagConstraints$weighty0 : Field int;
var int$java.awt.GridBagConstraints$gridx0 : Field int;
var int$java.awt.GridBagConstraints$gridy0 : Field int;
var java.awt.Color$java.awt.Color$white380 : ref;
var java.awt.Color$java.awt.Color$BLACK389 : ref;
var java.awt.Color$java.awt.Color$WHITE381 : ref;
var java.io.PrintStream$java.lang.System$out1366 : ref;
var java.io.PrintStream$java.lang.System$err1367 : ref;
var terpword.FileDialog$terpword.FileDialog$1Anonymous0$this$02527 : Field ref;
var java.lang.Object$javax.swing.text.StyleConstants$NameAttribute1656 : ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$IMG826 : ref;
var javax.swing.JEditorPane$terpword.HelpBrowser$1Anonymous1$val$jep1689 : Field ref;
var javax.swing.JLabel$terpword.HelpBrowser$1Anonymous1$val$statusBar1688 : Field ref;
var terpword.HelpBrowser$terpword.HelpBrowser$1Anonymous1$this$02528 : Field ref;
var terpword.HelpBrowser$terpword.HelpBrowser$2Anonymous0$this$02529 : Field ref;
var terpword.PropertiesDialog$terpword.PropertiesDialog$1Anonymous0$this$02530 : Field ref;
var java.lang.Object$javax.swing.JOptionPane$UNINITIALIZED_VALUE1043 : ref;
var java.lang.Object$lp$$rp$$terpword.PropertiesDialog$1Anonymous0$val$buttonLabels1738 : Field ref;
var terpword.SearchDialog$terpword.SearchDialog$1Anonymous1$this$02531 : Field ref;
var java.lang.Object$lp$$rp$$terpword.SearchDialog$1Anonymous1$val$buttonLabels1873 : Field ref;
var javax.swing.JTextField$terpword.SearchDialog$1Anonymous1$val$jtxfFindTerm1871 : Field ref;
var javax.swing.JCheckBox$terpword.SearchDialog$1Anonymous1$val$jchkCase1874 : Field ref;
var javax.swing.JCheckBox$terpword.SearchDialog$1Anonymous1$val$jchkTop1870 : Field ref;
var boolean$terpword.SearchDialog$1Anonymous1$val$isReplaceDialog0 : Field int;
var javax.swing.JTextField$terpword.SearchDialog$1Anonymous1$val$jtxfReplaceTerm1872 : Field ref;
var javax.swing.JCheckBox$terpword.SearchDialog$1Anonymous1$val$jchkAll1869 : Field ref;
var terpword.SearchDialog$terpword.SearchDialog$2Anonymous0$this$02532 : Field ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_FILE728 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_EDIT729 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_VIEW730 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_FONT731 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_FORMAT732 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_INSERT733 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_TABLE734 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_SEARCH735 : ref;
var java.lang.String$terpword.EkitCore$KEY_MENU_HELP736 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_SEP737 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_NEW738 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_OPEN739 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_SAVE740 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_CUT741 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_COPY742 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_PASTE743 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_UNDO744 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_REDO745 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_BOLD746 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_ITALIC747 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_UNDERLINE748 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_STRIKE749 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_SUPER750 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_SUB751 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_ULIST752 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_OLIST753 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNL754 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNC755 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNR756 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNJ757 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_UNICODE758 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_UNIMATH759 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_FIND760 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_ANCHOR761 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_SOURCE762 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_SPLITPANEL763 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_STYLES764 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_FONTS765 : ref;
var java.lang.String$terpword.EkitCore$KEY_TOOL_FONTSIZE766 : ref;
var int$terpword.EkitCore$TOOLBAR_MAIN0 : int;
var int$terpword.EkitCore$TOOLBAR_FORMAT0 : int;
var int$terpword.EkitCore$TOOLBAR_STYLES0 : int;
var java.util.Hashtable$terpword.EkitCore$htMenus767 : ref;
var java.util.Hashtable$terpword.EkitCore$htTools768 : ref;
var java.util.Stack$terpword.EkitCore$history_stack684 : Field ref;
var terpword.HTMLUtilities$terpword.EkitCore$htmlUtilities686 : Field ref;
var java.lang.String$terpword.EkitCore$appName769 : Field ref;
var java.lang.String$terpword.EkitCore$menuDialog770 : Field ref;
var boolean$terpword.EkitCore$useFormIndicator0 : Field int;
var java.lang.String$terpword.EkitCore$clrFormIndicator771 : Field ref;
var int$terpword.EkitCore$iSplitPos0 : Field int;
var int$terpword.EkitCore$timesNewRoman0 : Field int;
var boolean$terpword.EkitCore$exclusiveEdit0 : Field int;
var java.lang.String$terpword.EkitCore$lastSearchFindTerm774 : Field ref;
var java.lang.String$terpword.EkitCore$lastSearchReplaceTerm775 : Field ref;
var boolean$terpword.EkitCore$lastSearchCaseSetting0 : Field int;
var boolean$terpword.EkitCore$lastSearchTopSetting0 : Field int;
var java.io.File$terpword.EkitCore$currentFile776 : Field ref;
var java.lang.String$terpword.EkitCore$imageChooserStartDir777 : Field ref;
var int$terpword.EkitCore$indent0 : Field int;
var int$terpword.EkitCore$indentStep0 : Field int;
var boolean$terpword.EkitCore$isSplit0 : Field int;
var boolean$terpword.EkitCore$isSource0 : Field int;
var java.lang.String$lp$$rp$$terpword.EkitCore$extsHTML779 : Field ref;
var java.lang.String$lp$$rp$$terpword.EkitCore$extsCSS780 : Field ref;
var java.lang.String$lp$$rp$$terpword.EkitCore$extsIMG781 : Field ref;
var java.lang.String$lp$$rp$$terpword.EkitCore$extsRTF782 : Field ref;
var java.lang.String$lp$$rp$$terpword.EkitCore$extsSer783 : Field ref;
var java.lang.String$lp$$rp$$terpword.EkitCore$extsTXT784 : Field ref;
var java.lang.String$terpword.EkitCore$ServletURL785 : Field ref;
var java.lang.String$terpword.EkitCore$TreePilotSystemID786 : Field ref;
var java.lang.String$terpword.EkitCore$ImageDir787 : Field ref;
var java.awt.Frame$terpword.EkitCore$frameHandler685 : Field ref;
var java.lang.SecurityManager$terpword.EkitCore$secManager773 : Field ref;
var java.awt.datatransfer.Clipboard$terpword.EkitCore$sysClipboard772 : Field ref;
var java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788 : ref;
var javax.swing.JTextPane$terpword.EkitCore$jtpMain644 : Field ref;
var terpword.ExtendedHTMLEditorKit$terpword.EkitCore$htmlKit645 : Field ref;
var terpword.ExtendedHTMLDocument$terpword.EkitCore$htmlDoc646 : Field ref;
var javax.swing.text.html.StyleSheet$terpword.EkitCore$styleSheet647 : Field ref;
var javax.swing.JTextPane$terpword.EkitCore$jtpSource648 : Field ref;
var javax.swing.text.StyledEditorKit$BoldAction$terpword.EkitCore$actionFontBold687 : Field ref;
var javax.swing.text.StyledEditorKit$ItalicAction$terpword.EkitCore$actionFontItalic688 : Field ref;
var javax.swing.text.StyledEditorKit$UnderlineAction$terpword.EkitCore$actionFontUnderline689 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$STRIKE848 : ref;
var terpword.FormatAction$terpword.EkitCore$actionFontStrike690 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$SUP853 : ref;
var terpword.FormatAction$terpword.EkitCore$actionFontSuperscript691 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$SUB852 : ref;
var terpword.FormatAction$terpword.EkitCore$actionFontSubscript692 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$UL862 : ref;
var terpword.ListAutomationAction$terpword.EkitCore$actionListUnordered693 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$OL838 : ref;
var terpword.ListAutomationAction$terpword.EkitCore$actionListOrdered694 : Field ref;
var terpword.SetFontFamilyAction$terpword.EkitCore$actionSelectFont695 : Field ref;
var javax.swing.text.StyledEditorKit$AlignmentAction$terpword.EkitCore$actionAlignLeft696 : Field ref;
var javax.swing.text.StyledEditorKit$AlignmentAction$terpword.EkitCore$actionAlignCenter697 : Field ref;
var javax.swing.text.StyledEditorKit$AlignmentAction$terpword.EkitCore$actionAlignRight698 : Field ref;
var javax.swing.text.StyledEditorKit$AlignmentAction$terpword.EkitCore$actionAlignJustified699 : Field ref;
var terpword.CustomAction$terpword.EkitCore$actionInsertAnchor700 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuFile705 : Field ref;
var javax.swing.JMenuItem$terpword.EkitCore$hist1716 : Field ref;
var javax.swing.JMenuItem$terpword.EkitCore$hist2717 : Field ref;
var javax.swing.JMenuItem$terpword.EkitCore$hist3718 : Field ref;
var javax.swing.JMenuItem$terpword.EkitCore$hist4719 : Field ref;
var javax.swing.JMenuItem$terpword.EkitCore$hist5720 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuEdit706 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuView707 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuToolbars721 : Field ref;
var javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbarMain723 : Field ref;
var javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbarStyles725 : Field ref;
var javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewSource726 : Field ref;
var javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiSplitPanel727 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuFont708 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuFormat709 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$LI830 : ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuInsert710 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuTable711 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuSearch712 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuHelp714 : Field ref;
var javax.swing.JMenuBar$terpword.EkitCore$jMenuBar704 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuTools713 : Field ref;
var javax.swing.JMenu$terpword.EkitCore$jMenuDebug715 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnNewHTML654 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnOpenHTML655 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnSaveHTML656 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnCut657 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnCopy658 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnPaste659 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnUndo660 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnRedo661 : Field ref;
var terpword.JToggleButtonNoFocus$terpword.EkitCore$jbtnBold662 : Field ref;
var terpword.JToggleButtonNoFocus$terpword.EkitCore$jbtnItalic663 : Field ref;
var terpword.JToggleButtonNoFocus$terpword.EkitCore$jbtnUnderline664 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnStrike665 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnSuperscript666 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnSubscript667 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnUList668 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnOList669 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnAlignLeft670 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnAlignCenter671 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnAlignRight672 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnAlignJustified673 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnUnicode675 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnUnicodeMath676 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnFind674 : Field ref;
var terpword.JButtonNoFocus$terpword.EkitCore$jbtnAnchor677 : Field ref;
var terpword.JToggleButtonNoFocus$terpword.EkitCore$jtbtnViewSource678 : Field ref;
var terpword.JToggleButtonNoFocus$terpword.EkitCore$jtbtnSplitPanel679 : Field ref;
var terpword.JComboBoxNoFocus$terpword.EkitCore$jcmbFontSelector680 : Field ref;
var terpword.JComboBoxNoFocus$terpword.EkitCore$jcmbFontSize681 : Field ref;
var javax.swing.JToolBar$terpword.EkitCore$jToolBarMain651 : Field ref;
var javax.swing.JToolBar$terpword.EkitCore$jToolBarStyles653 : Field ref;
var javax.swing.JScrollPane$terpword.EkitCore$jspViewport778 : Field ref;
var javax.swing.JScrollPane$terpword.EkitCore$jspSource649 : Field ref;
var javax.swing.JSplitPane$terpword.EkitCore$jspltDisplay643 : Field ref;
var java.lang.String$terpword.EkitCore$doc_path682 : Field ref;
var java.lang.String$terpword.EkitCore$doc_name683 : Field ref;
var javax.swing.JToolBar$terpword.EkitCore$jToolBar650 : Field ref;
var javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbar722 : Field ref;
var javax.swing.JToolBar$terpword.EkitCore$jToolBarFormat652 : Field ref;
var javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbarFormat724 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$TABLE854 : ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$TR859 : ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$TD855 : ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$TH857 : ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$BR800 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$CLASS1600 : ref;
var javax.swing.event.DocumentEvent$EventType$javax.swing.event.DocumentEvent$EventType$CHANGE2315 : ref;
var javax.swing.event.DocumentEvent$EventType$javax.swing.event.DocumentEvent$EventType$REMOVE2314 : ref;
var java.lang.String$terpword.FileDialog$FileDir1651 : Field ref;
var java.lang.String$lp$$rp$$terpword.FileDialog$Files1652 : Field ref;
var terpword.EkitCore$terpword.FileDialog$ParentEkit1649 : Field ref;
var java.lang.String$terpword.FileDialog$SelectedFile1653 : Field ref;
var javax.swing.JList$terpword.FileDialog$FileList1650 : Field ref;
var terpword.FontSelectorDialog$terpword.FontSelectorDialog$1Anonymous1$this$02533 : Field ref;
var java.lang.Object$lp$$rp$$terpword.FontSelectorDialog$1Anonymous1$val$buttonLabels2396 : Field ref;
var terpword.FontSelectorDialog$terpword.FontSelectorDialog$2Anonymous0$this$02534 : Field ref;
var java.util.Vector$terpword.FontSelectorDialog$vcFontnames2397 : Field ref;
var java.lang.String$terpword.FontSelectorDialog$fontName2399 : Field ref;
var java.lang.String$terpword.FontSelectorDialog$defaultText2402 : Field ref;
var javax.swing.JComboBox$terpword.FontSelectorDialog$jcmbFontlist2398 : Field ref;
var javax.swing.JTextPane$terpword.FontSelectorDialog$jtpFontPreview2401 : Field ref;
var javax.swing.JOptionPane$terpword.FontSelectorDialog$jOptionPane2400 : Field ref;
var terpword.EkitCore$terpword.FormatAction$parentEkit1686 : Field ref;
var javax.swing.text.html.HTML$Tag$terpword.FormatAction$htmlTag1687 : Field ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$NAME1577 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$HREF1578 : ref;
var java.net.URL$terpword.PatchedHTMLEditorKit$LinkController$currentUrl2406 : Field ref;
var javax.swing.event.HyperlinkEvent$EventType$javax.swing.event.HyperlinkEvent$EventType$ENTERED2456 : ref;
var javax.swing.event.HyperlinkEvent$EventType$javax.swing.event.HyperlinkEvent$EventType$ACTIVATED2458 : ref;
var javax.swing.event.HyperlinkEvent$EventType$javax.swing.event.HyperlinkEvent$EventType$EXITED2457 : ref;
var java.util.Hashtable$terpword.HTMLUtilities$tags1879 : Field ref;
var terpword.EkitCore$terpword.HTMLUtilities$parent1878 : Field ref;
var javax.swing.text.html.HTML$Tag$javax.swing.text.html.HTML$Tag$HTML824 : ref;
var terpword.ImageDialog$terpword.ImageDialog$1Anonymous0$this$02535 : Field ref;
var java.lang.String$lp$$rp$$terpword.ImageDialog$Borders2415 : Field ref;
var java.lang.String$lp$$rp$$terpword.ImageDialog$BorderColors2416 : Field ref;
var java.lang.String$lp$$rp$$terpword.ImageDialog$BorderSizes2417 : Field ref;
var java.lang.String$lp$$rp$$terpword.ImageDialog$Wraps2418 : Field ref;
var java.lang.String$terpword.ImageDialog$ImageDir2431 : Field ref;
var java.lang.String$lp$$rp$$terpword.ImageDialog$Images2432 : Field ref;
var terpword.EkitCore$terpword.ImageDialog$ParentEkit2419 : Field ref;
var java.lang.String$terpword.ImageDialog$SelectedImage2434 : Field ref;
var javax.swing.JList$terpword.ImageDialog$ImageList2426 : Field ref;
var java.lang.String$terpword.ImageDialog$PreviewImage2433 : Field ref;
var javax.swing.JEditorPane$terpword.ImageDialog$PreviewPane2430 : Field ref;
var terpword.ExtendedHTMLEditorKit$terpword.ImageDialog$ImageHtmlKit2420 : Field ref;
var javax.swing.text.html.HTMLDocument$terpword.ImageDialog$ImageHtmlDoc2421 : Field ref;
var javax.swing.JTextField$terpword.ImageDialog$ImageAltText2427 : Field ref;
var javax.swing.JTextField$terpword.ImageDialog$ImageWidth2428 : Field ref;
var javax.swing.JTextField$terpword.ImageDialog$ImageHeight2429 : Field ref;
var javax.swing.JList$terpword.ImageDialog$WrapList2422 : Field ref;
var javax.swing.JList$terpword.ImageDialog$BorderSizeList2424 : Field ref;
var int$terpword.ImageFileChooserPreview$previewWidth0 : int;
var int$terpword.ImageFileChooserPreview$previewHeight0 : int;
var javax.swing.ImageIcon$terpword.ImageFileChooserPreview$imageThumb2435 : Field ref;
var java.io.File$terpword.ImageFileChooserPreview$imageFile2436 : Field ref;
var java.awt.datatransfer.DataFlavor$java.awt.datatransfer.DataFlavor$imageFlavor2439 : ref;
var terpword.EkitCore$terpword.ListAutomationAction$parentEkit1543 : Field ref;
var javax.swing.text.html.HTML$Tag$terpword.ListAutomationAction$baseTag1544 : Field ref;
var terpword.HTMLUtilities$terpword.ListAutomationAction$htmlUtilities1546 : Field ref;
var java.lang.String$lp$$rp$$terpword.MutableFilter$acceptableExtensions1647 : Field ref;
var java.lang.String$terpword.MutableFilter$descriptor1648 : Field ref;
var int$terpword.PatchedHTMLEditorKit$JUMP0 : int;
var int$terpword.PatchedHTMLEditorKit$MOVE0 : int;
var terpword.PatchedHTMLEditorKit$LinkController$terpword.PatchedHTMLEditorKit$myController2407 : Field ref;
var java.awt.Component$terpword.PrintUtilities$componentToBePrinted1703 : Field ref;
var int$java.awt.print.Printable$NO_SUCH_PAGE0 : int;
var int$java.awt.print.Printable$PAGE_EXISTS0 : int;
var java.util.Hashtable$terpword.PropertiesDialog$htInputFields1740 : Field ref;
var javax.swing.JOptionPane$terpword.PropertiesDialog$jOptionPane1739 : Field ref;
var java.lang.String$terpword.RelativeImageView$TOP2346 : ref;
var java.lang.String$terpword.RelativeImageView$TEXTTOP2347 : ref;
var java.lang.String$terpword.RelativeImageView$MIDDLE2348 : ref;
var java.lang.String$terpword.RelativeImageView$ABSMIDDLE2349 : ref;
var java.lang.String$terpword.RelativeImageView$CENTER2350 : ref;
var java.lang.String$terpword.RelativeImageView$BOTTOM2351 : ref;
var java.lang.String$terpword.RelativeImageView$IMAGE_CACHE_PROPERTY2352 : ref;
var java.lang.String$terpword.RelativeImageView$PENDING_IMAGE_SRC2355 : ref;
var java.lang.String$terpword.RelativeImageView$MISSING_IMAGE_SRC2356 : ref;
var int$terpword.RelativeImageView$DEFAULT_WIDTH0 : int;
var int$terpword.RelativeImageView$DEFAULT_HEIGHT0 : int;
var int$terpword.RelativeImageView$DEFAULT_BORDER0 : int;
var boolean$terpword.RelativeImageView$sIsInc0 : int;
var int$terpword.RelativeImageView$sIncRate0 : int;
var javax.swing.text.AttributeSet$terpword.RelativeImageView$attr2357 : Field ref;
var boolean$terpword.RelativeImageView$bLoading0 : Field int;
var int$terpword.RelativeImageView$fWidth0 : Field int;
var int$terpword.RelativeImageView$fHeight0 : Field int;
var javax.swing.text.Element$terpword.RelativeImageView$fElement2358 : Field ref;
var java.awt.Image$terpword.RelativeImageView$fImage2359 : Field ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$SRC1589 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$HEIGHT1575 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$WIDTH1574 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$BORDER1610 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$HSPACE1590 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$VSPACE1591 : ref;
var javax.swing.text.html.HTML$Attribute$javax.swing.text.html.HTML$Attribute$ALIGN1576 : ref;
var java.awt.Container$terpword.RelativeImageView$fContainer2360 : Field ref;
var java.awt.Component$terpword.RelativeImageView$fComponent2362 : Field ref;
var java.awt.Rectangle$terpword.RelativeImageView$fBounds2361 : Field ref;
var int$java.awt.Rectangle$x0 : Field int;
var int$java.awt.Rectangle$y0 : Field int;
var java.awt.Color$java.awt.Color$lightGray382 : ref;
var javax.swing.Icon$terpword.RelativeImageView$sMissingImageIcon2354 : ref;
var javax.swing.Icon$terpword.RelativeImageView$sPendingImageIcon2353 : ref;
var int$java.awt.Rectangle$width0 : Field int;
var int$java.awt.Rectangle$height0 : Field int;
var javax.swing.text.Position$Bias$javax.swing.text.Position$Bias$Forward2365 : ref;
var javax.swing.text.Position$Bias$javax.swing.text.Position$Bias$Backward2366 : ref;
var int$java.awt.Dimension$width0 : Field int;
var int$java.awt.Dimension$height0 : Field int;
var int$java.awt.Point$x0 : Field int;
var int$java.awt.Point$y0 : Field int;
var java.awt.Point$terpword.RelativeImageView$fGrowBase2363 : Field ref;
var boolean$terpword.RelativeImageView$fGrowProportionally0 : Field int;
var java.lang.Class$terpword.RelativeImageView$class$terpword$RelativeImageView2364 : ref;
var java.lang.String$terpword.SearchDialog$inputFindTerm1875 : Field ref;
var java.lang.String$terpword.SearchDialog$inputReplaceTerm1876 : Field ref;
var boolean$terpword.SearchDialog$bCaseSensitive0 : Field int;
var boolean$terpword.SearchDialog$bStartAtTop0 : Field int;
var boolean$terpword.SearchDialog$bReplaceAll0 : Field int;
var javax.swing.JOptionPane$terpword.SearchDialog$jOptionPane1877 : Field ref;
var java.lang.String$terpword.SetFontFamilyAction$name1880 : Field ref;
var terpword.EkitCore$terpword.SetFontFamilyAction$parentEkit1881 : Field ref;
var java.lang.String$terpword.SetFontSizeAction$name1822 : Field ref;
var terpword.EkitCore$terpword.SetFontSizeAction$parentEkit1823 : Field ref;
var int$terpword.SimpleInfoDialog$ERROR0 : int;
var int$terpword.SimpleInfoDialog$INFO0 : int;
var int$terpword.SimpleInfoDialog$WARNING0 : int;
var int$terpword.SimpleInfoDialog$QUESTION0 : int;
var int$terpword.SimpleInfoDialog$PLAIN0 : int;
var java.lang.Integer$terpword.SimpleInfoDialog$buttonState899 : Field ref;
var java.lang.Object$lp$$rp$$terpword.SimpleInfoDialog$buttonLabels898 : Field ref;
var javax.swing.JOptionPane$terpword.SimpleInfoDialog$jOptionPane897 : Field ref;
var javax.swing.JEditorPane$terpword.SimpleLinkListener$pane2403 : Field ref;
var javax.swing.JTextField$terpword.SimpleLinkListener$urlField2404 : Field ref;
var javax.swing.JLabel$terpword.SimpleLinkListener$statusBar2405 : Field ref;
var java.lang.String$terpword.SymbolDialog$SYMBOLS2498 : ref;
var terpword.EkitCore$terpword.SymbolDialog$parentEkit2499 : Field ref;
var javax.swing.ButtonGroup$terpword.SymbolDialog$buttonGroup2500 : Field ref;
var java.lang.String$terpword.SymbolDialog$returnSymbol2501 : Field ref;
var terpword.TableInputDialog$terpword.TableInputDialog$1Anonymous0$this$02536 : Field ref;
var terpword.TableInputDialog$terpword.TableInputDialog$2Anonymous1$this$02537 : Field ref;
var java.lang.Object$lp$$rp$$terpword.TableInputDialog$2Anonymous1$val$buttonLabels2502 : Field ref;
var javax.swing.JTextField$terpword.TableInputDialog$2Anonymous1$val$jtxfRows2503 : Field ref;
var javax.swing.JTextField$terpword.TableInputDialog$2Anonymous1$val$jtxfCols2505 : Field ref;
var javax.swing.JTextField$terpword.TableInputDialog$2Anonymous1$val$jtxfBorder2506 : Field ref;
var javax.swing.JTextField$terpword.TableInputDialog$2Anonymous1$val$jtxfSpace2507 : Field ref;
var javax.swing.JTextField$terpword.TableInputDialog$2Anonymous1$val$jtxfPad2504 : Field ref;
var java.lang.String$terpword.TableInputDialog$inputRows2508 : Field ref;
var java.lang.String$terpword.TableInputDialog$inputCols2509 : Field ref;
var java.lang.String$terpword.TableInputDialog$inputBorder2510 : Field ref;
var java.lang.String$terpword.TableInputDialog$inputSpace2511 : Field ref;
var java.lang.String$terpword.TableInputDialog$inputPad2512 : Field ref;
var javax.swing.JOptionPane$terpword.TableInputDialog$jOptionPane2513 : Field ref;
var int$terpword.UnicodeDialog$UNICODE_BASE0 : int;
var int$terpword.UnicodeDialog$UNICODE_SIGS0 : int;
var int$terpword.UnicodeDialog$UNICODE_SPEC0 : int;
var int$terpword.UnicodeDialog$UNICODE_MATH0 : int;
var int$terpword.UnicodeDialog$UNICODE_DRAW0 : int;
var int$terpword.UnicodeDialog$UNICODE_DING0 : int;
var int$terpword.UnicodeDialog$UNICODEBLOCKSIZE0 : int;
var java.lang.String$terpword.UnicodeDialog$CMDCHANGEBLOCK1741 : ref;
var java.lang.String$lp$$rp$$terpword.UnicodeDialog$unicodeBlocks1742 : ref;
var int$lp$$rp$$terpword.UnicodeDialog$unicodeBlockStart1743 : Field ref;
var int$lp$$rp$$terpword.UnicodeDialog$unicodeBlockEnd1744 : Field ref;
var javax.swing.JToggleButton$lp$$rp$$terpword.UnicodeDialog$buttonArray1747 : Field ref;
var terpword.EkitCore$terpword.UnicodeDialog$parentEkit1745 : Field ref;
var javax.swing.JComboBox$terpword.UnicodeDialog$jcmbBlockSelector1749 : Field ref;
var javax.swing.JComboBox$terpword.UnicodeDialog$jcmbPageSelector1750 : Field ref;
var java.awt.Font$terpword.UnicodeDialog$buttonFont1746 : Field ref;
var javax.swing.ButtonGroup$terpword.UnicodeDialog$buttonGroup1748 : Field ref;
var int$java.awt.Insets$left0 : Field int;
var int$java.awt.Insets$right0 : Field int;
var int$java.awt.Insets$top0 : Field int;
var int$java.awt.Insets$bottom0 : Field int;
var java.lang.String$terpword.UserInputAnchorDialog$inputText895 : Field ref;
var javax.swing.JTextField$terpword.UserInputAnchorDialog$jtxfInput896 : Field ref;
var terpword.EkitCore$terpword.UserInputAnchorDialog$parentEkit894 : Field ref;
var terpword.UserInputDialog$terpword.UserInputDialog$1Anonymous0$this$02538 : Field ref;
var terpword.UserInputDialog$terpword.UserInputDialog$2Anonymous2$this$02539 : Field ref;
var java.lang.Object$lp$$rp$$terpword.UserInputDialog$2Anonymous2$val$buttonLabels2517 : Field ref;
var javax.swing.JTextField$terpword.UserInputDialog$2Anonymous2$val$jtxfInput2516 : Field ref;
var terpword.UserInputDialog$terpword.UserInputDialog$3Anonymous1$this$02540 : Field ref;
var java.lang.Object$lp$$rp$$terpword.UserInputDialog$3Anonymous1$val$buttonLabels2518 : Field ref;
var java.lang.String$terpword.UserInputDialog$inputText2519 : Field ref;
var javax.swing.JOptionPane$terpword.UserInputDialog$jOptionPane2520 : Field ref;
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
function $realOp32241(x:int, y:int) returns ($ret:int);
function $realOp32086(x:int, y:int) returns ($ret:int);
function $realOp32117(x:int, y:int) returns ($ret:int);
function $realOp32179(x:int, y:int) returns ($ret:int);
procedure $new(obj_type:javaType) returns ($obj:ref);    requires $heap[$obj,$alloc] == false;    ensures $heap[$obj,$alloc] == true;    ensures $obj != $null;    ensures $heap[$obj,$type] == obj_type;    

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$alloc] == true;    ensures $other != $null;    ensures $heap[$other,$type] == $heap[$this,$type];    

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    ensures ($this == $other ==> $return == 1) && ($this != $other ==> $return == 0);    

procedure void$terpword.CsdMinimalHtmlWriter$$la$init$ra$$1889($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$javax.swing.text.html.MinimalHTMLWriter$$la$init$ra$$1892($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$terpword.CsdMinimalHtmlWriter$initialize$1890($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractWriter$setIndentSpace$1942($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractWriter$setLineSeparator$1944($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractWriter$setLineLength$1935($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure java.lang.String$terpword.CsdRtfConverter$convertRtfToHtml$2140($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.rtf.RTFEditorKit$$la$init$ra$$2184($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.StyleContext$$la$init$ra$$2210($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.DefaultStyledDocument$$la$init$ra$$2143($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.StringReader$$la$init$ra$$2174($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.rtf.RTFEditorKit$read$2188($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    

procedure void$java.io.StringWriter$$la$init$ra$$2190($this:ref) returns ($exception:ref);    

procedure int$javax.swing.text.AbstractDocument$getLength$2261($this:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.text.html.MinimalHTMLWriter$write$1893($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.io.StringWriter$toString$2199($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.String$replaceAll$115($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.StringBuffer$$la$init$ra$$685($this:ref) returns ($exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$701($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Throwable$toString$20($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.StringBuffer$toString$738($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.Exception$$la$init$ra$$629($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$terpword.CsdRtfConverter$$la$init$ra$$2141($this:ref) returns ($exception:ref);    

procedure void$java.lang.Object$$la$init$ra$$38($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$UndoAction$$la$init$ra$$4024($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.AbstractAction$$la$init$ra$$4009($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.AbstractAction$setEnabled$4014($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.EkitCore$UndoAction$actionPerformed$4025($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.undo.UndoManager$undo$8557($this:ref) returns ($exception:ref);    

procedure void$java.lang.Throwable$printStackTrace$21($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$UndoAction$updateUndoState$4026($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$RedoAction$updateRedoState$4029($this:ref) returns ($exception:ref);    

procedure boolean$javax.swing.undo.UndoManager$canUndo$8558($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$RedoAction$$la$init$ra$$4027($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$RedoAction$actionPerformed$4028($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.undo.UndoManager$redo$8559($this:ref) returns ($exception:ref);    

procedure boolean$javax.swing.undo.UndoManager$canRedo$8560($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$1Anonymous1$caretUpdate$4030($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$handleSourceCaretPositionChange$access$1$4140($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$1Anonymous1$$la$init$ra$$4031($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$2Anonymous0$caretUpdate$4032($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure void$terpword.EkitCore$handleCaretPositionChange$access$0$4139($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure void$terpword.EkitCore$2Anonymous0$$la$init$ra$$4033($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$CustomUndoableEditListener$undoableEditHappened$4034($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.undo.UndoableEdit$javax.swing.event.UndoableEditEvent$getEdit$2934($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$javax.swing.undo.UndoManager$addEdit$8561($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$CustomUndoableEditListener$$la$init$ra$$4035($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.SimpleInfoDialog$1Anonymous0$propertyChange$4326($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$java.beans.PropertyChangeEvent$getPropertyName$4201($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.awt.Component$isVisible$3673($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.EventObject$getSource$3106($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.JOptionPane$terpword.SimpleInfoDialog$get$jOptionPane$access$0$4331($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.String$equals$83($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$java.awt.Dialog$setVisible$4402($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.SimpleInfoDialog$1Anonymous0$$la$init$ra$$4327($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.CustomAction$$la$init$ra$$3988($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.text.StyledEditorKit$StyledTextAction$$la$init$ra$$3993($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.CustomAction$$la$init$ra$$3989($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.util.Hashtable$$la$init$ra$$2031($this:ref) returns ($exception:ref);    

procedure void$terpword.CustomAction$actionPerformed$3990($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure boolean$javax.swing.AbstractAction$isEnabled$4013($this:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.JTextPane$terpword.EkitCore$getTextPane$4092($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$javax.swing.text.JTextComponent$getSelectedText$3202($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Frame$terpword.EkitCore$getFrame$4094($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.SimpleInfoDialog$$la$init$ra$$4328($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref, $in_parameter__4:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure int$javax.swing.text.JTextComponent$getSelectionStart$3205($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$javax.swing.text.html.HTML$Tag$toString$4147($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.JTextComponent$select$3209($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure javax.swing.text.AttributeSet$javax.swing.JTextPane$getCharacterAttributes$4282($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.SimpleAttributeSet$$la$init$ra$$4158($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.util.Enumeration$javax.swing.text.SimpleAttributeSet$getAttributeNames$4165($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.util.Enumeration$hasMoreElements$2466($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.Enumeration$nextElement$2467($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$javax.swing.text.SimpleAttributeSet$getAttribute$4166($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Object$toString$44($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.String$toLowerCase$120($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.SimpleAttributeSet$$la$init$ra$$4157($this:ref) returns ($exception:ref);    

procedure boolean$java.util.Hashtable$containsKey$2039($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.UserInputAnchorDialog$$la$init$ra$$4320($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$terpword.UserInputAnchorDialog$getInputText$4323($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Window$dispose$4469($this:ref) returns ($exception:ref);    

procedure java.lang.Object$java.util.Hashtable$put$2042($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Component$repaint$3775($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JColorChooser$$la$init$ra$$4294($this:ref) returns ($exception:ref);    

procedure java.awt.Color$javax.swing.JColorChooser$showDialog$4292($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$ForegroundAction$$la$init$ra$$4318($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$ForegroundAction$actionPerformed$4319($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$java.util.Hashtable$size$2033($this:ref) returns ($return:int, $exception:ref);    

procedure java.util.Enumeration$java.util.Hashtable$keys$2035($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$java.util.Hashtable$get$2040($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.CustomAction$insertAttribute$3991($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure void$javax.swing.text.SimpleAttributeSet$addAttribute$4169($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.JTextPane$setCharacterAttributes$4283($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$terpword.EkitCore$refreshOnUpdate$4118($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JComponent$requestFocus$3324($this:ref) returns ($exception:ref);    

procedure java.util.Enumeration$javax.swing.text.AttributeSet$getAttributeNames$2022($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$javax.swing.text.AttributeSet$getAttribute$2021($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.CustomAction$insertAttr$3992($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure boolean$javax.swing.text.SimpleAttributeSet$isDefined$4162($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.text.SimpleAttributeSet$removeAttribute$4171($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.Ekit$$la$init$ra$$6831($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:int, $in_parameter__7:int, $in_parameter__8:ref, $in_parameter__9:ref, $in_parameter__10:int, $in_parameter__11:int, $in_parameter__12:int, $in_parameter__13:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$javax.swing.JFrame$$la$init$ra$$6838($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$$la$init$ra$$4037($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:int, $in_parameter__7:int, $in_parameter__8:ref, $in_parameter__9:ref, $in_parameter__10:int, $in_parameter__11:int, $in_parameter__12:int, $in_parameter__13:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$setFrame$4095($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.awt.Container$javax.swing.JFrame$getContentPane$6860($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.GridBagLayout$$la$init$ra$$7146($this:ref) returns ($exception:ref);    

procedure void$java.awt.Container$setLayout$3537($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.GridBagConstraints$$la$init$ra$$7101($this:ref) returns ($exception:ref);    

procedure javax.swing.JToolBar$terpword.EkitCore$getToolBarMain$4099($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Container$add$3520($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure javax.swing.JToolBar$terpword.EkitCore$getToolBarStyles$4100($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$java.awt.BorderLayout$$la$init$ra$$7180($this:ref) returns ($exception:ref);    

procedure javax.swing.JToolBar$terpword.EkitCore$getToolBar$4098($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure javax.swing.JMenuBar$terpword.EkitCore$getMenuBar$4096($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JFrame$setJMenuBar$6850($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.Ekit$updateTitle$6834($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure void$java.awt.Window$pack$4454($this:ref) returns ($exception:ref);    

procedure void$java.awt.Window$setVisible$4463($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.Ekit$$la$init$ra$$6832($this:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.Ekit$processWindowEvent$6833($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure int$java.awt.AWTEvent$getID$4234($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$dispose$4119($this:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$javax.swing.JFrame$processWindowEvent$6844($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$terpword.EkitCore$getAppName$4107($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.io.File$getName$6881($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Frame$setTitle$4614($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.Ekit$usage$6835() returns ($exception:ref);    

procedure java.awt.image.BufferedImage$terpword.Ekit$getIcon$6836($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.image.BufferedImage$$la$init$ra$$6937($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure java.awt.Graphics2D$java.awt.image.BufferedImage$createGraphics$6957($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Graphics$setColor$5345($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Graphics$fillRect$5359($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$java.awt.Font$$la$init$ra$$2561($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure void$java.awt.Graphics$setFont$5349($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.PrintStream$println$217($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.FileReader$$la$init$ra$$7099($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.BufferedReader$$la$init$ra$$7083($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$java.io.BufferedReader$readLine$7090($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Graphics2D$drawString$7050($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure void$java.io.PrintStream$println$218($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.Ekit$main$6837($in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure boolean$java.lang.String$startsWith$92($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.lang.String$substring$108($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure void$java.net.URL$$la$init$ra$$1408($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Throwable$printStackTrace$22($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$java.lang.String$indexOf$95($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure void$terpword.FileDialog$1Anonymous0$valueChanged$8335($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure boolean$javax.swing.event.ListSelectionEvent$getValueIsAdjusting$11886($this:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.JList$terpword.FileDialog$get$FileList$access$0$8341($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.ListSelectionModel$javax.swing.JList$getSelectionModel$9791($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$javax.swing.ListSelectionModel$isSelectionEmpty$11837($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$lp$$rp$$terpword.FileDialog$get$Files$access$2$8343($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure int$javax.swing.ListSelectionModel$getMinSelectionIndex$11829($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$terpword.FileDialog$set$SelectedFile$access$1$8342($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$terpword.FileDialog$1Anonymous0$$la$init$ra$$8336($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.ExtendedHTMLEditorKit$HTMLFactoryExtended$$la$init$ra$$8419($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$HTMLFactory$$la$init$ra$$11804($this:ref) returns ($exception:ref);    

procedure javax.swing.text.View$terpword.ExtendedHTMLEditorKit$HTMLFactoryExtended$create$8420($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure javax.swing.text.AttributeSet$javax.swing.text.Element$getAttributes$2070($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.RelativeImageView$$la$init$ra$$11766($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure javax.swing.text.View$javax.swing.text.html.HTMLEditorKit$HTMLFactory$create$11805($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.HelpBrowser$1Anonymous1$actionPerformed$8426($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$java.awt.event.ActionEvent$getActionCommand$4153($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JEditorPane$setPage$3014($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JLabel$setText$12046($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.HelpBrowser$1Anonymous1$$la$init$ra$$8427($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.HelpBrowser$2Anonymous0$windowClosing$8428($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.Window$java.awt.event.WindowEvent$getWindow$5590($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.HelpBrowser$2Anonymous0$$la$init$ra$$8429($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.awt.event.WindowAdapter$$la$init$ra$$11695($this:ref) returns ($exception:ref);    

procedure void$terpword.PropertiesDialog$1Anonymous0$propertyChange$8527($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.JOptionPane$terpword.PropertiesDialog$get$jOptionPane$access$0$8533($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$javax.swing.JOptionPane$getValue$5042($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.Object$equals$42($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.PropertiesDialog$1Anonymous0$$la$init$ra$$8528($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.SearchDialog$1Anonymous1$propertyChange$9161($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure javax.swing.JOptionPane$terpword.SearchDialog$get$jOptionPane$access$0$9171($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JOptionPane$setValue$5041($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$javax.swing.text.JTextComponent$getText$3201($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.SearchDialog$set$inputFindTerm$access$1$9172($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure boolean$javax.swing.AbstractButton$isSelected$9234($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.SearchDialog$set$bCaseSensitive$access$2$9173($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $heap;

procedure boolean$terpword.SearchDialog$set$bStartAtTop$access$3$9174($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $heap;

procedure java.lang.String$terpword.SearchDialog$set$inputReplaceTerm$access$4$9175($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure boolean$terpword.SearchDialog$set$bReplaceAll$access$5$9176($in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    modifies $heap;

procedure void$terpword.SearchDialog$1Anonymous1$$la$init$ra$$9162($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int, $in_parameter__5:ref, $in_parameter__6:ref, $in_parameter__7:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.SearchDialog$2Anonymous0$windowClosing$9163($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.lang.Integer$$la$init$ra$$971($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.SearchDialog$2Anonymous0$$la$init$ra$$9164($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$$la$clinit$ra$$4023() returns ($exception:ref);    modifies int$terpword.EkitCore$TOOLBAR_STYLES0, java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNC755, java.lang.String$terpword.EkitCore$KEY_TOOL_REDO745, java.lang.String$terpword.EkitCore$KEY_MENU_FORMAT732, java.lang.String$terpword.EkitCore$KEY_TOOL_FIND760, java.lang.String$terpword.EkitCore$KEY_TOOL_UNDERLINE748, java.lang.String$terpword.EkitCore$KEY_TOOL_UNDO744, int$terpword.EkitCore$TOOLBAR_FORMAT0, java.lang.String$terpword.EkitCore$KEY_TOOL_FONTSIZE766, java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNR756, java.lang.String$terpword.EkitCore$KEY_TOOL_ITALIC747, java.lang.String$terpword.EkitCore$KEY_MENU_EDIT729, java.lang.String$terpword.EkitCore$KEY_MENU_VIEW730, java.lang.String$terpword.EkitCore$KEY_TOOL_SUPER750, java.lang.String$terpword.EkitCore$KEY_MENU_FILE728, java.lang.String$terpword.EkitCore$KEY_TOOL_ULIST752, java.lang.String$terpword.EkitCore$KEY_TOOL_COPY742, java.lang.String$terpword.EkitCore$KEY_TOOL_OLIST753, java.util.Hashtable$terpword.EkitCore$htMenus767, java.lang.String$terpword.EkitCore$KEY_MENU_FONT731, java.util.Hashtable$terpword.EkitCore$htTools768, $stringSizeHeap, java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNJ757, java.lang.String$terpword.EkitCore$KEY_MENU_TABLE734, java.lang.String$terpword.EkitCore$KEY_TOOL_SOURCE762, java.lang.String$terpword.EkitCore$KEY_MENU_SEARCH735, java.lang.String$terpword.EkitCore$KEY_TOOL_ANCHOR761, java.lang.String$terpword.EkitCore$KEY_TOOL_CUT741, java.lang.String$terpword.EkitCore$KEY_TOOL_STYLES764, java.lang.String$terpword.EkitCore$KEY_TOOL_ALIGNL754, java.lang.String$terpword.EkitCore$KEY_TOOL_BOLD746, java.lang.String$terpword.EkitCore$KEY_TOOL_STRIKE749, java.lang.String$terpword.EkitCore$KEY_TOOL_PASTE743, java.lang.String$terpword.EkitCore$KEY_TOOL_UNIMATH759, java.lang.String$terpword.EkitCore$KEY_TOOL_SUB751, int$terpword.EkitCore$TOOLBAR_MAIN0, java.lang.String$terpword.EkitCore$KEY_TOOL_NEW738, java.lang.String$terpword.EkitCore$KEY_TOOL_SAVE740, java.lang.String$terpword.EkitCore$KEY_TOOL_OPEN739, java.lang.String$terpword.EkitCore$KEY_TOOL_SPLITPANEL763, java.lang.String$terpword.EkitCore$KEY_TOOL_UNICODE758, java.lang.String$terpword.EkitCore$KEY_MENU_HELP736, java.lang.String$terpword.EkitCore$KEY_TOOL_FONTS765, java.lang.String$terpword.EkitCore$KEY_MENU_INSERT733, java.lang.String$terpword.EkitCore$KEY_TOOL_SEP737;

procedure void$terpword.EkitCore$$la$init$ra$$4036($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:ref, $in_parameter__5:int, $in_parameter__6:int, $in_parameter__7:int, $in_parameter__8:int, $in_parameter__9:ref, $in_parameter__10:ref, $in_parameter__11:int, $in_parameter__12:int, $in_parameter__13:int, $in_parameter__14:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$javax.swing.JPanel$$la$init$ra$$4214($this:ref) returns ($exception:ref);    

procedure void$java.util.Stack$$la$init$ra$$8534($this:ref) returns ($exception:ref);    

procedure void$terpword.HTMLUtilities$$la$init$ra$$9179($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.awt.Frame$$la$init$ra$$4606($this:ref) returns ($exception:ref);    

procedure void$java.util.Vector$$la$init$ra$$2390($this:ref) returns ($exception:ref);    

procedure void$java.lang.String$$la$init$ra$$53($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$java.util.Vector$add$2423($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.Stack$push$8535($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.SecurityManager$java.lang.System$getSecurityManager$7120() returns ($return:ref, $exception:ref);    

procedure void$java.lang.SecurityManager$checkSystemClipboardAccess$1479($this:ref) returns ($exception:ref);    

procedure java.awt.Toolkit$java.awt.Toolkit$getDefaultToolkit$6276() returns ($return:ref, $exception:ref);    

procedure java.awt.datatransfer.Clipboard$java.awt.Toolkit$getSystemClipboard$6289($this:ref) returns ($return:ref, $exception:ref);    

procedure java.util.ResourceBundle$java.util.ResourceBundle$getBundle$6501($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.EkitCore$logException$4121($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.JTextPane$$la$init$ra$$4267($this:ref) returns ($exception:ref);    

procedure void$terpword.ExtendedHTMLEditorKit$$la$init$ra$$8421($this:ref) returns ($exception:ref);    

procedure javax.swing.text.Document$terpword.ExtendedHTMLEditorKit$createDefaultDocument$8423($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.text.html.StyleSheet$javax.swing.text.html.HTMLDocument$getStyleSheet$8729($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Cursor$$la$init$ra$$6153($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$setDefaultCursor$8507($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Component$setCursor$3765($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JTextPane$setEditorKit$4290($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JTextPane$setDocument$4270($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Insets$$la$init$ra$$5391($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$setMargin$3151($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Component$addKeyListener$3831($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Component$addFocusListener$3818($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$setDragEnabled$3160($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure java.lang.String$javax.swing.JEditorPane$getText$3035($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JEditorPane$setText$3034($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JTextPane$$la$init$ra$$4268($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Color$$la$init$ra$$2523($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setBackground$3378($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$setSelectionColor$3178($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.text.Document$javax.swing.text.JTextComponent$getDocument$3148($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.Document$addDocumentListener$2088($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$addCaretListener$3143($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.undo.UndoManager$$la$init$ra$$8545($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.Document$addUndoableEditListener$2090($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$setCaretPosition$3198($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure java.io.InputStream$java.net.URL$openStream$1433($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.InputStreamReader$$la$init$ra$$7201($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.StyleSheet$loadRules$8140($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$java.io.BufferedReader$close$7096($this:ref) returns ($exception:ref);    

procedure void$terpword.ExtendedHTMLDocument$$la$init$ra$$8415($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$registerDocument$4064($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.io.File$$la$init$ra$$6877($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$java.io.File$exists$6895($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$openDocument$4083($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure javax.swing.Action$lp$$rp$$javax.swing.text.JTextComponent$getActions$3150($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$javax.swing.Action$getValue$2989($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$BoldAction$$la$init$ra$$8211($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$ItalicAction$$la$init$ra$$9066($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$UnderlineAction$$la$init$ra$$8424($this:ref) returns ($exception:ref);    

procedure void$terpword.FormatAction$$la$init$ra$$8410($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.ListAutomationAction$$la$init$ra$$8196($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.SetFontFamilyAction$$la$init$ra$$9193($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.text.StyledEditorKit$AlignmentAction$$la$init$ra$$9177($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.JMenu$$la$init$ra$$8650($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JMenuItem$$la$init$ra$$8279($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.AbstractButton$setActionCommand$9267($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.AbstractButton$addActionListener$9315($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.KeyStroke$javax.swing.KeyStroke$getKeyStroke$5404($in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JMenuItem$setAccelerator$8293($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.ImageIcon$terpword.EkitCore$getEkitIcon$4120($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.AbstractButton$setIcon$9241($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.JMenuItem$javax.swing.JMenu$add$8667($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JMenu$addSeparator$8674($this:ref) returns ($exception:ref);    

procedure java.util.Stack$terpword.EkitCore$readState$4136($this:ref) returns ($return:ref, $exception:ref);    modifies $stringSizeHeap;

procedure int$java.util.Vector$size$2400($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.Vector$elementAt$2408($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$java.util.Vector$get$2421($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JMenuItem$$la$init$ra$$8280($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.AbstractButton$setText$9233($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JCheckBoxMenuItem$$la$init$ra$$9200($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$FontSizeAction$$la$init$ra$$9191($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.JMenuBar$$la$init$ra$$5595($this:ref) returns ($exception:ref);    

procedure javax.swing.JMenu$javax.swing.JMenuBar$add$5602($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.JButtonNoFocus$$la$init$ra$$9212($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setToolTipText$3387($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JButtonNoFocus$$la$init$ra$$9213($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JButtonNoFocus$$la$init$ra$$9211($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JToggleButtonNoFocus$$la$init$ra$$8476($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JButtonNoFocus$$la$init$ra$$9210($this:ref) returns ($exception:ref);    

procedure void$terpword.JToggleButtonNoFocus$$la$init$ra$$8477($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.Dimension$javax.swing.JComponent$getPreferredSize$3333($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JComponent$setPreferredSize$3332($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.Dimension$javax.swing.JComponent$getMinimumSize$3337($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JComponent$setMinimumSize$3336($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.Dimension$javax.swing.JComponent$getMaximumSize$3335($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JComponent$setMaximumSize$3334($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.GraphicsEnvironment$java.awt.GraphicsEnvironment$getLocalGraphicsEnvironment$8255() returns ($return:ref, $exception:ref);    

procedure java.lang.String$lp$$rp$$java.awt.GraphicsEnvironment$getAvailableFontFamilyNames$8266($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.util.Vector$$la$init$ra$$2389($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$java.util.Collections$sort$8910($in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JComboBoxNoFocus$$la$init$ra$$8328($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$java.util.Vector$indexOf$2404($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.JComboBox$setAction$8620($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Dimension$$la$init$ra$$5189($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$setSelectedIndex$8592($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$setMaximumRowCount$8584($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.SetFontSizeAction$$la$init$ra$$8907($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JToolBar$$la$init$ra$$7216($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JToolBar$setFloatable$7231($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure java.awt.Component$java.awt.Container$add$3503($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JToolBar$Separator$$la$init$ra$$8198($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JScrollPane$$la$init$ra$$8214($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JScrollPane$setVerticalScrollBarPolicy$8224($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$$la$init$ra$$9069($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$setTopComponent$9081($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$setDividerSize$9077($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$setBottomComponent$9085($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$javax.swing.JSplitPane$getDividerLocation$9100($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$$la$init$ra$$4038($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:int, $in_parameter__7:int, $in_parameter__8:ref, $in_parameter__9:ref, $in_parameter__10:int, $in_parameter__11:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4039($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:int, $in_parameter__7:ref, $in_parameter__8:ref, $in_parameter__9:int, $in_parameter__10:int, $in_parameter__11:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4040($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:int, $in_parameter__7:ref, $in_parameter__8:ref, $in_parameter__9:int, $in_parameter__10:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4041($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:ref, $in_parameter__7:ref, $in_parameter__8:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4042($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:ref, $in_parameter__5:ref, $in_parameter__6:int, $in_parameter__7:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4043($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:ref, $in_parameter__5:ref, $in_parameter__6:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4044($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4045($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:ref, $in_parameter__7:ref, $in_parameter__8:int, $in_parameter__9:int, $in_parameter__10:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4046($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:ref, $in_parameter__6:ref, $in_parameter__7:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4047($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4048($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:ref, $in_parameter__5:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4049($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4050($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4051($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4052($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$$la$init$ra$$4053($this:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, java.util.ResourceBundle$terpword.EkitCore$TreePilotProperties788;

procedure void$terpword.EkitCore$actionPerformed$4054($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, $intArrHeap;

procedure int$javax.swing.JOptionPane$showConfirmDialog$5000($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$writeOut$4081($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.lang.String$java.io.File$getAbsolutePath$6886($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.EkitCore$add_to_history_stack$4137($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$updateHistory$4138($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$updateTitle$4116($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure java.lang.String$java.lang.String$substring$107($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure int$java.lang.Integer$parseInt$967($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.text.StyledDocument$javax.swing.JTextPane$getStyledDocument$4272($this:ref) returns ($return:ref, $exception:ref);    

procedure java.io.File$terpword.EkitCore$writeOutRTF$4082($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$terpword.PrintUtilities$$la$init$ra$$8483($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.PrintUtilities$print$8484($this:ref) returns ($exception:ref);    

procedure boolean$java.awt.Component$isShowing$3680($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.awt.Component$hasFocus$3913($this:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.text.JTextComponent$cut$3187($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$copy$3188($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$paste$3189($this:ref) returns ($exception:ref);    

procedure void$terpword.ImageGrabber$$la$init$ra$$8276($this:ref) returns ($exception:ref);    

procedure java.awt.Image$terpword.ImageGrabber$getImageFromClipboard$8275() returns ($return:ref, $exception:ref);    

procedure boolean$javax.imageio.ImageIO$write$8900($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$insertLocalImage$4079($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$java.io.File$deleteOnExit$6903($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setVisible$3375($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.EkitCore$toggleSourceWindow$4123($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$splitPanel$4124($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$insertTable$4066($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.EkitCore$insertTableRow$4067($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$insertTableColumn$4068($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure void$terpword.EkitCore$deleteTableRow$4070($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$deleteTableColumn$4071($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$insertBreak$4072($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$insertNonbreakingSpace$4075($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$insertUnicode$4073($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, $intArrHeap;

procedure void$terpword.EkitCore$doSearch$4077($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.EkitCore$processWordCount$4125($this:ref) returns ($exception:ref);    

procedure java.io.File$java.io.File$getAbsoluteFile$6887($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.io.File$getParent$6882($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.String$replace$111($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure void$terpword.HelpBrowser$$la$init$ra$$8430($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$keyTyped$4055($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap, $intArrHeap;

procedure int$terpword.EkitCore$getCaretPosition$4133($this:ref) returns ($return:int, $exception:ref);    

procedure char$java.awt.event.KeyEvent$getKeyChar$5419($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.HTMLUtilities$delete$9189($this:ref) returns ($exception:ref);    modifies $refArrHeap, $arrSizeHeap, $intArrHeap;

procedure javax.swing.text.Element$javax.swing.text.DefaultStyledDocument$getParagraphElement$2158($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure int$javax.swing.text.Element$getStartOffset$2071($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.HTMLUtilities$checkParentsTag$9183($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.text.Element$terpword.HTMLUtilities$getListItemParent$9184($this:ref) returns ($return:ref, $exception:ref);    

procedure int$javax.swing.text.Element$getEndOffset$2072($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$javax.swing.text.JTextComponent$getText$3184($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure char$lp$$rp$$java.lang.String$toCharArray$125($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.Character$$la$init$ra$$1621($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure boolean$java.lang.Character$isWhitespace$1697($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure javax.swing.text.Element$javax.swing.text.Element$getParentElement$2068($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.HTMLUtilities$removeTag$9181($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    modifies $arrSizeHeap, $intArrHeap;

procedure void$terpword.EkitCore$setCaretPosition$4134($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure int$javax.swing.text.JTextComponent$getCaretPosition$3199($this:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.text.JTextComponent$moveCaretPosition$3192($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JTextPane$replaceSelection$4273($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.event.InputEvent$consume$6644($this:ref) returns ($exception:ref);    

procedure boolean$java.lang.Character$isLetterOrDigit$1668($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure boolean$java.lang.Character$isSpaceChar$1695($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$manageListElement$4076($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $arrSizeHeap, $intArrHeap;

procedure void$terpword.EkitCore$insertListStyle$4065($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.HTMLUtilities$insertListElement$9180($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $arrSizeHeap, $intArrHeap;

procedure void$terpword.EkitCore$keyPressed$4056($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$keyReleased$4057($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$focusGained$4058($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$setFormattersActive$4102($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.EkitCore$focusLost$4059($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$changedUpdate$4060($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$handleDocumentChange$4063($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$insertUpdate$4061($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$removeUpdate$4062($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$terpword.EkitCore$isSourceWindowActive$4122($this:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.text.Document$javax.swing.event.DocumentEvent$getDocument$2930($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.Document$removeDocumentListener$2089($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$purgeUndos$4117($this:ref) returns ($exception:ref);    

procedure java.lang.String$javax.swing.text.Element$getName$2069($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.event.ActionEvent$$la$init$ra$$4150($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:ref) returns ($exception:ref);    

procedure void$terpword.ListAutomationAction$actionPerformed$8197($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$java.lang.StringBuffer$$la$init$ra$$687($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$709($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$702($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.PropertiesDialog$$la$init$ra$$8530($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$terpword.PropertiesDialog$getDecisionValue$8532($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.PropertiesDialog$getFieldValue$8531($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $stringSizeHeap;

procedure void$javax.swing.text.html.HTMLEditorKit$insertHTML$8497($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:ref, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:ref) returns ($exception:ref);    

procedure javax.swing.text.Element$javax.swing.text.DefaultStyledDocument$getCharacterElement$2159($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure int$javax.swing.text.Element$getElementCount$2074($this:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$InsertHTMLTextAction$$la$init$ra$$8450($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$InsertHTMLTextAction$actionPerformed$8458($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.text.Element$javax.swing.text.Element$getElement$2075($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$InsertHTMLTextAction$$la$init$ra$$8451($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:ref, $in_parameter__5:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$insertTableCell$4069($this:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure void$javax.swing.text.AbstractDocument$remove$2270($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$terpword.UnicodeDialog$$la$init$ra$$8541($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap, $intArrHeap;

procedure void$terpword.EkitCore$insertUnicodeChar$4074($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.text.MutableAttributeSet$javax.swing.JTextPane$getInputAttributes$4286($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.AbstractDocument$insertString$2273($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure void$terpword.SearchDialog$$la$init$ra$$9165($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$terpword.SearchDialog$getFindTerm$9166($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.SearchDialog$getReplaceTerm$9167($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$terpword.SearchDialog$getCaseSensitive$9168($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.SearchDialog$getStartAtTop$9169($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.SearchDialog$getReplaceAll$9170($this:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.EkitCore$findText$4078($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($return:int, $exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure int$javax.swing.text.Document$getLength$2087($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$javax.swing.text.Document$getText$2096($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure int$java.lang.String$indexOf$102($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure void$javax.swing.text.Document$remove$2094($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.text.Document$insertString$2095($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure java.io.File$terpword.EkitCore$getImageFromChooser$4087($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.String$terpword.EkitCore$insertFile$4080($this:ref) returns ($return:ref, $exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.lang.String$java.util.ResourceBundle$getString$6495($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.net.URLConnection$java.net.URL$openConnection$1431($this:ref) returns ($return:ref, $exception:ref);    

procedure java.io.InputStream$java.net.URLConnection$getInputStream$5130($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.ObjectInputStream$$la$init$ra$$302($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.Object$java.io.ObjectInputStream$readObject$304($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.FileDialog$$la$init$ra$$8337($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.lang.String$terpword.FileDialog$getSelectedFile$8340($this:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$java.io.ObjectInputStream$close$319($this:ref) returns ($exception:ref);    

procedure java.io.File$terpword.EkitCore$getFileFromChooser$4086($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:ref, $in_parameter__3:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$java.io.FileWriter$$la$init$ra$$8208($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$java.lang.String$indexOf$101($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.io.File$getPath$6884($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.String$concat$110($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$write$8498($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$java.lang.String$$la$init$ra$$52($this:ref) returns ($exception:ref);    

procedure void$terpword.TxtConverter$$la$init$ra$$8474($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.lang.System$getProperty$7129($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$lp$$rp$$java.lang.String$split$118($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.TxtConverter$convertHtmlToTxt$8473($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.Writer$write$599($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.OutputStreamWriter$flush$7555($this:ref) returns ($exception:ref);    

procedure void$java.io.OutputStreamWriter$close$7556($this:ref) returns ($exception:ref);    

procedure void$java.io.FileOutputStream$$la$init$ra$$8434($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.rtf.RTFEditorKit$write$2187($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$java.io.OutputStream$flush$640($this:ref) returns ($exception:ref);    

procedure void$java.io.FileOutputStream$close$8443($this:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$loadDocument$4085($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.lang.String$javax.swing.text.ChangedCharSetException$getCharSetSpec$9064($this:ref) returns ($return:ref, $exception:ref);    

procedure char$java.lang.String$charAt$72($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.lang.String$trim$123($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.EkitCore$loadDocument$4084($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.lang.String$java.io.File$toString$6930($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.AbstractDocument$putProperty$2269($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$java.io.FileInputStream$$la$init$ra$$9115($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.InputStreamReader$$la$init$ra$$7202($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$java.lang.Boolean$$la$init$ra$$850($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$read$8496($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    

procedure java.lang.String$terpword.TxtConverter$convertTxtToHtml$8472($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.Reader$close$2314($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JFileChooser$$la$init$ra$$8785($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JFileChooser$setDialogType$8810($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.MutableFilter$$la$init$ra$$8332($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JFileChooser$setFileFilter$8837($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$javax.swing.JFileChooser$showOpenDialog$8803($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$javax.swing.JFileChooser$showSaveDialog$8804($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.io.File$javax.swing.JFileChooser$getSelectedFile$8794($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.ImageFileChooser$$la$init$ra$$8489($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JFileChooser$setDialogTitle$8811($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$javax.swing.JFileChooser$showDialog$8805($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.EkitCore$describeDocument$4088($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure javax.swing.text.Element$lp$$rp$$javax.swing.text.Document$getRootElements$2101($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.PrintStream$print$207($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.PrintStream$print$208($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$traverseElement$4089($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure javax.swing.text.Element$terpword.EkitCore$locateElementInDocument$4090($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.lang.String$equalsIgnoreCase$86($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.text.Element$terpword.EkitCore$locateChildElementInDocument$4091($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.JTextPane$terpword.EkitCore$getSourcePane$4093($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.JMenuBar$terpword.EkitCore$getCustomMenuBar$4097($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$javax.swing.JCheckBoxMenuItem$setState$9204($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure javax.swing.JToolBar$terpword.EkitCore$customizeToolBar$4101($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:int) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$javax.swing.AbstractButton$setSelected$9235($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.AbstractButton$setEnabled$9323($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$setEnabled$8636($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JMenuItem$setEnabled$8291($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.EkitCore$setStrike$4103($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.EkitCore$setSuper$4104($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.EkitCore$setSub$4105($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure java.io.File$terpword.EkitCore$getCurrentFile$4106($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.EkitCore$getDocumentText$4108($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.EkitCore$getDocumentSubText$4109($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.EkitCore$getSubText$4110($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.EkitCore$getDocumentBody$4111($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.EkitCore$setDocumentText$4112($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.text.EditorKit$javax.swing.JEditorPane$getEditorKit$3017($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.EkitCore$setSourceDocument$4113($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$terpword.EkitCore$getFontNameFromSelector$4114($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$javax.swing.JComboBox$getSelectedItem$8591($this:ref) returns ($return:ref, $exception:ref);    

procedure int$terpword.EkitCore$getFontSizeFromSelector$4115($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.lang.Integer$$la$init$ra$$972($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$java.lang.Integer$intValue$975($this:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.undo.UndoManager$discardAllEdits$8547($this:ref) returns ($exception:ref);    

procedure void$javax.swing.ImageIcon$$la$init$ra$$9134($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.Component$javax.swing.JSplitPane$getRightComponent$9084($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JSplitPane$setRightComponent$9083($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$setDividerLocation$9099($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setEnabled$3376($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$setLeftComponent$9079($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$remove$9103($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Container$validate$3543($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JSplitPane$setDividerLocation$9098($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$java.util.StringTokenizer$$la$init$ra$$8462($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.util.regex.Pattern$java.util.regex.Pattern$compile$8980($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.util.StringTokenizer$hasMoreTokens$8466($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.util.StringTokenizer$nextToken$8467($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.StringBuffer$java.lang.StringBuffer$append$710($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JOptionPane$showMessageDialog$4997($in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure java.lang.String$terpword.EkitCore$findStyle$4126($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.EkitCore$handleCaretPositionChange$4127($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $stringSizeHeap;

procedure int$javax.swing.event.CaretEvent$getDot$5739($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$javax.swing.text.StyleConstants$isBold$8355($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.ButtonModel$javax.swing.AbstractButton$getModel$9304($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.ButtonModel$setSelected$8395($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure boolean$javax.swing.text.StyleConstants$isItalic$8357($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$javax.swing.text.StyleConstants$isUnderline$8359($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$javax.swing.text.StyleConstants$isStrikeThrough$8360($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$javax.swing.text.StyleConstants$isSuperscript$8361($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$javax.swing.text.StyleConstants$isSubscript$8362($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$javax.swing.text.StyleConstants$getFontSize$8353($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.Action$javax.swing.JComboBox$getAction$8622($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.Action$setEnabled$2991($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure javax.swing.ComboBoxModel$javax.swing.JComboBox$getModel$8579($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Integer$toString$979($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.ComboBoxModel$setSelectedItem$8647($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$handleSourceCaretPositionChange$4128($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.EkitCore$setServletURL$4129($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$setImageDir$4130($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.EkitCore$setTreePilotSystemID$4131($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure terpword.ExtendedHTMLDocument$terpword.EkitCore$getExtendedHtmlDoc$4132($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.EkitCore$writeState$4135($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.FileWriter$$la$init$ra$$8206($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.BufferedWriter$$la$init$ra$$7534($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.BufferedWriter$close$7544($this:ref) returns ($exception:ref);    

procedure void$java.io.FileReader$$la$init$ra$$7098($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$java.util.Vector$equals$2433($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.util.Vector$remove$2426($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$terpword.ExtendedHTMLDocument$$la$init$ra$$8414($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLDocument$$la$init$ra$$8719($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLDocument$$la$init$ra$$8718($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.ExtendedHTMLDocument$$la$init$ra$$8416($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLDocument$$la$init$ra$$8717($this:ref) returns ($exception:ref);    

procedure void$terpword.ExtendedHTMLDocument$replaceAttributes$8417($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractDocument$writeLock$2297($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractDocument$DefaultDocumentEvent$$la$init$ra$$2468($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref);    

procedure javax.swing.text.AttributeSet$javax.swing.text.AttributeSet$copyAttributes$2020($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.DefaultStyledDocument$AttributeUndoableEdit$$la$init$ra$$11762($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    

procedure boolean$javax.swing.text.AbstractDocument$DefaultDocumentEvent$addEdit$2470($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.text.MutableAttributeSet$removeAttribute$2842($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.MutableAttributeSet$addAttributes$2841($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.undo.CompoundEdit$end$3088($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLDocument$fireChangedUpdate$8771($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.event.UndoableEditEvent$$la$init$ra$$2933($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLDocument$fireUndoableEditUpdate$8772($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractDocument$writeUnlock$2298($this:ref) returns ($exception:ref);    

procedure void$terpword.ExtendedHTMLDocument$removeElements$8418($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    modifies $refArrHeap, $arrSizeHeap;

procedure void$javax.swing.text.AbstractDocument$BranchElement$replace$2908($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractDocument$ElementEdit$$la$init$ra$$11755($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref);    

procedure javax.swing.text.AbstractDocument$Content$javax.swing.text.AbstractDocument$getContent$2293($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.undo.UndoableEdit$javax.swing.text.AbstractDocument$Content$remove$2448($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.AbstractDocument$postRemoveUpdate$2289($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractDocument$fireRemoveUpdate$2253($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLEditorKit$$la$init$ra$$8491($this:ref) returns ($exception:ref);    

procedure javax.swing.text.ViewFactory$terpword.ExtendedHTMLEditorKit$getViewFactory$8422($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.text.html.StyleSheet$javax.swing.text.html.HTMLEditorKit$getStyleSheet$8502($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.html.StyleSheet$$la$init$ra$$8135($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.html.StyleSheet$addStyleSheet$8143($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.text.html.HTMLEditorKit$Parser$javax.swing.text.html.HTMLEditorKit$getParser$8514($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.html.HTMLDocument$setParser$8751($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractDocument$setAsynchronousLoadPriority$2257($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.text.html.HTMLDocument$setTokenThreshold$8734($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JDialog$$la$init$ra$$4336($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    

procedure void$terpword.FileDialog$init$8339($this:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$terpword.FileDialog$actionPerformed$8338($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.awt.Container$javax.swing.JDialog$getContentPane$4365($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.BoxLayout$$la$init$ra$$11894($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$java.awt.Window$setBounds$4568($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$javax.swing.JDialog$setDefaultCloseOperation$4351($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JList$$la$init$ra$$9747($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JList$setSelectionMode$9797($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JList$clearSelection$9805($this:ref) returns ($exception:ref);    

procedure void$javax.swing.ListSelectionModel$addListSelectionListener$11844($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setAlignmentX$3346($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure javax.swing.border.TitledBorder$javax.swing.BorderFactory$createTitledBorder$11865($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JComponent$setBorder$3339($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.border.SoftBevelBorder$$la$init$ra$$11888($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JButton$$la$init$ra$$9375($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.FontSelectorDialog$1Anonymous1$propertyChange$12013($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure javax.swing.JOptionPane$terpword.FontSelectorDialog$get$jOptionPane$access$0$12022($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.JComboBox$terpword.FontSelectorDialog$get$jcmbFontlist$access$2$12024($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.FontSelectorDialog$set$fontName$access$1$12023($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$terpword.FontSelectorDialog$1Anonymous1$$la$init$ra$$12014($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.FontSelectorDialog$2Anonymous0$windowClosing$12015($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.FontSelectorDialog$2Anonymous0$$la$init$ra$$12016($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.FontSelectorDialog$$la$init$ra$$12017($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref, $in_parameter__4:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$javax.swing.JComboBox$$la$init$ra$$8570($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$addItemListener$8606($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.text.Document$javax.swing.text.html.HTMLEditorKit$createDefaultDocument$8494($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Component$setBounds$3725($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure java.lang.String$terpword.FontSelectorDialog$getFontSampleString$12021($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JOptionPane$$la$init$ra$$5032($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:ref, $in_parameter__4:ref, $in_parameter__5:ref) returns ($exception:ref);    

procedure void$javax.swing.JDialog$setContentPane$4366($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Window$addWindowListener$4501($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Container$addPropertyChangeListener$3618($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.FontSelectorDialog$itemStateChanged$12018($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$java.awt.event.ItemEvent$getStateChange$10743($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.FontSelectorDialog$$la$init$ra$$12019($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$terpword.FontSelectorDialog$getFontName$12020($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.FormatAction$actionPerformed$8411($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure void$java.io.PrintStream$println$212($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure boolean$javax.swing.text.SimpleAttributeSet$containsAttribute$4167($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.FormatAction$clearFormat$8412($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref);    

procedure void$terpword.FormatAction$refreshAndSelect$8413($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure java.lang.String$javax.swing.text.html.HTML$Attribute$toString$8326($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Throwable$java.lang.Throwable$fillInStackTrace$26($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.PatchedHTMLEditorKit$LinkController$mouseClicked$12029($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure boolean$javax.swing.text.JTextComponent$isEditable$3203($this:ref) returns ($return:int, $exception:ref);    

procedure int$java.awt.event.MouseEvent$getX$5444($this:ref) returns ($return:int, $exception:ref);    

procedure int$java.awt.event.MouseEvent$getY$5445($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.awt.Point$$la$init$ra$$5459($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure int$javax.swing.text.JTextComponent$viewToModel$3186($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.PatchedHTMLEditorKit$LinkController$activateLink$12031($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    modifies $heap;

procedure void$terpword.PatchedHTMLEditorKit$LinkController$mouseMoved$12030($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.net.URL$javax.swing.text.html.HTMLDocument$getBase$8723($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.net.URL$$la$init$ra$$1409($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure boolean$java.net.URL$equals$1425($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.event.HyperlinkEvent$$la$init$ra$$5096($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref) returns ($exception:ref);    

procedure void$javax.swing.JEditorPane$fireHyperlinkUpdate$3002($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.PatchedHTMLEditorKit$LinkController$$la$init$ra$$12032($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.event.MouseInputAdapter$$la$init$ra$$12383($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JFrame$$la$init$ra$$6840($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Window$setSize$4457($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.JTextField$$la$init$ra$$4953($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JLabel$$la$init$ra$$12037($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JEditorPane$$la$init$ra$$2995($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$setEditable$3204($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.PatchedHTMLEditorKit$$la$init$ra$$12034($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JEditorPane$setEditorKitForContentType$3023($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.JTextField$addActionListener$4968($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.SimpleLinkListener$$la$init$ra$$12025($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JEditorPane$addHyperlinkListener$2999($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.text.html.HTML$Tag$lp$$rp$$javax.swing.text.html.HTML$getAllTags$4648() returns ($return:ref, $exception:ref);    

procedure int$lp$$rp$$terpword.HTMLUtilities$getPositions$9182($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($return:ref, $exception:ref);    modifies $arrSizeHeap, $intArrHeap;

procedure javax.swing.text.SimpleAttributeSet$terpword.HTMLUtilities$removeAttributeByKey$9185($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $arrSizeHeap;

procedure javax.swing.text.html.HTML$Tag$terpword.HTMLUtilities$getHTMLTag$9187($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure int$java.lang.String$lastIndexOf$105($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure javax.swing.text.SimpleAttributeSet$terpword.HTMLUtilities$removeAttribute$9186($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $arrSizeHeap;

procedure int$javax.swing.text.SimpleAttributeSet$getAttributeCount$4161($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$java.lang.String$toString$124($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$lp$$rp$$terpword.HTMLUtilities$getUniString$9188($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $refArrHeap, $arrSizeHeap;

procedure int$javax.swing.text.JTextComponent$getSelectionEnd$3207($this:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$terpword.HTMLUtilities$getAllTableTags$9190($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $arrSizeHeap, $intArrHeap;

procedure void$java.util.Arrays$sort$12089($in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.ImageDialog$1Anonymous0$valueChanged$12249($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure boolean$terpword.ImageDialog$validateControls$access$0$12257($this:ref) returns ($return:int, $exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.ImageDialog$previewSelectedImage$access$1$12258($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.ImageDialog$1Anonymous0$$la$init$ra$$12250($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.ImageDialog$$la$init$ra$$12251($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:int) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.ImageDialog$init$12253($this:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$terpword.ImageDialog$actionPerformed$12252($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure boolean$terpword.ImageDialog$validateControls$12255($this:ref) returns ($return:int, $exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.ImageDialog$previewSelectedImage$12254($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JEditorPane$setEditorKit$3021($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$setDocument$3147($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.Component$javax.swing.Box$createHorizontalStrut$12263($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JLabel$$la$init$ra$$12036($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure java.awt.Component$javax.swing.Box$createVerticalStrut$12264($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.ListSelectionModel$setSelectionInterval$11826($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure java.lang.String$terpword.ImageDialog$getSelectedImage$12256($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.ImageFileChooser$$la$init$ra$$8488($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JFileChooser$$la$init$ra$$8784($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JFileChooser$setCurrentDirectory$8799($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.ImageFileChooserPreview$$la$init$ra$$12272($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.JFileChooser$setAccessory$8828($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.ImageFileChooser$$la$init$ra$$8490($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.ImageFileChooserPreview$$la$clinit$ra$$12271() returns ($exception:ref);    modifies int$terpword.ImageFileChooserPreview$previewHeight0, int$terpword.ImageFileChooserPreview$previewWidth0;

procedure void$javax.swing.JComponent$$la$init$ra$$3295($this:ref) returns ($exception:ref);    

procedure void$terpword.ImageFileChooserPreview$loadImage$12273($this:ref) returns ($exception:ref);    modifies $heap;

procedure int$javax.swing.ImageIcon$getIconHeight$9152($this:ref) returns ($return:int, $exception:ref);    

procedure int$javax.swing.ImageIcon$getIconWidth$9151($this:ref) returns ($return:int, $exception:ref);    

procedure java.awt.Image$javax.swing.ImageIcon$getImage$9146($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Image$java.awt.Image$getScaledInstance$6342($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.ImageIcon$$la$init$ra$$9138($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.ImageFileChooserPreview$propertyChange$12274($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.Object$java.beans.PropertyChangeEvent$getNewValue$4202($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.ImageFileChooserPreview$paintComponent$12275($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure int$javax.swing.JComponent$getWidth$3422($this:ref) returns ($return:int, $exception:ref);    

procedure int$javax.swing.JComponent$getHeight$3423($this:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.ImageIcon$paintIcon$9150($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure java.awt.datatransfer.Transferable$java.awt.datatransfer.Clipboard$getContents$9390($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.awt.datatransfer.Transferable$isDataFlavorSupported$12327($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.Object$java.awt.datatransfer.Transferable$getTransferData$12328($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JButton$$la$init$ra$$9373($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setRequestFocusEnabled$3322($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JButton$$la$init$ra$$9376($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JButton$$la$init$ra$$9374($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JButtonNoFocus$$la$init$ra$$9214($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.JButton$$la$init$ra$$9377($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure boolean$terpword.JButtonNoFocus$isFocusable$9215($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.JButtonNoFocus$isFocusTraversable$9216($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.JComboBoxNoFocus$$la$init$ra$$8329($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$$la$init$ra$$8571($this:ref) returns ($exception:ref);    

procedure boolean$terpword.JComboBoxNoFocus$isFocusable$8330($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.JComboBoxNoFocus$isFocusTraversable$8331($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.JToggleButtonNoFocus$$la$init$ra$$8475($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JToggleButton$$la$init$ra$$9350($this:ref) returns ($exception:ref);    

procedure void$javax.swing.JToggleButton$$la$init$ra$$9355($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JToggleButton$$la$init$ra$$9351($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JToggleButtonNoFocus$$la$init$ra$$8478($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JToggleButton$$la$init$ra$$9353($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.JToggleButtonNoFocus$$la$init$ra$$8479($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.JToggleButton$$la$init$ra$$9356($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure boolean$terpword.JToggleButtonNoFocus$isFocusable$8480($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.JToggleButtonNoFocus$isFocusTraversable$8481($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.SimpleInfoDialog$$la$init$ra$$4329($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure void$javax.swing.text.html.HTMLEditorKit$InsertHTMLTextAction$insertHTML$8453($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref, $in_parameter__4:int, $in_parameter__5:int, $in_parameter__6:ref) returns ($exception:ref);    

procedure java.lang.String$javax.swing.text.AbstractDocument$getText$2275($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($return:ref, $exception:ref);    

procedure void$java.util.StringTokenizer$$la$init$ra$$8461($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.filechooser.FileFilter$$la$init$ra$$9337($this:ref) returns ($exception:ref);    

procedure boolean$terpword.MutableFilter$accept$8333($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.io.File$isDirectory$6896($this:ref) returns ($return:int, $exception:ref);    

procedure int$java.lang.String$lastIndexOf$104($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure java.lang.String$terpword.MutableFilter$getDescription$8334($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.PatchedHTMLEditorKit$$la$clinit$ra$$12028() returns ($exception:ref);    modifies int$terpword.PatchedHTMLEditorKit$JUMP0, int$terpword.PatchedHTMLEditorKit$MOVE0;

procedure void$terpword.PatchedHTMLEditorKit$install$12033($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Component$addMouseListener$3834($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Component$addMouseMotionListener$3837($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.PrintUtilities$printComponent$8482($in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.awt.print.PrinterJob$java.awt.print.PrinterJob$getPrinterJob$12384() returns ($return:ref, $exception:ref);    

procedure void$java.awt.print.PrinterJob$setPrintable$12390($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$java.awt.print.PrinterJob$printDialog$12393($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.awt.print.PrinterJob$print$12401($this:ref) returns ($exception:ref);    

procedure int$terpword.PrintUtilities$print$8485($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($return:int, $exception:ref);    

procedure double$java.awt.print.PageFormat$getImageableX$10679($this:ref) returns ($return:int, $exception:ref);    

procedure double$java.awt.print.PageFormat$getImageableY$10680($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.awt.Graphics2D$translate$7067($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$terpword.PrintUtilities$disableDoubleBuffering$8486($in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.awt.Component$paint$3770($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.PrintUtilities$enableDoubleBuffering$8487($in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.RepaintManager$javax.swing.RepaintManager$currentManager$12410($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.RepaintManager$setDoubleBufferingEnabled$12447($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$terpword.PropertiesDialog$$la$init$ra$$8529($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:ref, $in_parameter__5:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$javax.swing.JTextField$$la$init$ra$$4954($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.text.JTextComponent$setText$3200($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JCheckBox$$la$init$ra$$12546($this:ref) returns ($exception:ref);    

procedure void$java.util.StringTokenizer$$la$init$ra$$8460($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$addItem$8596($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$$la$clinit$ra$$11765() returns ($exception:ref);    modifies int$terpword.RelativeImageView$sIncRate0, java.lang.String$terpword.RelativeImageView$BOTTOM2351, java.lang.String$terpword.RelativeImageView$PENDING_IMAGE_SRC2355, int$terpword.RelativeImageView$DEFAULT_BORDER0, $stringSizeHeap, java.lang.String$terpword.RelativeImageView$IMAGE_CACHE_PROPERTY2352, int$terpword.RelativeImageView$DEFAULT_HEIGHT0, java.lang.String$terpword.RelativeImageView$CENTER2350, java.lang.String$terpword.RelativeImageView$MIDDLE2348, boolean$terpword.RelativeImageView$sIsInc0, java.lang.String$terpword.RelativeImageView$TEXTTOP2347, java.lang.String$terpword.RelativeImageView$ABSMIDDLE2349, java.lang.String$terpword.RelativeImageView$MISSING_IMAGE_SRC2356, int$terpword.RelativeImageView$DEFAULT_WIDTH0, java.lang.String$terpword.RelativeImageView$TOP2346;

procedure void$javax.swing.text.View$$la$init$ra$$9419($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$initialize$11767($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure javax.swing.text.html.StyleSheet$terpword.RelativeImageView$getStyleSheet$11802($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.text.AttributeSet$javax.swing.text.html.StyleSheet$getViewAttributes$8141($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure boolean$terpword.RelativeImageView$isURL$11768($this:ref) returns ($return:int, $exception:ref);    

procedure java.net.URL$terpword.RelativeImageView$getSourceURL$11778($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.text.Document$javax.swing.text.View$getDocument$9445($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$javax.swing.text.Document$getProperty$2092($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.Object$java.util.Dictionary$get$2127($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Image$java.awt.Toolkit$getImage$6278($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$terpword.RelativeImageView$processSrcPath$11769($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Image$java.awt.Toolkit$createImage$6279($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.RelativeImageView$waitForImage$11770($this:ref) returns ($exception:ref);    

procedure int$terpword.RelativeImageView$getIntAttr$11779($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure int$java.awt.Image$getHeight$6338($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$java.awt.Image$getWidth$6337($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.awt.Toolkit$prepareImage$6281($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:ref) returns ($return:int, $exception:ref);    

procedure boolean$java.io.File$isAbsolute$6885($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.io.File$$la$init$ra$$6878($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure int$java.awt.Toolkit$checkImage$6282($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:ref) returns ($return:int, $exception:ref);    

procedure void$java.lang.InterruptedException$$la$init$ra$$562($this:ref) returns ($exception:ref);    

procedure void$java.lang.Thread$sleep$1787($in_parameter__0:int) returns ($exception:ref);    

procedure javax.swing.text.AttributeSet$terpword.RelativeImageView$getAttributes$11771($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$terpword.RelativeImageView$isLink$11772($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$javax.swing.text.AttributeSet$isDefined$2018($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.RelativeImageView$getBorder$11773($this:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.RelativeImageView$getSpace$11774($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure java.awt.Color$terpword.RelativeImageView$getBorderColor$11775($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Color$javax.swing.text.StyledDocument$getForeground$1966($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure float$terpword.RelativeImageView$getVerticalAlignment$11776($this:ref) returns ($return:int, $exception:ref);    

procedure boolean$terpword.RelativeImageView$hasPixels$11777($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure int$java.lang.Math$max$12620($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure void$terpword.RelativeImageView$setParent$11780($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.text.View$setParent$9428($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.awt.Container$javax.swing.text.View$getContainer$9456($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Container$java.awt.Component$getParent$3656($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.Container$remove$3526($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$changedUpdate$11781($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$javax.swing.text.View$changedUpdate$9444($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure javax.swing.text.Element$javax.swing.text.View$getElement$9448($this:ref) returns ($return:ref, $exception:ref);    

procedure javax.swing.text.View$javax.swing.text.View$getParent$9420($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.View$preferenceChanged$9425($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$paint$11782($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap, $arrSizeHeap, javax.swing.Icon$terpword.RelativeImageView$sMissingImageIcon2354, javax.swing.Icon$terpword.RelativeImageView$sPendingImageIcon2353, java.lang.Class$terpword.RelativeImageView$class$terpword$RelativeImageView2364;

procedure java.awt.Color$java.awt.Graphics$getColor$5344($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Rectangle$java.awt.Shape$getBounds$6097($this:ref) returns ($return:ref, $exception:ref);    

procedure int$terpword.RelativeImageView$getSelectionState$11784($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.awt.Graphics$drawRect$5360($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$loadImageStatusIcons$11801($this:ref) returns ($exception:ref);    modifies $arrSizeHeap, javax.swing.Icon$terpword.RelativeImageView$sMissingImageIcon2354, javax.swing.Icon$terpword.RelativeImageView$sPendingImageIcon2353, java.lang.Class$terpword.RelativeImageView$class$terpword$RelativeImageView2364;

procedure void$javax.swing.Icon$paintIcon$4208($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure boolean$java.awt.Graphics$drawImage$5380($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.RelativeImageView$repaint$11783($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$java.awt.Component$repaint$3778($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int) returns ($exception:ref);    

procedure boolean$terpword.RelativeImageView$isEditable$11785($this:ref) returns ($return:int, $exception:ref);    

procedure java.awt.Color$terpword.RelativeImageView$getHighlightColor$11786($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Color$javax.swing.text.JTextComponent$getSelectionColor$3177($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$terpword.RelativeImageView$imageUpdate$11787($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int, $in_parameter__4:int, $in_parameter__5:int) returns ($return:int, $exception:ref);    modifies $heap;

procedure void$javax.swing.text.AbstractDocument$readLock$2299($this:ref) returns ($exception:ref);    

procedure void$javax.swing.text.AbstractDocument$readUnlock$2300($this:ref) returns ($exception:ref);    

procedure float$terpword.RelativeImageView$getPreferredSpan$11788($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure void$java.lang.IllegalArgumentException$$la$init$ra$$919($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure float$terpword.RelativeImageView$getAlignment$11789($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure float$javax.swing.text.View$getAlignment$9426($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure java.awt.Shape$terpword.RelativeImageView$modelToView$11790($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure int$javax.swing.text.View$getStartOffset$9446($this:ref) returns ($return:int, $exception:ref);    

procedure int$javax.swing.text.View$getEndOffset$9447($this:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.RelativeImageView$viewToModel$11791($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:ref, $in_parameter__3:ref) returns ($return:int, $exception:ref);    modifies $refArrHeap;

procedure void$terpword.RelativeImageView$resize$11792($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$java.lang.Integer$toString$963($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.text.MutableAttributeSet$addAttribute$2840($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$javax.swing.text.StyledDocument$setCharacterAttributes$1960($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:ref, $in_parameter__3:int) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$mousePressed$11793($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.awt.Dimension$java.awt.Component$getSize$3717($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Point$java.awt.Component$getLocationOnScreen$3710($this:ref) returns ($return:ref, $exception:ref);    

procedure boolean$java.awt.event.InputEvent$isShiftDown$6636($this:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.text.Caret$javax.swing.text.JTextComponent$getCaret$3155($this:ref) returns ($return:ref, $exception:ref);    

procedure int$javax.swing.text.Caret$getMark$3060($this:ref) returns ($return:int, $exception:ref);    

procedure int$javax.swing.text.Caret$getDot$3059($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.RelativeImageView$mouseDragged$11794($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.RelativeImageView$mouseReleased$11795($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.RelativeImageView$mouseClicked$11796($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$java.awt.event.MouseEvent$getClickCount$5448($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.RelativeImageView$mouseEntered$11797($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$mouseMoved$11798($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.RelativeImageView$mouseExited$11799($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.Icon$terpword.RelativeImageView$makeIcon$11800($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $arrSizeHeap, java.lang.Class$terpword.RelativeImageView$class$terpword$RelativeImageView2364;

procedure java.lang.Class$terpword.RelativeImageView$class$$11803($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.io.InputStream$java.lang.Class$getResourceAsStream$502($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$java.io.BufferedInputStream$$la$init$ra$$12565($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.ByteArrayOutputStream$$la$init$ra$$12579($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure int$java.io.FilterInputStream$read$12651($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure void$java.io.ByteArrayOutputStream$write$12583($this:ref, $in_parameter__0:ref, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure void$java.io.BufferedInputStream$close$12576($this:ref) returns ($exception:ref);    

procedure byte$lp$$rp$$java.io.ByteArrayOutputStream$toByteArray$12586($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.ImageIcon$$la$init$ra$$9140($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.Class$java.lang.Class$forName$447($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.lang.Throwable$getMessage$16($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.lang.NoClassDefFoundError$$la$init$ra$$2($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JCheckBox$$la$init$ra$$12551($this:ref, $in_parameter__0:ref, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$FontFamilyAction$$la$init$ra$$9371($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure void$terpword.SetFontFamilyAction$actionPerformed$9194($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure void$javax.swing.text.StyledEditorKit$FontFamilyAction$actionPerformed$9372($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.SetFontSizeAction$actionPerformed$8908($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.text.StyledEditorKit$FontSizeAction$actionPerformed$9192($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.SimpleInfoDialog$$la$clinit$ra$$4325() returns ($exception:ref);    modifies int$terpword.SimpleInfoDialog$PLAIN0, int$terpword.SimpleInfoDialog$QUESTION0, int$terpword.SimpleInfoDialog$INFO0, int$terpword.SimpleInfoDialog$ERROR0, int$terpword.SimpleInfoDialog$WARNING0;

procedure double$java.awt.Dimension$getWidth$5190($this:ref) returns ($return:int, $exception:ref);    

procedure java.awt.Point$java.awt.Component$getLocation$3709($this:ref) returns ($return:ref, $exception:ref);    

procedure double$java.awt.Point$getX$5460($this:ref) returns ($return:int, $exception:ref);    

procedure double$java.awt.Dimension$getHeight$5191($this:ref) returns ($return:int, $exception:ref);    

procedure double$java.awt.Point$getY$5461($this:ref) returns ($return:int, $exception:ref);    

procedure void$java.awt.Window$setLocation$4458($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure java.lang.String$terpword.SimpleInfoDialog$getDecisionValue$4330($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.SimpleLinkListener$$la$init$ra$$12026($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.SimpleLinkListener$hyperlinkUpdate$12027($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.event.HyperlinkEvent$EventType$javax.swing.event.HyperlinkEvent$getEventType$5099($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Cursor$java.awt.Cursor$getPredefinedCursor$6150($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.net.URL$javax.swing.event.HyperlinkEvent$getURL$5101($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$java.net.URL$toString$1428($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Cursor$java.awt.Cursor$getDefaultCursor$6152() returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JEditorPane$setPage$3003($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.SymbolDialog$$la$clinit$ra$$12736() returns ($exception:ref);    modifies $stringSizeHeap, java.lang.String$terpword.SymbolDialog$SYMBOLS2498;

procedure void$terpword.SymbolDialog$$la$init$ra$$12737($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    modifies $heap;

procedure void$terpword.SymbolDialog$init$12739($this:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.SymbolDialog$actionPerformed$12738($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure javax.swing.ButtonModel$javax.swing.ButtonGroup$getSelection$9845($this:ref) returns ($return:ref, $exception:ref);    

procedure java.lang.String$javax.swing.ButtonModel$getActionCommand$8402($this:ref) returns ($return:ref, $exception:ref);    

procedure void$java.awt.GridLayout$$la$init$ra$$12743($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int, $in_parameter__3:int) returns ($exception:ref);    

procedure void$javax.swing.ButtonGroup$$la$init$ra$$9840($this:ref) returns ($exception:ref);    

procedure java.lang.String$java.lang.Character$toString$1627($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.ButtonModel$setActionCommand$8401($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.ButtonGroup$add$9841($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure java.lang.String$terpword.SymbolDialog$getInputText$12740($this:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.TableInputDialog$1Anonymous0$windowClosing$12758($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.JOptionPane$terpword.TableInputDialog$get$jOptionPane$access$0$12768($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.TableInputDialog$1Anonymous0$$la$init$ra$$12759($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.TableInputDialog$2Anonymous1$propertyChange$12760($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure java.lang.String$terpword.TableInputDialog$set$inputRows$access$1$12769($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.String$terpword.TableInputDialog$set$inputCols$access$2$12770($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.String$terpword.TableInputDialog$set$inputBorder$access$3$12771($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.String$terpword.TableInputDialog$set$inputSpace$access$4$12772($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure java.lang.String$terpword.TableInputDialog$set$inputPad$access$5$12773($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$terpword.TableInputDialog$2Anonymous1$$la$init$ra$$12761($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref, $in_parameter__3:ref, $in_parameter__4:ref, $in_parameter__5:ref, $in_parameter__6:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.TableInputDialog$$la$init$ra$$12762($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure int$terpword.TableInputDialog$getRows$12763($this:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.TableInputDialog$getCols$12764($this:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.TableInputDialog$getBorder$12765($this:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.TableInputDialog$getSpacing$12766($this:ref) returns ($return:int, $exception:ref);    

procedure int$terpword.TableInputDialog$getPadding$12767($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.testgeticon$main$12774($in_parameter__0:ref) returns ($exception:ref);    

procedure void$java.io.FileOutputStream$$la$init$ra$$8432($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure com.sun.image.codec.jpeg.JPEGImageEncoder$com.sun.image.codec.jpeg.JPEGCodec$createJPEGEncoder$12791($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$com.sun.image.codec.jpeg.JPEGImageEncoder$encode$12780($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.testgeticon$$la$init$ra$$12775($this:ref) returns ($exception:ref);    

procedure void$terpword.UnicodeDialog$$la$clinit$ra$$8540() returns ($exception:ref);    modifies java.lang.String$lp$$rp$$terpword.UnicodeDialog$unicodeBlocks1742, $refArrHeap, int$terpword.UnicodeDialog$UNICODE_MATH0, int$terpword.UnicodeDialog$UNICODE_DING0, int$terpword.UnicodeDialog$UNICODE_BASE0, java.lang.String$terpword.UnicodeDialog$CMDCHANGEBLOCK1741, $arrSizeHeap, int$terpword.UnicodeDialog$UNICODE_SPEC0, $stringSizeHeap, int$terpword.UnicodeDialog$UNICODE_SIGS0, int$terpword.UnicodeDialog$UNICODEBLOCKSIZE0, int$terpword.UnicodeDialog$UNICODE_DRAW0;

procedure void$terpword.UnicodeDialog$init$8543($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.UnicodeDialog$actionPerformed$8542($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$javax.swing.JComboBox$getSelectedIndex$8593($this:ref) returns ($return:int, $exception:ref);    

procedure void$terpword.UnicodeDialog$populateButtons$8544($this:ref, $in_parameter__0:int, $in_parameter__1:int) returns ($exception:ref);    

procedure void$javax.swing.JLabel$setHorizontalAlignment$12063($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$javax.swing.JLabel$setVerticalAlignment$12061($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure void$java.awt.Color$$la$init$ra$$2527($this:ref, $in_parameter__0:int, $in_parameter__1:int, $in_parameter__2:int) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setForeground$3377($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JComponent$setFont$3379($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.border.Border$javax.swing.BorderFactory$createEtchedBorder$11863($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.awt.Graphics$javax.swing.JComponent$getGraphics$3349($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.font.FontRenderContext$java.awt.Graphics2D$getFontRenderContext$7081($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.geom.Rectangle2D$java.awt.Font$getMaxCharBounds$2626($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure double$java.awt.geom.RectangularShape$getX$6541($this:ref) returns ($return:int, $exception:ref);    

procedure double$java.lang.Math$abs$12619($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure double$java.awt.geom.RectangularShape$getWidth$6543($this:ref) returns ($return:int, $exception:ref);    

procedure double$java.awt.geom.RectangularShape$getY$6542($this:ref) returns ($return:int, $exception:ref);    

procedure double$java.awt.geom.RectangularShape$getHeight$6544($this:ref) returns ($return:int, $exception:ref);    

procedure javax.swing.border.Border$javax.swing.JComponent$getBorder$3340($this:ref) returns ($return:ref, $exception:ref);    

procedure java.awt.Insets$javax.swing.border.Border$getBorderInsets$5230($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JComboBox$$la$init$ra$$8569($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$setActionCommand$8618($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$javax.swing.JComboBox$addActionListener$8609($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure int$javax.swing.JComboBox$getItemCount$8641($this:ref) returns ($return:int, $exception:ref);    

procedure void$javax.swing.JComboBox$removeAllItems$8600($this:ref) returns ($exception:ref);    

procedure java.awt.Graphics$javax.swing.JDialog$getGraphics$4371($this:ref) returns ($return:ref, $exception:ref);    

procedure void$javax.swing.JComponent$update$3304($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure boolean$java.awt.Font$canDisplay$2609($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure void$terpword.UserInputAnchorDialog$init$4322($this:ref) returns ($exception:ref);    

procedure void$terpword.UserInputAnchorDialog$actionPerformed$4321($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap, $stringSizeHeap;

procedure void$terpword.UserInputAnchorDialog$setAnchor$4324($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.UserInputDialog$1Anonymous0$windowClosing$12858($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.swing.JOptionPane$terpword.UserInputDialog$get$jOptionPane$access$0$12867($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure void$terpword.UserInputDialog$1Anonymous0$$la$init$ra$$12859($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.UserInputDialog$2Anonymous2$propertyChange$12860($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

procedure java.lang.String$terpword.UserInputDialog$set$inputText$access$1$12868($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure void$terpword.UserInputDialog$2Anonymous2$$la$init$ra$$12861($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.UserInputDialog$3Anonymous1$actionPerformed$12862($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure void$terpword.UserInputDialog$3Anonymous1$$la$init$ra$$12863($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $heap;

procedure void$terpword.UserInputDialog$$la$init$ra$$12864($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref, $in_parameter__4:ref) returns ($exception:ref);    modifies $refArrHeap, $heap, $arrSizeHeap, $stringSizeHeap;

procedure void$terpword.UserInputDialog$$la$init$ra$$12865($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:int, $in_parameter__3:ref) returns ($exception:ref);    modifies $heap, $refArrHeap, $arrSizeHeap, $stringSizeHeap;

procedure java.lang.String$terpword.UserInputDialog$getInputText$12866($this:ref) returns ($return:ref, $exception:ref);    


implementation void$terpword.EkitCore$actionPerformed$4054($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var $fakelocal_6 : ref;    
var temp$462157 : int;    
var $fakelocal_1 : ref;    
var temp$302141 : ref;    
var temp$22111 : ref;    
var temp$1122229 : ref;    
var temp$1182235 : int;    
var temp$1202237 : int;    
var temp$862201 : ref;    
var temp$832198 : ref;    
var temp$1372258 : int;    
var temp$1912323 : ref;    
var temp$1172234 : ref;    
var temp$712186 : ref;    
var temp$1052222 : ref;    
var temp$982214 : ref;    
var temp$1472268 : int;    
var $fakelocal_29 : ref;    
var temp$222133 : ref;    
var temp$1752298 : int;    
var index2167 : int;    
var $fakelocal_9 : ref;    
var temp$672182 : ref;    
var temp$922207 : ref;    
var temp$1492271 : ref;    
var temp$872202 : ref;    
var temp$792194 : ref;    
var temp$572171 : ref;    
var temp$202131 : ref;    
var temp2303 : ref;    
var temp$602174 : int;    
var temp$1562279 : int;    
var $fakelocal_2 : ref;    
var temp$852200 : ref;    
var temp$122123 : ref;    
var fieldTypes2272 : ref;    
var temp$142125 : ref;    
var temp$1292250 : int;    
var temp$1662289 : int;    
var temp$1192236 : ref;    
var temp$1092226 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_24 : ref;    
var temp$532165 : int;    
var temp$1302251 : int;    
var print2218 : ref;    
var temp$342145 : ref;    
var $fakelocal_13 : ref;    
var temp$1712294 : int;    
var temp$362147 : ref;    
var temp$1332254 : int;    
var temp$842199 : ref;    
var $fakelocal_34 : ref;    
var temp$1252244 : ref;    
var temp$272138 : ref;    
var temp$1142231 : ref;    
var temp$432154 : ref;    
var temp$1632286 : int;    
var temp$192130 : ref;    
var $fakelocal_7 : ref;    
var temp$42113 : ref;    
var temp$1702293 : int;    
var temp$1012217 : int;    
var temp$442155 : ref;    
var temp$612175 : ref;    
var temp$892204 : ref;    
var temp$382149 : int;    
var temp$1102227 : ref;    
var temp$812196 : ref;    
var temp$1582281 : int;    
var opendoc2181 : ref;    
var temp$1822308 : ref;    
var temp$1312252 : ref;    
var temp$1942330 : ref;    
var str2162 : ref;    
var $fakelocal_23 : ref;    
var $fakelocal_26 : ref;    
var temp$1352256 : ref;    
var temp$1872315 : ref;    
var temp$412152 : ref;    
var temp$1512274 : int;    
var temp$1552278 : int;    
var temp$1342255 : int;    
var temp$1112228 : int;    
var temp$1152232 : int;    
var ioe2316 : ref;    
var temp$472158 : int;    
var temp$1732296 : int;    
var temp$972213 : ref;    
var temp$642178 : ref;    
var command2106 : ref;    
var temp$1392260 : ref;    
var sidAbout2317 : ref;    
var $fakelocal_33 : ref;    
var temp$32112 : int;    
var temp$372148 : ref;    
var $fakelocal_21 : ref;    
var $fakelocal_16 : ref;    
var temp$912206 : ref;    
var temp$702185 : int;    
var temp$502161 : int;    
var temp$1622285 : int;    
var temp$1402261 : ref;    
var $fakelocal_20 : ref;    
var temp$662180 : int;    
var temp$512163 : ref;    
var temp$622176 : ref;    
var temp$562170 : ref;    
var temp$932208 : int;    
var temp$292140 : ref;    
var imgGrabber2241 : ref;    
var temp$332144 : ref;    
var temp$1502273 : ref;    
var temp$1852312 : ref;    
var $fakelocal_19 : ref;    
var temp$1542277 : int;    
var temp$962212 : ref;    
var temp$92120 : ref;    
var temp$782193 : ref;    
var temp$1722295 : int;    
var temp$1222239 : int;    
var temp$1902322 : ref;    
var temp$1592282 : int;    
var temp$742189 : ref;    
var temp$52114 : ref;    
var rtfFile2209 : ref;    
var temp$252136 : ref;    
var temp$402151 : ref;    
var $fakelocal_15 : ref;    
var temp$1862313 : ref;    
var temp$1042221 : int;    
var message2109 : ref;    
var temp$582172 : ref;    
var $fakelocal_4 : ref;    
var temp$1672290 : int;    
var temp$1612284 : int;    
var $fakelocal_11 : ref;    
var $fakelocal_31 : ref;    
var temp$242135 : ref;    
var temp$312142 : ref;    
var temp$232134 : ref;    
var temp$102121 : ref;    
var helpfile2309 : ref;    
var temp$1062223 : int;    
var temp$1832310 : ref;    
var temp$952211 : ref;    
var temp$182129 : ref;    
var temp$732188 : ref;    
var temp$1692292 : int;    
var temp$82119 : ref;    
var $fakelocal_30 : ref;    
var temp$1642287 : int;    
var temp$942210 : ref;    
var temp$1932327 : ref;    
var temp$722187 : ref;    
var temp$72118 : ref;    
var temp$212132 : ref;    
var $fakelocal_3 : ref;    
var file2248 : ref;    
var location2305 : ref;    
var $fakelocal_27 : ref;    
var $fakelocal_36 : ref;    
var temp$352146 : ref;    
var temp$1002216 : ref;    
var $fakelocal_18 : ref;    
var temp$1452266 : int;    
var temp$422153 : ref;    
var temp$492160 : int;    
var temp$1412262 : int;    
var temp$902205 : ref;    
var temp$1162233 : ref;    
var temp$752190 : ref;    
var tmp2169 : ref;    
var temp$1482269 : int;    
var temp$1032220 : ref;    
var temp$1762300 : ref;    
var $fakelocal_28 : ref;    
var $fakelocal_22 : ref;    
var sidAbout2321 : ref;    
var temp$632177 : ref;    
var temp$1382259 : int;    
var temp$322143 : ref;    
var temp$1652288 : int;    
var temp$1022219 : ref;    
var temp$1432264 : ref;    
var $fakelocal_12 : ref;    
var temp$172128 : ref;    
var temp$822197 : int;    
var temp$1802306 : ref;    
var temp$62115 : ref;    
var temp$1742297 : int;    
var temp$1682291 : ref;    
var temp$262137 : ref;    
var temp$682183 : ref;    
var img2243 : ref;    
var temp$1272246 : ref;    
var temp$992215 : ref;    
var temp$552168 : int;    
var temp$1882318 : ref;    
var $fakelocal_14 : ref;    
var temp$1842311 : ref;    
var temp$1242242 : ref;    
var temp$1572280 : int;    
var temp$1072224 : ref;    
var temp$1212238 : ref;    
var temp$1132230 : int;    
var sidAbout2299 : ref;    
var buf2247 : ref;    
var temp$1952331 : ref;    
var this2104 : ref;    
var temp$02107 : ref;    
var temp$1362257 : ref;    
var temp$452156 : ref;    
var temp$1922326 : ref;    
var $fakelocal_32 : ref;    
var temp$12108 : int;    
var temp$132124 : ref;    
var $fakelocal_8 : ref;    
var temp$762191 : ref;    
var temp$1792304 : ref;    
var nfe2324 : ref;    
var $fakelocal_25 : ref;    
var temp$1422263 : int;    
var $fakelocal_10 : ref;    
var temp$1462267 : int;    
var temp$652179 : ref;    
var help2314 : ref;    
var temp$1282249 : ref;    
var temp$592173 : int;    
var temp$282139 : ref;    
var temp$1082225 : int;    
var temp$1812307 : ref;    
var re2328 : ref;    
var temp$522164 : int;    
var ae2105 : ref;    
var temp$542166 : ref;    
var temp$162127 : ref;    
var temp$1522275 : int;    
var temp$482159 : int;    
var fieldNames2270 : ref;    
var temp$1782302 : int;    
var e2116 : ref;    
var temp$112122 : ref;    
var temp$152126 : ref;    
var temp$1322253 : ref;    
var sidAbout2325 : ref;    
var temp$1772301 : ref;    
var temp$1232240 : ref;    
var temp$1892319 : ref;    
var temp$882203 : ref;    
var $fakelocal_5 : ref;    
var temp$1262245 : ref;    
var temp$1602283 : int;    
var choice2110 : int;    
var temp$802195 : ref;    
var temp$692184 : ref;    
var temp$392150 : ref;    
var $fakelocal_17 : ref;    
var ble2320 : ref;    
var $fakelocal_35 : ref;    
var temp$1532276 : int;    
var temp$1442265 : ref;    
var e2117 : ref;    
var sidAbout2329 : ref;    
var temp$772192 : ref;
    assume $this != $null;
    this2104 := $this;
    ae2105 := $in_parameter__0;
  block288:
    if (ae2105 != $null) {
        assert { :sourceloc "EkitCore.java",1802,4,1802,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$02107, $exception := java.lang.String$java.awt.event.ActionEvent$getActionCommand$4153(ae2105);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    command2106 := temp$02107;
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1803,16,1803,31 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$12108, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst54);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$12108 == 0) {
        assert { :sourceloc "EkitCore.java",1803,4,2010,4 } true;
        goto block293;
    } else {
        assert { :sourceloc "EkitCore.java",1803,16,1803,31 } true;
    }
    goto block294;
  block294:
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 40];
    message2109 := $fakelocal_0;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1806,48,1806,54 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$22111 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    call temp$32112, $exception := int$javax.swing.JOptionPane$showConfirmDialog$5000(temp$22111, message2109);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    choice2110 := temp$32112;
    goto block295;
  block296:
  block297:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1810,32,1810,38 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$42113 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$42113 != $null) {
        assert { :sourceloc "EkitCore.java",1810,32,1810,38 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$52114, $exception := javax.swing.text.Document$javax.swing.text.JTextComponent$getDocument$3148(temp$42113);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block298;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block299;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$52114,$type] <: javax.swing.text.html.HTMLDocument) {
        assert { :sourceloc "EkitCore.java",1810,32,1810,38 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$62115 := temp$52114;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1810,32,1810,38 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$writeOut$4081(this2104, temp$62115, $null);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block298;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block299;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block300;
  block298:
    assert { :sourceloc "EkitCore.java",1811,8,1813,6 } $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    e2116 := $exception;
    if (e2116 != $null) {
        assert { :sourceloc "EkitCore.java",1812,7,1812,26 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$java.lang.Throwable$printStackTrace$21(e2116);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block300;
  block299:
    assert { :sourceloc "EkitCore.java",1813,8,1815,6 } $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    e2117 := $exception;
    if (e2117 != $null) {
        assert { :sourceloc "EkitCore.java",1814,7,1814,26 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$java.lang.Throwable$printStackTrace$21(e2117);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block300;
  block300:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1817,10,1817,20 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$72118 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$72118 != $null) {
        assert { :sourceloc "EkitCore.java",1817,10,1817,20 } true;
        goto block301;
    } else {
        assert { :sourceloc "EkitCore.java",1817,10,1817,20 } true;
    }
    goto block302;
  block301:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1818,18,1818,28 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$82119 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$82119 != $null) {
        assert { :sourceloc "EkitCore.java",1818,18,1818,28 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$92120, $exception := java.lang.String$java.io.File$getAbsolutePath$6886(temp$82119);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1818,7,1818,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682 := temp$92120];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1819,18,1819,28 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$102121 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$102121 != $null) {
        assert { :sourceloc "EkitCore.java",1819,18,1819,28 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$112122, $exception := java.lang.String$java.io.File$getName$6881(temp$102121);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1819,7,1819,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683 := temp$112122];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1820,28,1820,35 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$122123 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1820,38,1820,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$132124 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1820,38,1820,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$add_to_history_stack$4137(this2104, temp$122123, temp$132124);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1821,7,1821,21 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateHistory$4138(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block302:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1825,10,1825,19 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$142125 := $heap[this2104,javax.swing.text.html.StyleSheet$terpword.EkitCore$styleSheet647];
    if (temp$142125 != $null) {
        assert { :sourceloc "EkitCore.java",1825,10,1825,19 } true;
        goto block303;
    } else {
        assert { :sourceloc "EkitCore.java",1825,10,1825,19 } true;
    }
    goto block304;
  block303:
    call $fakelocal_1 := $new(terpword.ExtendedHTMLDocument);
    temp$152126 := $fakelocal_1;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1826,42,1826,51 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$162127 := $heap[this2104,javax.swing.text.html.StyleSheet$terpword.EkitCore$styleSheet647];
    call $exception := void$terpword.ExtendedHTMLDocument$$la$init$ra$$8415(temp$152126, temp$162127);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1826,7,1826,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,terpword.ExtendedHTMLDocument$terpword.EkitCore$htmlDoc646 := temp$152126];
    goto block305;
  block304:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1828,41,1828,47 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$172128 := $heap[this2104,terpword.ExtendedHTMLEditorKit$terpword.EkitCore$htmlKit645];
    if (temp$172128 != $null) {
        assert { :sourceloc "EkitCore.java",1828,41,1828,47 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$182129, $exception := javax.swing.text.Document$terpword.ExtendedHTMLEditorKit$createDefaultDocument$8423(temp$172128);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$182129,$type] <: terpword.ExtendedHTMLDocument) {
        assert { :sourceloc "EkitCore.java",1828,41,1828,47 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$192130 := temp$182129;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1828,7,1828,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,terpword.ExtendedHTMLDocument$terpword.EkitCore$htmlDoc646 := temp$192130];
  block305:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1831,6,1831,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$202131 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$202131 != $null) {
        assert { :sourceloc "EkitCore.java",1831,6,1831,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JEditorPane$setText$3034(temp$202131, $StringConst250);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1832,6,1832,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$212132 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1832,24,1832,30 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$222133 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$222133 != $null) {
        assert { :sourceloc "EkitCore.java",1832,24,1832,30 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$232134, $exception := java.lang.String$javax.swing.JEditorPane$getText$3035(temp$222133);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$212132 != $null) {
        assert { :sourceloc "EkitCore.java",1832,24,1832,30 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JEditorPane$setText$3034(temp$212132, temp$232134);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1833,23,1833,29 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$242135 := $heap[this2104,terpword.ExtendedHTMLDocument$terpword.EkitCore$htmlDoc646];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1833,23,1833,29 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$registerDocument$4064(this2104, temp$242135);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    temp$252136 := $null;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1834,6,1834,16 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776 := temp$252136];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1835,6,1835,18 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateTitle$4116(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block306:
    goto block307;
  block308:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1840,10,1840,19 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$262137 := $heap[this2104,javax.swing.text.html.StyleSheet$terpword.EkitCore$styleSheet647];
    if (temp$262137 != $null) {
        assert { :sourceloc "EkitCore.java",1840,10,1840,19 } true;
        goto block309;
    } else {
        assert { :sourceloc "EkitCore.java",1840,10,1840,19 } true;
    }
    goto block310;
  block309:
    call $fakelocal_2 := $new(terpword.ExtendedHTMLDocument);
    temp$272138 := $fakelocal_2;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1841,42,1841,51 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$282139 := $heap[this2104,javax.swing.text.html.StyleSheet$terpword.EkitCore$styleSheet647];
    call $exception := void$terpword.ExtendedHTMLDocument$$la$init$ra$$8415(temp$272138, temp$282139);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1841,7,1841,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,terpword.ExtendedHTMLDocument$terpword.EkitCore$htmlDoc646 := temp$272138];
    goto block311;
  block310:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1843,41,1843,47 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$292140 := $heap[this2104,terpword.ExtendedHTMLEditorKit$terpword.EkitCore$htmlKit645];
    if (temp$292140 != $null) {
        assert { :sourceloc "EkitCore.java",1843,41,1843,47 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$302141, $exception := javax.swing.text.Document$terpword.ExtendedHTMLEditorKit$createDefaultDocument$8423(temp$292140);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$302141,$type] <: terpword.ExtendedHTMLDocument) {
        assert { :sourceloc "EkitCore.java",1843,41,1843,47 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$312142 := temp$302141;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1843,7,1843,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,terpword.ExtendedHTMLDocument$terpword.EkitCore$htmlDoc646 := temp$312142];
  block311:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1846,6,1846,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$322143 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$322143 != $null) {
        assert { :sourceloc "EkitCore.java",1846,6,1846,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JEditorPane$setText$3034(temp$322143, $StringConst250);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1847,6,1847,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$332144 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1847,24,1847,30 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$342145 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$342145 != $null) {
        assert { :sourceloc "EkitCore.java",1847,24,1847,30 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$352146, $exception := java.lang.String$javax.swing.JEditorPane$getText$3035(temp$342145);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$332144 != $null) {
        assert { :sourceloc "EkitCore.java",1847,24,1847,30 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JEditorPane$setText$3034(temp$332144, temp$352146);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1848,23,1848,29 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$362147 := $heap[this2104,terpword.ExtendedHTMLDocument$terpword.EkitCore$htmlDoc646];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1848,23,1848,29 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$registerDocument$4064(this2104, temp$362147);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    temp$372148 := $null;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1849,6,1849,16 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776 := temp$372148];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1850,6,1850,18 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateTitle$4116(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block312:
    goto block307;
  block313:
  block314:
    goto block307;
  block315:
    goto block307;
  block295:
    if (choice2110 == 0) {
        goto block296;
    } else if (choice2110 == 1) {
        goto block308;
    } else if (choice2110 == 2) {
        goto block313;
    } else {
        goto block307;
    }
  block307:
    goto block316;
  block293:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1855,23,1855,40 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$382149, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst57);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$382149 == 0) {
        assert { :sourceloc "EkitCore.java",1855,11,2010,4 } true;
        goto block317;
    } else {
        assert { :sourceloc "EkitCore.java",1855,23,1855,40 } true;
    }
    goto block318;
  block318:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1856,5,1856,22 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$openDocument$4083(this2104, $null);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1857,9,1857,19 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$392150 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$392150 != $null) {
        assert { :sourceloc "EkitCore.java",1857,9,1857,19 } true;
        goto block319;
    } else {
        assert { :sourceloc "EkitCore.java",1857,9,1857,19 } true;
    }
    goto block320;
  block319:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1858,17,1858,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$402151 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$402151 != $null) {
        assert { :sourceloc "EkitCore.java",1858,17,1858,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$412152, $exception := java.lang.String$java.io.File$getAbsolutePath$6886(temp$402151);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1858,6,1858,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682 := temp$412152];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1859,17,1859,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$422153 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$422153 != $null) {
        assert { :sourceloc "EkitCore.java",1859,17,1859,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$432154, $exception := java.lang.String$java.io.File$getName$6881(temp$422153);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1859,6,1859,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683 := temp$432154];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1860,27,1860,34 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$442155 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1860,37,1860,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$452156 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1860,37,1860,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$add_to_history_stack$4137(this2104, temp$442155, temp$452156);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1861,6,1861,20 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateHistory$4138(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block320:
    goto block321;
  block317:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1863,24,1863,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$462157, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst62);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$462157 == 0) {
        assert { :sourceloc "EkitCore.java",1863,24,1863,42 } true;
        goto block322;
    } else {
        assert { :sourceloc "EkitCore.java",1863,24,1863,42 } true;
    }
    goto block323;
  block322:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1864,17,1864,35 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$472158, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst63);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$472158 == 0) {
        assert { :sourceloc "EkitCore.java",1864,17,1864,35 } true;
        goto block324;
    } else {
        assert { :sourceloc "EkitCore.java",1864,17,1864,35 } true;
    }
    goto block323;
    goto block324;
  block324:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1865,17,1865,35 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$482159, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst64);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$482159 == 0) {
        assert { :sourceloc "EkitCore.java",1865,17,1865,35 } true;
        goto block325;
    } else {
        assert { :sourceloc "EkitCore.java",1865,17,1865,35 } true;
    }
    goto block323;
    goto block325;
  block325:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1866,17,1866,35 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$492160, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst65);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$492160 == 0) {
        assert { :sourceloc "EkitCore.java",1866,17,1866,35 } true;
        goto block326;
    } else {
        assert { :sourceloc "EkitCore.java",1866,17,1866,35 } true;
    }
    goto block323;
    goto block326;
  block326:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1867,7,1867,25 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$502161, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst66);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$502161 == 0) {
        assert { :sourceloc "EkitCore.java",1863,11,2010,4 } true;
        goto block327;
    } else {
        assert { :sourceloc "EkitCore.java",1867,7,1867,25 } true;
    }
    goto block323;
    goto block327;
  block323:
    call $fakelocal_3 := $new(java.lang.String);
    temp$512163 := $fakelocal_3;
    temp$522164 := $stringSizeHeap[command2106];
    temp$532165 := temp$522164 - 1;
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1868,5,1868,69 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$542166, $exception := java.lang.String$java.lang.String$substring$107(command2106, temp$532165);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    call $exception := void$java.lang.String$$la$init$ra$$53(temp$512163, temp$542166);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    str2162 := temp$512163;
    call temp$552168, $exception := int$java.lang.Integer$parseInt$967(str2162);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    index2167 := temp$552168;
    call $fakelocal_4 := $new(java.util.Vector);
    temp$562170 := $fakelocal_4;
    call $exception := void$java.util.Vector$$la$init$ra$$2390(temp$562170);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    tmp2169 := temp$562170;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1871,20,1871,32 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$572171 := $heap[this2104,java.util.Stack$terpword.EkitCore$history_stack684];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1871,44,1871,56 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$582172 := $heap[this2104,java.util.Stack$terpword.EkitCore$history_stack684];
    if (temp$582172 != $null) {
        assert { :sourceloc "EkitCore.java",1871,44,1871,56 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$592173, $exception := int$java.util.Vector$size$2400(temp$582172);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    temp$602174 := temp$592173 - index2167;
    if (temp$572171 != $null) {
        assert { :sourceloc "EkitCore.java",1871,44,1871,56 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$612175, $exception := java.lang.Object$java.util.Vector$elementAt$2408(temp$572171, temp$602174);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$612175,$type] <: java.util.Vector) {
        assert { :sourceloc "EkitCore.java",1871,44,1871,56 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$622176 := temp$612175;
    tmp2169 := temp$622176;
    if (tmp2169 != $null) {
        assert { :sourceloc "EkitCore.java",1873,9,1873,61 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$632177, $exception := java.lang.Object$java.util.Vector$get$2421(tmp2169, 1);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$632177,$type] <: java.lang.String) {
        assert { :sourceloc "EkitCore.java",1873,9,1873,61 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$642178 := temp$632177;
    call $fakelocal_5 := $new(java.lang.String);
    temp$652179 := $fakelocal_5;
    call $exception := void$java.lang.String$$la$init$ra$$53(temp$652179, $StringConst35);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$642178 != $null) {
        assert { :sourceloc "EkitCore.java",1873,41,1873,55 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$662180 := int$java.lang.String$compareTo$87(temp$642178, temp$652179);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$662180 != 0) {
        assert { :sourceloc "EkitCore.java",1873,41,1873,55 } true;
        goto block328;
    } else {
        assert { :sourceloc "EkitCore.java",1873,41,1873,55 } true;
    }
    goto block329;
  block328:
    call $fakelocal_6 := $new(java.io.File);
    temp$672182 := $fakelocal_6;
    if (tmp2169 != $null) {
        assert { :sourceloc "EkitCore.java",1874,6,1874,50 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$682183, $exception := java.lang.Object$java.util.Vector$get$2421(tmp2169, 1);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$682183,$type] <: java.lang.String) {
        assert { :sourceloc "EkitCore.java",1874,6,1874,50 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$692184 := temp$682183;
    call $exception := void$java.io.File$$la$init$ra$$6877(temp$672182, temp$692184);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    opendoc2181 := temp$672182;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1875,6,1875,26 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$openDocument$4083(this2104, opendoc2181);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block329:
    goto block330;
  block327:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1877,23,1877,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$702185, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst68);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$702185 == 0) {
        assert { :sourceloc "EkitCore.java",1877,11,2010,4 } true;
        goto block331;
    } else {
        assert { :sourceloc "EkitCore.java",1877,23,1877,36 } true;
    }
    goto block332;
  block332:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1879,30,1879,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$712186 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$712186 != $null) {
        assert { :sourceloc "EkitCore.java",1879,30,1879,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$722187, $exception := javax.swing.text.Document$javax.swing.text.JTextComponent$getDocument$3148(temp$712186);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$722187,$type] <: javax.swing.text.html.HTMLDocument) {
        assert { :sourceloc "EkitCore.java",1879,30,1879,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$732188 := temp$722187;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1879,54,1879,64 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$742189 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1879,54,1879,64 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$writeOut$4081(this2104, temp$732188, temp$742189);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1880,5,1880,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateTitle$4116(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1881,9,1881,19 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$752190 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$752190 != $null) {
        assert { :sourceloc "EkitCore.java",1881,9,1881,19 } true;
        goto block333;
    } else {
        assert { :sourceloc "EkitCore.java",1881,9,1881,19 } true;
    }
    goto block334;
  block333:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1882,17,1882,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$762191 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$762191 != $null) {
        assert { :sourceloc "EkitCore.java",1882,17,1882,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$772192, $exception := java.lang.String$java.io.File$getAbsolutePath$6886(temp$762191);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1882,6,1882,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682 := temp$772192];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1883,17,1883,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$782193 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$782193 != $null) {
        assert { :sourceloc "EkitCore.java",1883,17,1883,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$792194, $exception := java.lang.String$java.io.File$getName$6881(temp$782193);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1883,6,1883,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683 := temp$792194];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1884,27,1884,34 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$802195 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1884,37,1884,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$812196 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1884,37,1884,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$add_to_history_stack$4137(this2104, temp$802195, temp$812196);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1885,6,1885,20 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateHistory$4138(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block334:
    goto block335;
  block331:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1887,23,1887,38 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$822197, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst70);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$822197 == 0) {
        assert { :sourceloc "EkitCore.java",1887,11,2010,4 } true;
        goto block336;
    } else {
        assert { :sourceloc "EkitCore.java",1887,23,1887,38 } true;
    }
    goto block337;
  block337:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1888,30,1888,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$832198 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$832198 != $null) {
        assert { :sourceloc "EkitCore.java",1888,30,1888,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$842199, $exception := javax.swing.text.Document$javax.swing.text.JTextComponent$getDocument$3148(temp$832198);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if ($heap[temp$842199,$type] <: javax.swing.text.html.HTMLDocument) {
        assert { :sourceloc "EkitCore.java",1888,30,1888,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    temp$852200 := temp$842199;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1888,30,1888,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$writeOut$4081(this2104, temp$852200, $null);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1889,9,1889,19 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$862201 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$862201 != $null) {
        assert { :sourceloc "EkitCore.java",1889,9,1889,19 } true;
        goto block338;
    } else {
        assert { :sourceloc "EkitCore.java",1889,9,1889,19 } true;
    }
    goto block339;
  block338:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1890,17,1890,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$872202 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$872202 != $null) {
        assert { :sourceloc "EkitCore.java",1890,17,1890,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$882203, $exception := java.lang.String$java.io.File$getAbsolutePath$6886(temp$872202);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1890,6,1890,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682 := temp$882203];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1891,17,1891,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$892204 := $heap[this2104,java.io.File$terpword.EkitCore$currentFile776];
    if (temp$892204 != $null) {
        assert { :sourceloc "EkitCore.java",1891,17,1891,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$902205, $exception := java.lang.String$java.io.File$getName$6881(temp$892204);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1891,6,1891,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683 := temp$902205];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1892,27,1892,34 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$912206 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1892,37,1892,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$922207 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1892,37,1892,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$add_to_history_stack$4137(this2104, temp$912206, temp$922207);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1893,6,1893,20 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateHistory$4138(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block339:
    goto block340;
  block336:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1895,23,1895,39 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$932208, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst72);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$932208 == 0) {
        assert { :sourceloc "EkitCore.java",1895,11,2010,4 } true;
        goto block341;
    } else {
        assert { :sourceloc "EkitCore.java",1895,23,1895,39 } true;
    }
    goto block342;
  block342:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1896,50,1896,56 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$942210 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$942210 != $null) {
        assert { :sourceloc "EkitCore.java",1896,50,1896,56 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$952211, $exception := javax.swing.text.StyledDocument$javax.swing.JTextPane$getStyledDocument$4272(temp$942210);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1896,50,1896,56 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$962212, $exception := java.io.File$terpword.EkitCore$writeOutRTF$4082(this2104, temp$952211);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    rtfFile2209 := temp$962212;
    if (rtfFile2209 != $null) {
        assert { :sourceloc "EkitCore.java",1898,9,1898,23 } true;
        goto block343;
    } else {
        assert { :sourceloc "EkitCore.java",1898,9,1898,23 } true;
    }
    goto block344;
  block343:
    if (rtfFile2209 != $null) {
        assert { :sourceloc "EkitCore.java",1899,6,1899,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$972213, $exception := java.lang.String$java.io.File$getAbsolutePath$6886(rtfFile2209);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1899,6,1899,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682 := temp$972213];
    if (rtfFile2209 != $null) {
        assert { :sourceloc "EkitCore.java",1900,6,1900,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$982214, $exception := java.lang.String$java.io.File$getName$6881(rtfFile2209);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1900,6,1900,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    $heap := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683 := temp$982214];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1901,27,1901,34 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$992215 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_path682];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1901,37,1901,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1002216 := $heap[this2104,java.lang.String$terpword.EkitCore$doc_name683];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1901,37,1901,44 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$add_to_history_stack$4137(this2104, temp$992215, temp$1002216);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1902,6,1902,20 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$updateHistory$4138(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block344:
    goto block345;
  block341:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1904,23,1904,37 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1012217, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst60);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1012217 == 0) {
        assert { :sourceloc "EkitCore.java",1904,11,2010,4 } true;
        goto block346;
    } else {
        assert { :sourceloc "EkitCore.java",1904,23,1904,37 } true;
    }
    goto block347;
  block347:
    call $fakelocal_7 := $new(terpword.PrintUtilities);
    temp$1022219 := $fakelocal_7;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1905,47,1905,50 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1032220 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    call $exception := void$terpword.PrintUtilities$$la$init$ra$$8483(temp$1022219, temp$1032220);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    print2218 := temp$1022219;
    if (print2218 != $null) {
        assert { :sourceloc "EkitCore.java",1906,5,1906,18 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.PrintUtilities$print$8484(print2218);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block348;
  block346:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1907,23,1907,39 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1042221, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst78);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1042221 == 0) {
        assert { :sourceloc "EkitCore.java",1907,11,2010,4 } true;
        goto block349;
    } else {
        assert { :sourceloc "EkitCore.java",1907,23,1907,39 } true;
    }
    goto block350;
  block350:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1908,9,1908,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1052222 := $heap[this2104,javax.swing.JScrollPane$terpword.EkitCore$jspSource649];
    if (temp$1052222 != $null) {
        assert { :sourceloc "EkitCore.java",1908,9,1908,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1062223, $exception := boolean$java.awt.Component$isShowing$3680(temp$1052222);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1062223 == 0) {
        assert { :sourceloc "EkitCore.java",1908,5,1912,5 } true;
        goto block351;
    } else {
        assert { :sourceloc "EkitCore.java",1908,9,1908,17 } true;
    }
    goto block352;
  block352:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1908,34,1908,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1072224 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (temp$1072224 != $null) {
        assert { :sourceloc "EkitCore.java",1908,34,1908,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1082225, $exception := boolean$java.awt.Component$hasFocus$3913(temp$1072224);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1082225 == 0) {
        assert { :sourceloc "EkitCore.java",1908,5,1912,5 } true;
        goto block351;
    } else {
        assert { :sourceloc "EkitCore.java",1908,34,1908,42 } true;
    }
    goto block353;
    goto block353;
  block353:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1909,6,1909,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1092226 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (temp$1092226 != $null) {
        assert { :sourceloc "EkitCore.java",1909,6,1909,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.text.JTextComponent$cut$3187(temp$1092226);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block354;
  block351:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1911,6,1911,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1102227 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$1102227 != $null) {
        assert { :sourceloc "EkitCore.java",1911,6,1911,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.text.JTextComponent$cut$3187(temp$1102227);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block354:
    goto block355;
  block349:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1913,23,1913,40 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1112228, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst80);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1112228 == 0) {
        assert { :sourceloc "EkitCore.java",1913,11,2010,4 } true;
        goto block356;
    } else {
        assert { :sourceloc "EkitCore.java",1913,23,1913,40 } true;
    }
    goto block357;
  block357:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1914,9,1914,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1122229 := $heap[this2104,javax.swing.JScrollPane$terpword.EkitCore$jspSource649];
    if (temp$1122229 != $null) {
        assert { :sourceloc "EkitCore.java",1914,9,1914,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1132230, $exception := boolean$java.awt.Component$isShowing$3680(temp$1122229);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1132230 == 0) {
        assert { :sourceloc "EkitCore.java",1914,5,1918,5 } true;
        goto block358;
    } else {
        assert { :sourceloc "EkitCore.java",1914,9,1914,17 } true;
    }
    goto block359;
  block359:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1914,34,1914,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1142231 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (temp$1142231 != $null) {
        assert { :sourceloc "EkitCore.java",1914,34,1914,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1152232, $exception := boolean$java.awt.Component$hasFocus$3913(temp$1142231);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1152232 == 0) {
        assert { :sourceloc "EkitCore.java",1914,5,1918,5 } true;
        goto block358;
    } else {
        assert { :sourceloc "EkitCore.java",1914,34,1914,42 } true;
    }
    goto block360;
    goto block360;
  block360:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1915,6,1915,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1162233 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (temp$1162233 != $null) {
        assert { :sourceloc "EkitCore.java",1915,6,1915,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.text.JTextComponent$copy$3188(temp$1162233);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block361;
  block358:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1917,6,1917,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1172234 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$1172234 != $null) {
        assert { :sourceloc "EkitCore.java",1917,6,1917,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.text.JTextComponent$copy$3188(temp$1172234);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block361:
    goto block362;
  block356:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1919,23,1919,41 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1182235, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst82);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1182235 == 0) {
        assert { :sourceloc "EkitCore.java",1919,11,2010,4 } true;
        goto block363;
    } else {
        assert { :sourceloc "EkitCore.java",1919,23,1919,41 } true;
    }
    goto block364;
  block364:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1920,9,1920,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1192236 := $heap[this2104,javax.swing.JScrollPane$terpword.EkitCore$jspSource649];
    if (temp$1192236 != $null) {
        assert { :sourceloc "EkitCore.java",1920,9,1920,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1202237, $exception := boolean$java.awt.Component$isShowing$3680(temp$1192236);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1202237 == 0) {
        assert { :sourceloc "EkitCore.java",1920,5,1935,5 } true;
        goto block365;
    } else {
        assert { :sourceloc "EkitCore.java",1920,9,1920,17 } true;
    }
    goto block366;
  block366:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1920,34,1920,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1212238 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (temp$1212238 != $null) {
        assert { :sourceloc "EkitCore.java",1920,34,1920,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1222239, $exception := boolean$java.awt.Component$hasFocus$3913(temp$1212238);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1222239 == 0) {
        assert { :sourceloc "EkitCore.java",1920,5,1935,5 } true;
        goto block365;
    } else {
        assert { :sourceloc "EkitCore.java",1920,34,1920,42 } true;
    }
    goto block367;
    goto block367;
  block367:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1921,6,1921,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1232240 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpSource648];
    if (temp$1232240 != $null) {
        assert { :sourceloc "EkitCore.java",1921,6,1921,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.text.JTextComponent$paste$3189(temp$1232240);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block368;
  block365:
    call $fakelocal_8 := $new(terpword.ImageGrabber);
    temp$1242242 := $fakelocal_8;
    call $exception := void$terpword.ImageGrabber$$la$init$ra$$8276(temp$1242242);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    imgGrabber2241 := temp$1242242;
    temp$1252244 := imgGrabber2241;
    call temp$1262245, $exception := java.awt.Image$terpword.ImageGrabber$getImageFromClipboard$8275();
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    img2243 := temp$1262245;
    if (img2243 == $null) {
        assert { :sourceloc "EkitCore.java",1926,10,1926,20 } true;
        goto block369;
    } else {
        assert { :sourceloc "EkitCore.java",1926,10,1926,20 } true;
    }
    goto block370;
  block369:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1927,7,1927,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1272246 := $heap[this2104,javax.swing.JTextPane$terpword.EkitCore$jtpMain644];
    if (temp$1272246 != $null) {
        assert { :sourceloc "EkitCore.java",1927,7,1927,13 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.text.JTextComponent$paste$3189(temp$1272246);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block371;
  block370:
    if ($heap[img2243,$type] <: java.awt.image.BufferedImage) {
        assert { :sourceloc "EkitCore.java",1929,7,1929,46 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ClassCastException);
        goto block289;
    }
    buf2247 := img2243;
    call $fakelocal_9 := $new(java.io.File);
    temp$1282249 := $fakelocal_9;
    call $exception := void$java.io.File$$la$init$ra$$6877(temp$1282249, $StringConst251);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    file2248 := temp$1282249;
    call temp$1292250, $exception := boolean$javax.imageio.ImageIO$write$8900(buf2247, $StringConst252, file2248);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1932,7,1932,28 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertLocalImage$4079(this2104, file2248);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (file2248 != $null) {
        assert { :sourceloc "EkitCore.java",1933,7,1933,26 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$java.io.File$deleteOnExit$6903(file2248);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
  block371:
  block368:
    goto block372;
  block363:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1936,23,1936,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1302251, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst253);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1302251 == 0) {
        assert { :sourceloc "EkitCore.java",1936,11,2010,4 } true;
        goto block373;
    } else {
        assert { :sourceloc "EkitCore.java",1936,23,1936,45 } true;
    }
    goto block374;
  block374:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1937,5,1937,12 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1312252 := $heap[this2104,javax.swing.JToolBar$terpword.EkitCore$jToolBar650];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1937,25,1937,40 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1322253 := $heap[this2104,javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbar722];
    if (temp$1322253 != $null) {
        assert { :sourceloc "EkitCore.java",1937,25,1937,40 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1332254, $exception := boolean$javax.swing.AbstractButton$isSelected$9234(temp$1322253);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1312252 != $null) {
        assert { :sourceloc "EkitCore.java",1937,25,1937,40 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JComponent$setVisible$3375(temp$1312252, temp$1332254);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block375;
  block373:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1938,23,1938,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1342255, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst95);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1342255 == 0) {
        assert { :sourceloc "EkitCore.java",1938,11,2010,4 } true;
        goto block376;
    } else {
        assert { :sourceloc "EkitCore.java",1938,23,1938,49 } true;
    }
    goto block377;
  block377:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1939,5,1939,16 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1352256 := $heap[this2104,javax.swing.JToolBar$terpword.EkitCore$jToolBarMain651];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1939,29,1939,48 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1362257 := $heap[this2104,javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbarMain723];
    if (temp$1362257 != $null) {
        assert { :sourceloc "EkitCore.java",1939,29,1939,48 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1372258, $exception := boolean$javax.swing.AbstractButton$isSelected$9234(temp$1362257);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1352256 != $null) {
        assert { :sourceloc "EkitCore.java",1939,29,1939,48 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JComponent$setVisible$3375(temp$1352256, temp$1372258);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block378;
  block376:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1940,23,1940,51 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1382259, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst254);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1382259 == 0) {
        assert { :sourceloc "EkitCore.java",1940,11,2010,4 } true;
        goto block379;
    } else {
        assert { :sourceloc "EkitCore.java",1940,23,1940,51 } true;
    }
    goto block380;
  block380:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1941,5,1941,18 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1392260 := $heap[this2104,javax.swing.JToolBar$terpword.EkitCore$jToolBarFormat652];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1941,31,1941,52 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1402261 := $heap[this2104,javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbarFormat724];
    if (temp$1402261 != $null) {
        assert { :sourceloc "EkitCore.java",1941,31,1941,52 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1412262, $exception := boolean$javax.swing.AbstractButton$isSelected$9234(temp$1402261);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1392260 != $null) {
        assert { :sourceloc "EkitCore.java",1941,31,1941,52 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JComponent$setVisible$3375(temp$1392260, temp$1412262);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block381;
  block379:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1942,23,1942,51 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1422263, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst97);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1422263 == 0) {
        assert { :sourceloc "EkitCore.java",1942,11,2010,4 } true;
        goto block382;
    } else {
        assert { :sourceloc "EkitCore.java",1942,23,1942,51 } true;
    }
    goto block383;
  block383:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1943,5,1943,18 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1432264 := $heap[this2104,javax.swing.JToolBar$terpword.EkitCore$jToolBarStyles653];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1943,31,1943,52 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1442265 := $heap[this2104,javax.swing.JCheckBoxMenuItem$terpword.EkitCore$jcbmiViewToolbarStyles725];
    if (temp$1442265 != $null) {
        assert { :sourceloc "EkitCore.java",1943,31,1943,52 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1452266, $exception := boolean$javax.swing.AbstractButton$isSelected$9234(temp$1442265);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1432264 != $null) {
        assert { :sourceloc "EkitCore.java",1943,31,1943,52 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$javax.swing.JComponent$setVisible$3375(temp$1432264, temp$1452266);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block384;
  block382:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1944,23,1944,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1462267, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst99);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1462267 == 0) {
        assert { :sourceloc "EkitCore.java",1944,11,2010,4 } true;
        goto block385;
    } else {
        assert { :sourceloc "EkitCore.java",1944,23,1944,42 } true;
    }
    goto block386;
  block386:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1945,5,1945,24 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$toggleSourceWindow$4123(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block387;
  block385:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1946,23,1946,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1472268, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst101);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1472268 == 0) {
        assert { :sourceloc "EkitCore.java",1946,11,2010,4 } true;
        goto block388;
    } else {
        assert { :sourceloc "EkitCore.java",1946,23,1946,42 } true;
    }
    goto block389;
  block389:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1947,5,1947,16 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$splitPanel$4124(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block390;
  block388:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1948,23,1948,43 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1482269, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst187);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1482269 == 0) {
        assert { :sourceloc "EkitCore.java",1948,11,2010,4 } true;
        goto block391;
    } else {
        assert { :sourceloc "EkitCore.java",1948,23,1948,43 } true;
    }
    goto block392;
  block392:
    call $fakelocal_10 := $new($arrayType(java.lang.String));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_10 := 6];
    temp$1492271 := $fakelocal_10;
    if (0 < $arrSizeHeap[temp$1492271] && 0 >= 0) {
        assert { :sourceloc "EkitCore.java",1949,27,1950,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_11 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_11 := 4];
    $refArrHeap := $refArrHeap[temp$1492271 := $refArrHeap[temp$1492271][0 := $fakelocal_11]];
    if (1 < $arrSizeHeap[temp$1492271] && 1 >= 0) {
        assert { :sourceloc "EkitCore.java",1949,27,1950,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_12 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_12 := 4];
    $refArrHeap := $refArrHeap[temp$1492271 := $refArrHeap[temp$1492271][1 := $fakelocal_12]];
    if (2 < $arrSizeHeap[temp$1492271] && 2 >= 0) {
        assert { :sourceloc "EkitCore.java",1949,27,1950,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_13 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_13 := 6];
    $refArrHeap := $refArrHeap[temp$1492271 := $refArrHeap[temp$1492271][2 := $fakelocal_13]];
    if (3 < $arrSizeHeap[temp$1492271] && 3 >= 0) {
        assert { :sourceloc "EkitCore.java",1949,27,1950,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_14 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_14 := 11];
    $refArrHeap := $refArrHeap[temp$1492271 := $refArrHeap[temp$1492271][3 := $fakelocal_14]];
    if (4 < $arrSizeHeap[temp$1492271] && 4 >= 0) {
        assert { :sourceloc "EkitCore.java",1949,27,1950,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_15 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_15 := 11];
    $refArrHeap := $refArrHeap[temp$1492271 := $refArrHeap[temp$1492271][4 := $fakelocal_15]];
    if (5 < $arrSizeHeap[temp$1492271] && 5 >= 0) {
        assert { :sourceloc "EkitCore.java",1949,27,1950,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_16 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_16 := 5];
    $refArrHeap := $refArrHeap[temp$1492271 := $refArrHeap[temp$1492271][5 := $fakelocal_16]];
    fieldNames2270 := temp$1492271;
    call $fakelocal_17 := $new($arrayType(java.lang.String));
    $arrSizeHeap := $arrSizeHeap[$fakelocal_17 := 6];
    temp$1502273 := $fakelocal_17;
    if (0 < $arrSizeHeap[temp$1502273] && 0 >= 0) {
        assert { :sourceloc "EkitCore.java",1951,27,1952,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_18 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_18 := 4];
    $refArrHeap := $refArrHeap[temp$1502273 := $refArrHeap[temp$1502273][0 := $fakelocal_18]];
    if (1 < $arrSizeHeap[temp$1502273] && 1 >= 0) {
        assert { :sourceloc "EkitCore.java",1951,27,1952,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_19 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_19 := 4];
    $refArrHeap := $refArrHeap[temp$1502273 := $refArrHeap[temp$1502273][1 := $fakelocal_19]];
    if (2 < $arrSizeHeap[temp$1502273] && 2 >= 0) {
        assert { :sourceloc "EkitCore.java",1951,27,1952,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_20 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_20 := 4];
    $refArrHeap := $refArrHeap[temp$1502273 := $refArrHeap[temp$1502273][2 := $fakelocal_20]];
    if (3 < $arrSizeHeap[temp$1502273] && 3 >= 0) {
        assert { :sourceloc "EkitCore.java",1951,27,1952,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_21 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_21 := 4];
    $refArrHeap := $refArrHeap[temp$1502273 := $refArrHeap[temp$1502273][3 := $fakelocal_21]];
    if (4 < $arrSizeHeap[temp$1502273] && 4 >= 0) {
        assert { :sourceloc "EkitCore.java",1951,27,1952,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_22 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_22 := 4];
    $refArrHeap := $refArrHeap[temp$1502273 := $refArrHeap[temp$1502273][4 := $fakelocal_22]];
    if (5 < $arrSizeHeap[temp$1502273] && 5 >= 0) {
        assert { :sourceloc "EkitCore.java",1951,27,1952,14 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.ArrayIndexOutOfBoundsException);
        goto block289;
    }
    call $fakelocal_23 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_23 := 4];
    $refArrHeap := $refArrHeap[temp$1502273 := $refArrHeap[temp$1502273][5 := $fakelocal_23]];
    fieldTypes2272 := temp$1502273;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1953,5,1953,57 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertTable$4066(this2104, $null, fieldNames2270, fieldTypes2272);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block393;
  block391:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1954,23,1954,46 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1512274, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst190);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1512274 == 0) {
        assert { :sourceloc "EkitCore.java",1954,11,2010,4 } true;
        goto block394;
    } else {
        assert { :sourceloc "EkitCore.java",1954,23,1954,46 } true;
    }
    goto block395;
  block395:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1955,5,1955,20 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertTableRow$4067(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block396;
  block394:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1956,23,1956,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1522275, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst193);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1522275 == 0) {
        assert { :sourceloc "EkitCore.java",1956,11,2010,4 } true;
        goto block397;
    } else {
        assert { :sourceloc "EkitCore.java",1956,23,1956,49 } true;
    }
    goto block398;
  block398:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1957,5,1957,23 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertTableColumn$4068(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block399;
  block397:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1958,23,1958,46 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1532276, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst196);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1532276 == 0) {
        assert { :sourceloc "EkitCore.java",1958,11,2010,4 } true;
        goto block400;
    } else {
        assert { :sourceloc "EkitCore.java",1958,23,1958,46 } true;
    }
    goto block401;
  block401:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1959,5,1959,20 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$deleteTableRow$4070(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block402;
  block400:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1960,23,1960,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1542277, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst199);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1542277 == 0) {
        assert { :sourceloc "EkitCore.java",1960,11,2010,4 } true;
        goto block403;
    } else {
        assert { :sourceloc "EkitCore.java",1960,23,1960,49 } true;
    }
    goto block404;
  block404:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1961,5,1961,23 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$deleteTableColumn$4071(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block405;
  block403:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1962,23,1962,43 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1552278, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst160);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1552278 == 0) {
        assert { :sourceloc "EkitCore.java",1962,11,2010,4 } true;
        goto block406;
    } else {
        assert { :sourceloc "EkitCore.java",1962,23,1962,43 } true;
    }
    goto block407;
  block407:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1963,5,1963,17 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertBreak$4072(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block408;
  block406:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1964,23,1964,42 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1562279, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst162);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1562279 == 0) {
        assert { :sourceloc "EkitCore.java",1964,11,2010,4 } true;
        goto block409;
    } else {
        assert { :sourceloc "EkitCore.java",1964,23,1964,42 } true;
    }
    goto block410;
  block410:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1965,5,1965,28 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertNonbreakingSpace$4075(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block411;
  block409:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1966,23,1966,48 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1572280, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst182);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1572280 == 0) {
        assert { :sourceloc "EkitCore.java",1966,11,2010,4 } true;
        goto block412;
    } else {
        assert { :sourceloc "EkitCore.java",1966,23,1966,48 } true;
    }
    goto block413;
  block413:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1967,5,1967,26 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertLocalImage$4079(this2104, $null);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block414;
  block412:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1968,23,1968,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1582281, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst166);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1582281 == 0) {
        assert { :sourceloc "EkitCore.java",1968,11,2010,4 } true;
        goto block415;
    } else {
        assert { :sourceloc "EkitCore.java",1968,23,1968,45 } true;
    }
    goto block416;
  block416:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1969,5,1969,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertUnicode$4073(this2104, 0);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block417;
  block415:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1970,23,1970,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1592282, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst169);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1592282 == 0) {
        assert { :sourceloc "EkitCore.java",1970,11,2010,4 } true;
        goto block418;
    } else {
        assert { :sourceloc "EkitCore.java",1970,23,1970,49 } true;
    }
    goto block419;
  block419:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1971,5,1971,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertUnicode$4073(this2104, 49);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block420;
  block418:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1972,23,1972,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1602283, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst172);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1602283 == 0) {
        assert { :sourceloc "EkitCore.java",1972,11,2010,4 } true;
        goto block421;
    } else {
        assert { :sourceloc "EkitCore.java",1972,23,1972,49 } true;
    }
    goto block422;
  block422:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1973,5,1973,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertUnicode$4073(this2104, 54);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block423;
  block421:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1974,23,1974,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1612284, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst174);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1612284 == 0) {
        assert { :sourceloc "EkitCore.java",1974,11,2010,4 } true;
        goto block424;
    } else {
        assert { :sourceloc "EkitCore.java",1974,23,1974,49 } true;
    }
    goto block425;
  block425:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1975,5,1975,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertUnicode$4073(this2104, 56);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block426;
  block424:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1976,23,1976,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1622285, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst176);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1622285 == 0) {
        assert { :sourceloc "EkitCore.java",1976,11,2010,4 } true;
        goto block427;
    } else {
        assert { :sourceloc "EkitCore.java",1976,23,1976,49 } true;
    }
    goto block428;
  block428:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1977,5,1977,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertUnicode$4073(this2104, 47);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block429;
  block427:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1978,23,1978,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1632286, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst178);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1632286 == 0) {
        assert { :sourceloc "EkitCore.java",1978,11,2010,4 } true;
        goto block430;
    } else {
        assert { :sourceloc "EkitCore.java",1978,23,1978,49 } true;
    }
    goto block431;
  block431:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1979,5,1979,45 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$insertUnicode$4073(this2104, 48);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block432;
  block430:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1980,23,1980,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1642287, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst204);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1642287 == 0) {
        assert { :sourceloc "EkitCore.java",1980,11,2010,4 } true;
        goto block433;
    } else {
        assert { :sourceloc "EkitCore.java",1980,23,1980,36 } true;
    }
    goto block434;
  block434:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1982,7,1982,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1652288 := $heap[this2104,boolean$terpword.EkitCore$lastSearchCaseSetting0];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1982,30,1982,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1662289 := $heap[this2104,boolean$terpword.EkitCore$lastSearchTopSetting0];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1982,30,1982,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$doSearch$4077(this2104, $null, $null, 0, temp$1652288, temp$1662289);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block435;
  block433:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1983,23,1983,41 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1672290, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst207);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1672290 == 0) {
        assert { :sourceloc "EkitCore.java",1983,11,2010,4 } true;
        goto block436;
    } else {
        assert { :sourceloc "EkitCore.java",1983,23,1983,41 } true;
    }
    goto block437;
  block437:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1984,14,1984,31 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1682291 := $heap[this2104,java.lang.String$terpword.EkitCore$lastSearchFindTerm774];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1985,7,1985,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1692292 := $heap[this2104,boolean$terpword.EkitCore$lastSearchCaseSetting0];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1985,7,1985,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$doSearch$4077(this2104, temp$1682291, $null, 0, temp$1692292, 0);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block438;
  block436:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1986,23,1986,39 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1702293, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst210);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1702293 == 0) {
        assert { :sourceloc "EkitCore.java",1986,11,2010,4 } true;
        goto block439;
    } else {
        assert { :sourceloc "EkitCore.java",1986,23,1986,39 } true;
    }
    goto block440;
  block440:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1988,7,1988,27 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1712294 := $heap[this2104,boolean$terpword.EkitCore$lastSearchCaseSetting0];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1988,30,1988,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    temp$1722295 := $heap[this2104,boolean$terpword.EkitCore$lastSearchTopSetting0];
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1988,30,1988,49 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$doSearch$4077(this2104, $null, $null, 1, temp$1712294, temp$1722295);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block441;
  block439:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1989,23,1989,41 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1732296, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst90);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1732296 == 0) {
        assert { :sourceloc "EkitCore.java",1989,11,2010,4 } true;
        goto block442;
    } else {
        assert { :sourceloc "EkitCore.java",1989,23,1989,41 } true;
    }
    goto block443;
  block443:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1990,5,1990,22 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$processWordCount$4125(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block444;
  block442:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1991,23,1991,36 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1742297, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst74);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1742297 == 0) {
        assert { :sourceloc "EkitCore.java",1991,11,2010,4 } true;
        goto block445;
    } else {
        assert { :sourceloc "EkitCore.java",1991,23,1991,36 } true;
    }
    goto block446;
  block446:
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1992,5,1992,8 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $exception := void$terpword.EkitCore$dispose$4119(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    goto block447;
  block445:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",1993,23,1993,41 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1752298, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst216);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1752298 == 0) {
        assert { :sourceloc "EkitCore.java",1993,11,2010,4 } true;
        goto block448;
    } else {
        assert { :sourceloc "EkitCore.java",1993,23,1993,41 } true;
    }
    goto block449;
  block449:
    call $fakelocal_24 := $new(terpword.SimpleInfoDialog);
    temp$1762300 := $fakelocal_24;
    if (this2104 != $null) {
        assert { :sourceloc "EkitCore.java",1995,7,1995,10 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1772301, $exception := java.awt.Frame$terpword.EkitCore$getFrame$4094(this2104);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    call $exception := void$terpword.SimpleInfoDialog$$la$init$ra$$4328(temp$1762300, temp$1772301, $StringConst255, 1, $StringConst256, 1);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    sidAbout2299 := temp$1762300;
    goto block450;
  block448:
    if (command2106 != $null) {
        assert { :sourceloc "EkitCore.java",2000,23,2000,40 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1782302, $exception := boolean$java.lang.String$equals$83(command2106, $StringConst214);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1782302 == 0) {
        assert { :sourceloc "EkitCore.java",2009,24,2009,48 } true;
        goto block451;
    } else {
        assert { :sourceloc "EkitCore.java",2000,23,2000,40 } true;
    }
    goto block452;
  block452:
    call $fakelocal_25 := $new(java.io.File);
    temp$1792304 := $fakelocal_25;
    call $exception := void$java.io.File$$la$init$ra$$6877(temp$1792304, $StringConst257);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    temp2303 := temp$1792304;
    call $fakelocal_26 := $new(java.io.File);
    temp$1802306 := $fakelocal_26;
    if (temp2303 != $null) {
        assert { :sourceloc "EkitCore.java",2003,5,2003,65 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1812307, $exception := java.io.File$java.io.File$getAbsoluteFile$6887(temp2303);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1812307 != $null) {
        assert { :sourceloc "EkitCore.java",2003,5,2003,65 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1822308, $exception := java.lang.String$java.io.File$getParent$6882(temp$1812307);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    call $exception := void$java.io.File$$la$init$ra$$6877(temp$1802306, temp$1822308);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    location2305 := temp$1802306;
    call $fakelocal_27 := $new(java.lang.String);
    temp$1832310 := $fakelocal_27;
    call $fakelocal_28 := $new(java.lang.StringBuffer);
    temp$1842311 := $fakelocal_28;
    call $exception := void$java.lang.StringBuffer$$la$init$ra$$685(temp$1842311);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1842311 != $null) {
        assert { :sourceloc "EkitCore.java",2006,34,2006,54 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $fakelocal_29, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$1842311, $StringConst258);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1842311 != $null) {
        assert { :sourceloc "EkitCore.java",2006,34,2006,54 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $fakelocal_30, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$1842311, location2305);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1842311 != $null) {
        assert { :sourceloc "EkitCore.java",2006,34,2007,34 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call $fakelocal_31, $exception := java.lang.StringBuffer$java.lang.StringBuffer$append$701(temp$1842311, $StringConst259);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    if (temp$1842311 != $null) {
        assert { :sourceloc "EkitCore.java",2006,34,2007,34 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1852312, $exception := java.lang.String$java.lang.StringBuffer$toString$738(temp$1842311);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    call $exception := void$java.lang.String$$la$init$ra$$53(temp$1832310, temp$1852312);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    helpfile2309 := temp$1832310;
    if (helpfile2309 != $null) {
        assert { :sourceloc "EkitCore.java",2008,5,2008,43 } true;
    } else {
        assert { :noverify } true;
        call $exception := $new(java.lang.NullPointerException);
        goto block289;
    }
    call temp$1862313, $exception := java.lang.String$java.lang.String$replace$111(helpfile2309, 92, 47);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    helpfile2309 := temp$1862313;
    call $fakelocal_32 := $new(terpword.HelpBrowser);
    temp$1872315 := $fakelocal_32;
    call $exception := void$terpword.HelpBrowser$$la$init$ra$$8430(temp$1872315, helpfile2309);
    if ($exception != $null && $heap[$exception,$type] <: java.io.IOException) {
        goto block290;
    }
    if ($exception != $null && $heap[$exception,$type] <: javax.swing.text.BadLocationException) {
        goto block291;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.NumberFormatException) {
        goto block292;
    }
    if ($exception != $null && $heap[$exception,$type] <: java.lang.RuntimeException) {
        goto block289;
    }
    help2314 := temp$1872315;
  block451:
  block450:
  block447:
  block444:
  block441:
  block438:
  block435:
  block432:
  block429:
  block426:
  block423:
  block420:
  block417:
  block414:
  block411:
  block408:
  block405:
  block402:
  block399:
  block396:
  block393:
  block390:
  block387:
  block384:
  block381:
  block378:
  block375:
  block372:
  block362:
  block355:
  block348:
  block345:
  block340:
  block335:
  block330:
  block321:
  block316:
    goto block453;
  block290:
    assert { :sourceloc "EkitCore.java",2011,5,2016,3 } $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    ioe2316 := $exception;
    assert { :sourceloc "EkitCore.java",2012,4,2012,61 } this2104 != $null;
    call $exception := void$terpword.EkitCore$logException$4121(this2104, $StringConst260, ioe2316);
    call $fakelocal_33 := $new(terpword.SimpleInfoDialog);
    temp$1882318 := $fakelocal_33;
    assert { :sourceloc "EkitCore.java",2013,53,2013,56 } this2104 != $null;
    call temp$1892319, $exception := java.awt.Frame$terpword.EkitCore$getFrame$4094(this2104);
    call $exception := void$terpword.SimpleInfoDialog$$la$init$ra$$4328(temp$1882318, temp$1892319, $StringConst8, 1, $StringConst261, 0);
    sidAbout2317 := temp$1882318;
    goto block453;
  block291:
    assert { :sourceloc "EkitCore.java",2016,5,2021,3 } $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    ble2320 := $exception;
    assert { :sourceloc "EkitCore.java",2017,4,2017,70 } this2104 != $null;
    call $exception := void$terpword.EkitCore$logException$4121(this2104, $StringConst262, ble2320);
    call $fakelocal_34 := $new(terpword.SimpleInfoDialog);
    temp$1902322 := $fakelocal_34;
    assert { :sourceloc "EkitCore.java",2018,53,2018,56 } this2104 != $null;
    call temp$1912323, $exception := java.awt.Frame$terpword.EkitCore$getFrame$4094(this2104);
    call $exception := void$terpword.SimpleInfoDialog$$la$init$ra$$4328(temp$1902322, temp$1912323, $StringConst8, 1, $StringConst263, 0);
    sidAbout2321 := temp$1902322;
    goto block453;
  block292:
    assert { :sourceloc "EkitCore.java",2021,5,2026,3 } $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    nfe2324 := $exception;
    assert { :sourceloc "EkitCore.java",2022,4,2022,71 } this2104 != $null;
    call $exception := void$terpword.EkitCore$logException$4121(this2104, $StringConst264, nfe2324);
    call $fakelocal_35 := $new(terpword.SimpleInfoDialog);
    temp$1922326 := $fakelocal_35;
    assert { :sourceloc "EkitCore.java",2023,53,2023,56 } this2104 != $null;
    call temp$1932327, $exception := java.awt.Frame$terpword.EkitCore$getFrame$4094(this2104);
    call $exception := void$terpword.SimpleInfoDialog$$la$init$ra$$4328(temp$1922326, temp$1932327, $StringConst8, 1, $StringConst265, 0);
    sidAbout2325 := temp$1922326;
    goto block453;
  block289:
    assert { :sourceloc "EkitCore.java",2026,5,2031,3 } $exception != $null;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    re2328 := $exception;
    assert { :sourceloc "EkitCore.java",2027,4,2027,65 } this2104 != $null;
    call $exception := void$terpword.EkitCore$logException$4121(this2104, $StringConst266, re2328);
    call $fakelocal_36 := $new(terpword.SimpleInfoDialog);
    temp$1942330 := $fakelocal_36;
    assert { :sourceloc "EkitCore.java",2028,53,2028,56 } this2104 != $null;
    call temp$1952331, $exception := java.awt.Frame$terpword.EkitCore$getFrame$4094(this2104);
    call $exception := void$terpword.SimpleInfoDialog$$la$init$ra$$4328(temp$1942330, temp$1952331, $StringConst8, 1, $StringConst267, 0);
    sidAbout2329 := temp$1942330;
    goto block453;
  block453:
    return;
}

