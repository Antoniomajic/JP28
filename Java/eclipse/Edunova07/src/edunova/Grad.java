package edunova;

public class Grad {
	
	private String Naziv;
	private int brojStanovnika;
	private String gradonacelnik;
	private String zupanija;
	private float proracun;
	
	
	public String getNaziv() {
		return Naziv;
	}
	public void setNaziv(String naziv) {
		Naziv = naziv;
	}
	public int getBrojStanovnika() {
		return brojStanovnika;
	}
	public void setBrojStanovnika(int brojStanovnika) {
		this.brojStanovnika = brojStanovnika;
	}
	public String getGradonacelnik() {
		return gradonacelnik;
	}
	public void setGradonacelnik(String gradonacelnik) {
		this.gradonacelnik = gradonacelnik;
	}
	public String getZupanija() {
		return zupanija;
	}
	public void setZupanija(String zupanija) {
		this.zupanija = zupanija;
	}
	public float getProracun() {
		return proracun;
	}
	public void setProracun(float proracun) {
		this.proracun = proracun;
	}
	
	

}
