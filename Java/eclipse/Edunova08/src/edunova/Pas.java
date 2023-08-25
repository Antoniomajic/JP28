package edunova;

public class Pas extends Sisavac {
	
	private String pasmina;

	public String getPasmina() {
		return pasmina;
	}

	public void setPasmina(String pasmina) {
		this.pasmina = pasmina;
	}

	public Pas(int latinskiNaziv, int danaGraviditeta) {
		super(latinskiNaziv, danaGraviditeta);
	}

	public Pas(int latinskiNaziv, int danaGraviditeta, String pasmina) {
		super(latinskiNaziv, danaGraviditeta);
		this.pasmina = pasmina;
	}
	
	

}
