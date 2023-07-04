package edunova;

public class E01ForPetlja {
	public static void main(String[] args) {
		// ispišite 10 linija jednu ispod druge s tekstom Osijek
		// najgore rješenje
		System.out.println("1. **********************************");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");
		System.out.println("Osijek");

		System.out.println("2. **********************************");
		// for (od kuda; do kuda; korak)

		for (int i = 0; i < 10; i = i + 1) {
			System.out.println("Osijek");
		}

		System.out.println("2. **********************************");
		for (int i = 0; i < 10; i += 1) {
			System.out.println(i);
		}

		System.out.println("3. **********************************");
		for (int i = 0; i < 10; i++) {
			System.out.println(i + 1); // i+1 ne mijenja vrijednost varijable i
		}

		System.out.println("4. **********************************");
		for (int i = 100; i > 0; i -= 5) {
			System.out.println(i);
		}

		System.out.println("5. **********************************");
		// zbroj prvih 100 brojeva
		int zbroj = 0;
		for (int i = 1; i <= 100; i++) {
			// System.out.println(i); // ovo ispisuje sve brojeve od 1 do 100
			zbroj += i;
		}
		System.out.println(zbroj);

		System.out.println("6. **********************************");
		// ispiši sve parne brojeve od 1 do 27
		for (int i = 1; i <= 27; i++) {
			if (i % 2 == 0) {
				System.out.println(i);
			}
		}

		System.out.println("7. **********************************");
		int[] niz = { 2, 2, 3, 4, 5, 5, 6 };
		// ispiši sve elemente niza jedno ispod drugog
		for (int i = 0; i < niz.length; i++) {
			System.out.println(niz[i]);
		}

		// beskonačna petlja
		// for(int i=1;i>0;i++) { // ovo nije beskonačna petlja
		//
		// }

		System.out.println("8. **********************************");
		for (;;) {
			System.out.println(Math.random() + " " + Math.random() + " " + Math.random());
			// nasilno prekidanje petlje
			break;
		}

		System.out.println("9. **********************************");
		for (int i = 0; i < 10; i++) {
			if (i == 7) {
				break;
			}
			System.out.println(i);
		}

		System.out.println("10. **********************************");
		// petlju je moguće nastaviti/preskočiti
		for (int i = 0; i < 10; i++) {
			if (i == 3 || i == 7) {
				continue;
			}
			System.out.println(i);
		}

		System.out.println("11. **********************************");
		for (int i = 0; i < 10; i++) {
			if (i == 3 || i == 7) {
				continue;
			}
			if (i == 8) {
				break;
			}
			System.out.println(i);
		}

		System.out.println("12. **********************************");
		// ugnježđivanje petlji
		for (int i = 1; i <= 10; i++) {
			for (int j = 1; j <= 10; j++) {
				System.out.println(i * j + " ");
			}
			System.out.println();

		}

		System.out.println("13. **********************************");
		// prekidanje unutarnjih petlji
		vanjska: for (int i = 1; i <= 10; i++) {
			for (int j = 1; j <= 10; j++) {
				// break; // ovo prekida unutarnju petlju
				// prekidanje vanjske petlje
				break vanjska;
			}
		}

		// zanimljivo
		for (int i = 0; i < 10; i++)
			;
		{ // ; je viška ali nije sintaksna greška
			System.out.println("Osijek");
		}

	}

}
