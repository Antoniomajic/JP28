package edunova;

import javax.swing.JOptionPane;

public class E05PrimBroj {

	// prim/prosti/prime number

	// prim broj je cjelobrojno djeljiv s jedan i sam sa sobom

	public static void main(String[] args) {
		int broj = 7;

		// hipoteza
		boolean prim = true;
		for (int i = 2; i < broj; i++) {
			if (broj % i == 0) {
				prim = false;
				break;
			}
		}
		System.out.println(broj + (prim ? " je" : " nije") + " prim broj");

		// nastavak doma: ispisati sve prim brojeve između dva unesena broja
		
		
		

	}

}
