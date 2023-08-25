package edunova;

public class Sisavac extends Zivotinja {
	private int danaGraviditeta;

	public int getDanaGraviditeta() {
		return danaGraviditeta;
	}

	public void setDanaGraviditeta(int danaGraviditeta) {
		this.danaGraviditeta = danaGraviditeta;
	}

	public Sisavac(int latinskiNaziv, int danaGraviditeta) {
		super(latinskiNaziv);
		this.danaGraviditeta = danaGraviditeta;
	}

	public Sisavac() {
		super();
	}
	
	
	
}
