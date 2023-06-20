package edunova;

import javax.swing.JOptionPane;

public class E01UvjetnoGrananjeIf {

	public static void main(String[] args) {

		boolean uvjet = true;

		// obavezni dio if sintakse
		if (uvjet) { // ovakvu sintaksu ću rijeđe susretati
			System.out.println("1");
		}

		// opcionalni
		else {
			// false grana
			System.out.println("2");
		}

		int i = 1;
		// češće susretljiva sintaksa
		if (i > 0) {
			System.out.println("3");
		}

		// kada se if odnosi samo na jednu liniju nakon if-a tada ne trebaju {}
		if (i == 0)
			System.out.println("4");
		System.out.println("5");

		// nikada ne smijem napraviti!!

		boolean tocno = true;
		if (tocno = true) {
			System.out.println("6");
		}

		// korištenje logičkih operatora: & (and) | (alt gr + w) !

		int t = 2;
		int k = 3;
		// ugnježđeni if
		if (t != 0) {
			if (k > -8) {
				System.out.println("7");
			}
		}

		// jedan & provjerava oba uvjeta
		if (t != 0 & k > -8) {
			System.out.println("8");
		}

		// && (dva komada): drugi uvjet se ne provjerava ako prvi nije zadovoljen

		if (t != 0 && k > -8) {
			System.out.println("9");

			// Mi ćemo u nastavku koristiti &&

		}

		// | (ili) komada 1 provjerava oba uvjeta
		if (t == 2 | k >= 7) {
			System.out.println("10");
		}

		// || (ili) komada 2 ukoliko je prvi uvjet zadovoljen ne provjerava se drugi
		if (t == 2 || k >= 7) {
			System.out.println("11");
		}
		// mi ćemo u nastavku koristiti ||

		if (!tocno) { // NE OVO tocno==false (! je različito ili ne, negacija)
			System.out.println("12");
		}

		int ocjena = 3;

		if (ocjena == 1) {
			System.out.println("Nedovoljan"); // ako je ocjena 1, onda ispiši nedovoljan
		} else if (ocjena == 2) {
			System.out.println("Dovoljan");
		} else {
			System.out.println("SUPER");
		}

		int broj = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj")); // tražim od korisnika da unese broj

		if (broj % 2 == 0) {
			System.out.println("Broj je paran");
		} else {
			System.out.println("Broj je neparan");
		}

		// tercijarni operator ?
		// koji nam služi za inline if
		System.out.println("Broj je " + (broj % 2 != 0 ? "ne" : "") + "paran");

		// String nomen=JOptionPane.showInputDialog("Type your name please"); ===>> (ovo
		// traži od mene unos imena (tzv.prompt)
		// JOptionPane.showMessageDialog(null, "Hello" + nomen); ===>> (ovo prikazuje
		// moje ime)

	}
}
