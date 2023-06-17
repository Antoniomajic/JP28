package edunova;

import javax.swing.JOptionPane;

public class Z02 {

	public static void main(String[] args) {
		
		int a = Integer.parseInt(JOptionPane.showInputDialog("Prvi broj"));
		int b = Integer.parseInt(JOptionPane.showInputDialog("Drugi broj"));
		
		System.out.println(a/(float)b);
		
		

	}

}
