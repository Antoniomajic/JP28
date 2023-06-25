package practice;

import javax.swing.JOptionPane;

public class Task02 {

	public static void main(String[] args) {

		// Za unesena dva cijela broja ispišite rezultat djeljenja

		int i = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj:"));
		int j = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj:"));

		System.out.println(i / j);

		// jedan od brojeva mora biti float pa "castamo" varijablu u float

		System.out.println(i / (float) j);

		// ekvivalent onom gore
		System.out.println(Integer.parseInt(JOptionPane.showInputDialog("Prvi broj"))
				/ (float) Integer.parseInt(JOptionPane.showInputDialog("Drugi broj")));

	}

}
