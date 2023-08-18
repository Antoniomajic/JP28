package edunova;

public class Racunalo {
	
	private String naziv;
	private double cijena;
	private boolean dostupan;
	
	
	
	
	
	
	
	
	public Racunalo() {
		super();
	}
	public Racunalo(String naziv, double cijena, boolean dostupan) {
		super();
		this.naziv = naziv;
		this.cijena = cijena;
		this.dostupan = dostupan;
	}
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public double getCijena() {
		return cijena;
	}
	public void setCijena(double cijena) {
		this.cijena = cijena;
	}
	public boolean isDostupan() {
		return dostupan;
	}
	public void setDostupan(boolean dostupan) {
		this.dostupan = dostupan;
	}
	
	
	
	
	
	
	

}
