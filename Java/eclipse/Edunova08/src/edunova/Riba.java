package edunova;

public class Riba extends Zivotinja {
	private int dubinaZarona;

	public int getDubinaZarona() {
		return dubinaZarona;
	}

	public void setDubinaZarona(int dubinaZarona) {
		this.dubinaZarona = dubinaZarona;
	}

	public Riba() {
		super();
	}

	public Riba(int latinskiNaziv, int dubinaZarona) {
		super(latinskiNaziv);
		this.dubinaZarona = dubinaZarona;
	}
	
	

}
