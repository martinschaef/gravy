/**
 * 
 */
package org.gravy.util;

import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.ast.NamedAttribute;
import boogie.ast.expression.literal.IntegerLiteral;
import boogie.ast.expression.literal.StringLiteral;

/**
 * @author schaef
 *
 */
public class JavaSourceLocation {
	
	public String FileName = "";
	public int StartLine = -1;
	public int EndLine = -1;
	public int StartCol = -1;
	public int EndCol = -1;
	public String comment = "";
	public boolean isCloned = false;
	public boolean isNoVerify = false;
	public boolean inInfeasibleBlock = false;

	@Override
	public boolean equals(Object other) {
		if (other instanceof JavaSourceLocation) {
			JavaSourceLocation o = (JavaSourceLocation) other;
			return o.FileName.equals(FileName)
					&& o.StartLine == this.StartLine
					&& o.EndLine == this.EndLine
					&& o.StartCol == this.StartCol
					&& o.EndCol == this.EndCol;
		}
		return false;
	}

	@Override
	public int hashCode() {
		return this.FileName.hashCode() * StartLine * EndLine * StartCol
				* EndCol;
	}
	

	public static JavaSourceLocation readSourceLocationFromAttributes(
			Attribute[] attributes) {
		JavaSourceLocation jcl = null;
		String comment = null;
		boolean noverify = false;
		boolean cloned = false;
		for (Attribute attr : attributes) {
			if (attr instanceof NamedAttribute) {
				NamedAttribute na = (NamedAttribute) attr;
				if (na.getName().equals(ProgramFactory.LocationTag)
						&& na.getValues().length >= 3) {
					try {
						jcl = new JavaSourceLocation();
						jcl.FileName = ((StringLiteral) na.getValues()[0])
								.getValue();
						if (na.getValues()[1] instanceof IntegerLiteral) { // else
																			// its
																			// -1
							jcl.StartLine = Integer
									.parseInt(((IntegerLiteral) na.getValues()[1])
											.getValue());
						}
						if (na.getValues()[2] instanceof IntegerLiteral) { // else
																			// its
																			// -1
							jcl.StartCol = Integer
									.parseInt(((IntegerLiteral) na.getValues()[2])
											.getValue());
						}
						if (na.getValues().length >= 5) {
							if (na.getValues()[3] instanceof IntegerLiteral) { // else
																				// its
																				// -1
								jcl.EndLine = Integer
										.parseInt(((IntegerLiteral) na
												.getValues()[3]).getValue());
							}
							if (na.getValues()[4] instanceof IntegerLiteral) { // else
																				// its
																				// -1
								jcl.EndCol = Integer
										.parseInt(((IntegerLiteral) na
												.getValues()[4]).getValue());
							}
						}
					} catch (NullPointerException e) {
						e.printStackTrace();
						jcl = null;
					}
				} else if (na.getName().equals(ProgramFactory.Comment)) {
					if (na.getValues().length > 0
							&& na.getValues()[0] instanceof StringLiteral) {
						comment = ((StringLiteral) na.getValues()[0])
								.getValue();
					} else {
						comment = null;
					}
				} else if (na.getName().equals(ProgramFactory.Cloned)) {
					cloned = true;
				} else if (na.getName().equals(ProgramFactory.NoVerifyTag)) {
					noverify = true;
				}
			}
		}
		if (jcl != null ) {
			if (comment!=null) jcl.comment = comment;
			jcl.isCloned = cloned;
			jcl.isNoVerify = noverify;
		}
		return jcl;
	}


}

