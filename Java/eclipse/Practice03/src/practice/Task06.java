package practice;

import javax.swing.JOptionPane;

public class Task06 {

	// Korisnik unosi ime mjesta iz jedne od 4 slavonske županije
	// Za uneseno ime mjesta program ispisuje ime županije

	public static void main(String[] args) {

		String grad = JOptionPane.showInputDialog("Unesi ime grada");

		switch (grad) {

		case "Osijek":
			System.out.println("Osječko-baranjska županija");
			break;
		case "Vukovar":
			System.out.println("Vukovarsko-srijemska županija");
			break;
		case "Slavonski Brod":
			System.out.println("Brodsko-posavska županija");
			break;
		case "Požega":
			System.out.println("Požeško-slavonska županija");
			break;
		default:
			System.out.println("Nije ispravan naziv grada");
			break;

		}

	}

}
