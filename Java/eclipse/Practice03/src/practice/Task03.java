package practice;

import javax.swing.JOptionPane;

public class Task03 {
	public static void main(String[] args) {

		// unesi grad iz kojeg dolaziš i koliko godina imaš

		String grad = JOptionPane.showInputDialog("Unesi grad iz kojeg dolaziš:");
		int godina = Integer.parseInt(JOptionPane.showInputDialog("Unesi koliko imaš godina"));

		System.out.println("Ja dolazim iz mjesta " + grad + " i imam " + godina + " godina.");

	}

}
