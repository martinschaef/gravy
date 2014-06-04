package org.gravy.prover.princess;

import org.gravy.prover.Prover;
import org.gravy.prover.ProverFactory;

public class PrincessProverFactory implements ProverFactory {

	@Override
	public Prover spawn() {
		return new PrincessProver();
	}

	@Override
	public Prover spawnWithLog(String basename) {
		return new PrincessProver(basename);
	}

}
