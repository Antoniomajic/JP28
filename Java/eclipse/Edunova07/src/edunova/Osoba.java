package edunova;
// Ovo znati u svako doba dana i noći:

// Klasa je opisnik objekta

public class Osoba {
	// OVO NIJE DOBRO jer nije po OOP principu očahurivanja
	/*
	 * String ime; 
	 * String prezime; 
	 * int godine;
	 */
	// OOP princip UČAHURIVANJE (incapsulation)
	// 1. Klasa će sakriti svoja svojstva
	private String ime;
	private String prezime;
	private int godine;

	/*
	 * public String getIme() { 
	 * return this.ime; } 
	 * public void setIme(String ime) {
	 * this.ime=ime; }
	 * 
	 */

	// 2. dio učahurivanja= Klasa će učiniti svojstva dostupna putem javnih get/set
	// metoda
	public String getIme() {
		return ime;
	}

	public void setIme(String ime) {
		this.ime = ime;
	}

	public String getPrezime() {
		return prezime;
	}

	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}

	public int getGodine() {
		return godine;
	}

	public void setGodine(int godine) {
		this.godine = godine;
	}

}
