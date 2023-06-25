package practice;

import javax.swing.JOptionPane;

public class Practice08Ulaz {

	public static void main(String[] args) {

		String ulazKorisnika = JOptionPane.showInputDialog("Unesi broj: ");

		int b = Integer.parseInt(ulazKorisnika);

		System.out.println(b);

	}

}
