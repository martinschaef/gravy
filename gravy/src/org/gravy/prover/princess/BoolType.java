package org.gravy.prover.princess;

import org.gravy.prover.ProverType;

class BoolType implements ProverType {

	public static BoolType INSTANCE = new BoolType();

	private BoolType() {
	}

	public String toString() {
		return "Bool";
	}

}
