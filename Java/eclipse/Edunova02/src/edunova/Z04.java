package edunova;

import javax.swing.JOptionPane;

public class Z04 {

	public static void main(String[] args) {
		String grad=JOptionPane.showInputDialog("Unesite ime mjesta: ");
		int b1=Integer.parseInt(JOptionPane.showInputDialog("Unesite godine: "));
		
		System.out.println("Ja imam " + b1 + " g i dolazim iz mjesta " + grad);

	}

}
