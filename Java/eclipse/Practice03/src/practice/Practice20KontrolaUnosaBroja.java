package practice;

import javax.swing.JOptionPane;

public class Practice20KontrolaUnosaBroja {
	// program traži od korisnika unos broja između 1 i 10

	public static void main(String[] args) {

		int broj;

		for (;;) {
			broj = Integer.parseInt(JOptionPane.showInputDialog("Broj"));
			if (broj >= 1 && broj <= 10) {
				break;
			}
			System.out.println("NIJE DOBAR");
		}
		System.out.println(broj);

	}

}
