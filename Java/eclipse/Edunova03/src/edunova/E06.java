package edunova;

import javax.swing.JOptionPane;

public class E06 {
	
	public static void main(String[] args) {
		
		int number=Integer.parseInt(JOptionPane.showInputDialog("Please insert one number between 1 and 999"));
		System.out.println(number);
		if(number>999) {
			System.out.println(number + " Error");
			return;
		}else if (number<1) {
			System.out.println(number + " Error");
			return;
		}
		
	}

}
