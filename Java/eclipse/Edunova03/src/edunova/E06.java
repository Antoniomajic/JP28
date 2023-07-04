package edunova;

import javax.swing.JOptionPane;

public class E06 {

	public static void main(String[] args) {

		int number = Integer.parseInt(JOptionPane.showInputDialog("Please insert one number between 1 and 999"));

		if (number > 999) {
			System.out.println("Error");

		} else if (number < 1) {
			System.out.println("Error");

		} else if (number >= 1 && number <= 9) {
			System.out.println(number);
		} else if (number >= 10 && number <= 99) {
			System.out.println(number / 10);
		} else if (number >= 100 && number <= 999) {
			System.out.println(number / 100);
		} else {
			System.out.println("You did not enter a number");
			return;
		}

	}

}