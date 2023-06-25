package practice;

import javax.swing.JOptionPane;

public class Task09 {
	
	/* program unosi broj između 1 i 999
	 * U slučaju da je izvan tog raspona 
	 * ispisati grešku i prekinuti program
	 * Program ispisuje 1. znamenku upisanog broja
	 * 
	 * -5 greška
	 * 1067 greška
	 * 456 4
	 * 6 6
	 * 89 8
	 */

	public static void main(String[] args) {
		
		int broj=Integer.parseInt(JOptionPane.showInputDialog("Unesi broj: "));
		
		
		if (broj>0 && broj<10) {
			System.out.println(broj);
		}else if (broj>9 && broj<100) {
			System.out.println(broj/10);
		}else if (broj>99 && broj<1000) {
			System.out.println(broj/100);
		}else 
			System.out.println("Greška");
		
		
		
		
	}
	
}
