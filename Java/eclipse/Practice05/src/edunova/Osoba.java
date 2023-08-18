package edunova;


// OVO ZNATI U SVAKO DOBA DANA I NOĆI
// KLASA JE OPISNIK OBJEKTA
// ZA OOP ČITATI tjakopec git OOP_JAVA_PHP...



public class Osoba {
	
	// OVO NIJE DOBRO jer nije po OOP principu učahurivanja
	/*
	String ime;
	String prezime;
	int godine;
	*/
	
	// OOP PRINCIP UČAHURIVANJE (encapsulation)
	// 1. Učahurivanje : Klasa će sakriti svoja svojstva
	private String ime;
	private String prezime;
	private int godine;
	
	
	// konstruktor je posebna metoda
	// koja se poziva ključnom rječju new
	// Naziv konstruktora mora biti istovjetan nazivu klase
	
	// ovo će se zvati prazan konstruktor (jer ništa ne prima)
	public Osoba() {
		System.out.println("Nalazim se u Osoba konstruktor");
	}
	
	// puni konstruktor - onaj koji prima ime,prezime i godine (na ovom primjeru)
	
	public Osoba(String ime, String prezime, int godine) {
		// super();  vezano za nasljeđivanje - kasnije
		this.ime = ime;
		this.prezime = prezime;
		this.godine = godine;
	}
	
	
	// 2. dio učahurivanja
	// Klasa će učiniti  svojstva dostupna putem javnih get/set metoda
	
	/*public String getIme() { 			OVO JE SAMO PRIMJER DA VIDIM KAKO NAKUCATI
		return this.ime;
	}
	
	public void setIme(String ime) {
		this.ime=ime;
	}
	*/
	
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
