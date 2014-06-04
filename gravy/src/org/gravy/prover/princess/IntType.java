package org.gravy.prover.princess;

import org.gravy.prover.ProverType;

class IntType implements ProverType {

	public static IntType INSTANCE = new IntType();

	private IntType() {
	}

	public String toString() {
		return "Int";
	}

}
