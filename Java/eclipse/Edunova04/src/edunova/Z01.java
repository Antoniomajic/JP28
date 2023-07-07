package edunova;

import javax.swing.JOptionPane;

public class Z01 {
	// Korisnik unosi dva cijela broja
	// Program ispisuje
	// zbroj svih neparnih brojeva
	// između dva unesena broja

	public static void main(String[] args) {

		int br1 = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi cijeli broj:"));
		int br2 = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi cijeli broj:"));

		int manji = br1 < br2 ? br1 : br2;
		int veci = br2 < br1 ? br1 : br2;
		int zbroj = 0;
		for (int i = manji; i <= br2; i++) {
			if (i % 2 == 1) {
				zbroj += i;
			}

		}

		System.out.println(zbroj);

	}
}


// ovaj zadatak je riješen!