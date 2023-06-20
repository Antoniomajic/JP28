package edunova;

import javax.swing.JOptionPane;

public class Z02 {

	public static void main(String[] args) {

		int broj1 = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj: "));
		if (broj1 % 2 == 0) {
			System.out.println("Broj je paran");
		} else {
			System.out.println("Broj je neparan");
		}

		System.out.println("Broj je " + (broj1 % 2 != 0 ? "ne" : "") + "paran"); // inline (? je if, a : je else)
		System.out.println("Broj je " + (broj1 % 2 == 0 ? "" : "ne") + "paran"); // inline
	}
}
