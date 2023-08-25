package edunova;

import java.util.Date;

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
		
		osobe[2] = new Osoba("Karlo","Kat",41); // ovo je kao od 28-36 linije 
		
		System.out.println(osobe[0].getPrezime() + " " + osoba.getPrezime());
		
		Mjesto mjesto = new Mjesto();
		mjesto.setZupanija(new Zupanija("OBŽ",200000)); // radim ovo da nemam NullPointerException
		// jedna od najčešćih iznimaka (da ne kažemo grešaka) je NullPointerException
		
		System.out.println(mjesto.getZupanija().getNaziv()); // jer nisam konstruirao zupaniju
		
		
		
		Grupa[] grupe = new Grupa[2];
		
		Smjer smjer = new Smjer(1, "Java programiranje", 1000.99f, true);
		
		grupe[0] = new Grupa(1, "JP27", smjer, new Date(), 25);
		grupe[1] = new Grupa(2, "JO28", smjer, new Date(), 25);
		
		// ispisati sve nazive grupa i naziv smjera grupe sa niza grupe
		
		
		// foreach
		for(Grupa g: grupe) {
			System.out.println(g.getNaziv() + " - " + g.getSmjer().getNaziv());
		}
		
		
		
		
		
		
		
		
		
		
		
		

	}

}
