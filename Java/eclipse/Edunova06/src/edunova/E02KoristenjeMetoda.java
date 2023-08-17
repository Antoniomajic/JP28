package edunova;

public class E02KoristenjeMetoda {
	
	public static void main(String[] args) {
		E01Metode.tip1();
		
		// ne možeš pristupiti metodi pozivom na klasu ako nije static
		//System.out.println(Pomocno.valjanOIB("4547878784564564"));
		
		// ne statične metode se pozivaju na objektu, ne na klasi
		
		// treba mi objekt koji je instanca klase
		
		Pomocno p = new Pomocno();
		// objekti mogu pamtiti stanje klase
		
		//System.out.println(p.valjanOIB("19866450032")); // warning kada je metoda static
		
		System.out.println(Pomocno.valjanOIB("4547878784564564"));
		
	}
}
