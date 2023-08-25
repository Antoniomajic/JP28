package edunova;

public class Som extends Riba {
	
	private int duzinaBrkova;

	public int getDuzinaBrkova() {
		return duzinaBrkova;
	}

	public void setDuzinaBrkova(int duzinaBrkova) {
		this.duzinaBrkova = duzinaBrkova;
	}

	public Som() {
		super();
	}

	public Som(int latinskiNaziv, int dubinaZarona, int duzinaBrkova) {
		super(latinskiNaziv, dubinaZarona);
		this.duzinaBrkova = duzinaBrkova;
	}
	
	

}
