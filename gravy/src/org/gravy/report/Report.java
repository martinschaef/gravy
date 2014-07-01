/**
 * 
 */
package org.gravy.report;

import java.util.LinkedList;
import java.util.Set;

import org.gravy.verificationcondition.AbstractTransitionRelation;

import util.BoogiePrinter;
import boogie.ProgramFactory;
import boogie.ast.Attribute;
import boogie.ast.NamedAttribute;
import boogie.controlflow.AbstractControlFlowFactory;
import boogie.controlflow.BasicBlock;
import boogie.controlflow.statement.CfgStatement;
import boogie.expression.literal.IntegerLiteral;
import boogie.expression.literal.StringLiteral;
import boogie.statement.Statement;

/**
 * @author schaef
 *
 */
public class Report {

	protected AbstractTransitionRelation transrel;
	protected AbstractControlFlowFactory cff;
	
	public Report(AbstractControlFlowFactory cff, AbstractTransitionRelation tr) {
		this.cff = cff;
		this.transrel = tr;
	}
	
	protected String printLocationAttributes(LinkedList<Statement> stmts) {
		StringBuilder sb = new StringBuilder();
		BoogiePrinter bp = new BoogiePrinter(null);
		
		for (Statement s : stmts) {	
			
			if (s.getLocation()!=null) {
				sb.append("  ");
				sb.append(s.getLocation().getFileName());
				sb.append(": (");
				sb.append(s.getLocation().getStartLine());
				sb.append(":");
				sb.append(s.getLocation().getStartColumn());
				sb.append(") to (");
				sb.append(s.getLocation().getEndLine());
				sb.append(":");
				sb.append(s.getLocation().getEndColumn());
				sb.append(")\n");				
			}
			sb.append("\t");
			sb.append(printLocationAttributes(s.getAttributes()));
			bp.printStatement(sb, s, "");
			sb.append("\n");
			
			
		}
		return sb.toString();
	}
	
	
	protected String printLocationAttributes(Attribute[] attributes) {
		StringBuilder sb = new StringBuilder();
		if (attributes!=null) {
			for (Attribute att : attributes) {
				if (att instanceof NamedAttribute) {
					NamedAttribute na = (NamedAttribute)att;
					if (na.getName().equals(ProgramFactory.LocationTag)) {
						StringLiteral fname = (StringLiteral)na.getValues()[0];
						IntegerLiteral startLine = (IntegerLiteral)na.getValues()[1];
						IntegerLiteral endLine = (IntegerLiteral)na.getValues()[2];
						IntegerLiteral startCol = (IntegerLiteral)na.getValues()[3];
						IntegerLiteral endCol = (IntegerLiteral)na.getValues()[4];
						
						sb.append(fname.getValue());
						sb.append(": (");
						sb.append(startLine.getValue());
						sb.append(":");
						sb.append(startCol.getValue());
						sb.append(") to (");
						sb.append(endLine.getValue());
						sb.append(":");
						sb.append(endCol.getValue());
						sb.append("): ");
						
					}
				}
			}
		}
		return sb.toString();
	}
	
	protected LinkedList<Statement> collectStatements(Set<BasicBlock> blocks) {
		LinkedList<Statement> astStatements = new LinkedList<Statement>();
		for (BasicBlock b : blocks) {
			for (CfgStatement s : b.getStatements()) {
				Statement ast_stmt = this.cff.findAstStatement(s);
				if (ast_stmt!=null && ast_stmt.getLocation()!=null) {
					astStatements.add(ast_stmt);
				} else {
					//for debugging only
				}
			}
		}
		return astStatements;
	}
	
}
