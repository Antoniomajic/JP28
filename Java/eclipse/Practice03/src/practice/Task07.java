package practice;

import javax.swing.JOptionPane;

public class Task07 {

	/*
	 * Korisnik unosi dva cijela broja program ispisuje veći 3 i 5 -> 5 5 i 3 -> 5 5
	 * i 5 ->
	 */

	public static void main(String[] args) {

		int br1 = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj"));
		int br2 = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj"));

		if (br1 > br2) {
			System.out.println(br1);
		} else if (br2 > br1) {
			System.out.println(br2);
		} else
			System.out.println("");

	}

}
