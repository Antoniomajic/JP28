package edunova;

public class Grad {
	
	private String naziv;
	private int brojStanovnika;
	private boolean glavniGradZupanije;
	private double gradskiProracun;
	private char simbol;
	
	
	public String getNaziv() {
		return naziv;
	}
	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}
	public int getBrojStanovnika() {
		return brojStanovnika;
	}
	public void setBrojStanovnika(int brojStanovnika) {
		this.brojStanovnika = brojStanovnika;
	}
	public boolean isGlavniGradZupanije() {
		return glavniGradZupanije;
	}
	public void setGlavniGradZupanije(boolean glavniGradZupanije) {
		this.glavniGradZupanije = glavniGradZupanije;
	}
	public double getGradskiProracun() {
		return gradskiProracun;
	}
	public void setGradskiProracun(double gradskiProracun) {
		this.gradskiProracun = gradskiProracun;
	}
	public char getSimbol() {
		return simbol;
	}
	public void setSimbol(char simbol) {
		this.simbol = simbol;
	}
	
	
	

}
