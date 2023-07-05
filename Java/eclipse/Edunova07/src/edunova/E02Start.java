package edunova;

public class E02Start {

	public static void main(String[] args) {
		// Ovo morate znati u svako doba dana i noći:
		// Objekt je instanca/pojavnost klase

		// prvo ide Naziv klase - to je tip objekta
		// onda ide Naziv instance/objekta/varijable (u pravilu se piše malim slovima
		// kao i ime klase)
		// i onda nakon jednako (=) ide poziv posebne metode (koji se zove konstruktro)
		Osoba osoba = new Osoba();
/*      OVO NIJE PO OOP
		osoba.ime = "Pero";
		osoba.prezime = "Perić";
		osoba.godine = 24;
		*/
		
		
		osoba.setIme("Pero");
		osoba.setPrezime("Perić");
		osoba.setGodine(24);
		
		
		
		
		Osoba[] osobe = new Osoba[5];
		osobe[0] = osoba;
		
		osoba = new Osoba();
		
		osoba.setIme("Marija");
		osoba.setPrezime("Zimska");
		osoba.setGodine(21);
		
		osobe[1]=osoba;
		
		System.out.println(osobe[0].getPrezime() + " " + osoba.getPrezime());
		
		
		

	}

}
