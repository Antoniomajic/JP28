package edunova;

import javax.swing.JOptionPane;

public class Z03 {

	public static void main(String[] args) {

		String gradovi = JOptionPane.showInputDialog("Unesi ime grada");

		switch (gradovi) {
		case "Osijek":
			System.out.println("Osječko-baranjska županija");
			break;
		case "Vukovar":
			System.out.println("Vukovarsko-srijemska županija");
			break;
		case "Požega":
			System.out.println("Požeško-slavonska županija");
			break;
		case "Slavonski Brod":
			System.out.println("Brodsko-posavska županija");
			break;
		}

	}

}
