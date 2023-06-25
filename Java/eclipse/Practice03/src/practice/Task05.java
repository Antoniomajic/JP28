package practice;

import javax.swing.JOptionPane;

public class Task05 {

	/*
	 * Korisnik unosi cijeli broj Program ispisuje da li je paran ili nije
	 */

	public static void main(String[] args) {

		int i = Integer.parseInt(JOptionPane.showInputDialog("Unesi cijeli broj"));

		if (i % 2 == 0) {
			System.out.println("Broj je paran");
		} else {
			System.out.println("Broj je neparan");
		}

	}

}
