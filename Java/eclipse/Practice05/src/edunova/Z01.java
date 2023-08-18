package edunova;

public class Z01 {
	
	// Kreirati klasu Grad sa minimalno 5 različitih svojstava (različitih tipova podataka)
	// Ovdje u main metodi napraviti instancu klase Grad, dodijeliti vrijednosti za sva svojstva
	// te po želji ispisati jedno svojstvo
	
	public static void main(String[] args) {
		Grad grad = new Grad();
		
		
		grad.setNaziv("Osijek");
		grad.setSimbol('O');
		grad.setGradskiProracun(31544987.48);
		grad.setGlavniGradZupanije(true);
		grad.setBrojStanovnika(98745);
		
		System.out.println(grad.getBrojStanovnika());
		
		
		
		
	}

}
