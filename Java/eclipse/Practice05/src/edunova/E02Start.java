package edunova;

import java.util.Date;

public class E02Start {
	
	public static void main(String[] args) {
		
		// OVO MORATE ZNATI U SVAKO DOBA DANA I NOĆI
		// OBJEKT JE INSTANCA/POJAVNOST KLASE
		
		// Prvo ide naziv klase - tip objekta
		// Zatim ide naziv instance/objekta varijable (malim slovima i isto ime kao ime klase)
		// nakon = (jednako) ide poziv posebne metode - konstruktor
		Osoba osoba = new Osoba();
		
		/* OVO NIJE PO OOP
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
		
		osobe[2]= new Osoba("Karlo","Kat",41);
		
		
		System.out.println(osobe[0].getPrezime() + " " + osoba.getPrezime());
		
		Mjesto mjesto = new Mjesto();
		mjesto.setZupanija(new Zupanija("OBŽ",200000)); // ne moram praviti objekt zupaniju jer pozivam puni konstruktor sa svim (dva) parametrima
		
		// jedna od najčešćih iznimaka (da ne kažemo grešaka) je NullPointerException
		
		System.out.println(mjesto.getZupanija().getNaziv());
		
		
		Grupa[] grupe = new Grupa[2];
		
		Smjer smjer = new Smjer(1, "Java programiranje", 1000.99f, true);
		
		grupe[0]=new Grupa(1, "JP27", smjer, new Date(), 25);
		grupe[1]=new Grupa(2, "JP28", smjer, new Date(), 25);
		
		// ispisati sve nazive grupa i naziv smjera grupe s niza grupe
		
		for(Grupa g: grupe) {
			System.out.println(g.getNaziv() + " - " + g.getSmjer().getNaziv());
			
		}
		
	}

}
