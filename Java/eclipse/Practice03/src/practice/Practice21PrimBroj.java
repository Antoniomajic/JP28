package practice;

import javax.swing.JOptionPane;

public class Practice21PrimBroj {
	
	// prim/prosti/prime number
	
	// prim broj je cjeli broj djeljiv s jedan i sam sa sobom
	
	public static void main(String[] args) {
		int broj=777798982;
		
		// hipoteza
		boolean prim=true;
		for(int i=2;i<broj;i++) {
			if(broj%i==0) {
				prim=false;
				break; // čitati https://www.bigocheatsheet.com/
			}
		}
		
		System.out.println(broj + (prim ? " je" : " nije") + " prim broj");
		
		// nastavak doma: Ispisati sve prim brojeve između dva unesena broja
	}
	
}
