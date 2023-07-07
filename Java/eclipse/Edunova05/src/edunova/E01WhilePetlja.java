package edunova;

import java.nio.file.spi.FileSystemProvider;

public class E01WhilePetlja {

	public static void main(String[] args) {

		// while radi s boolean tipom podatka
		// beskonačna petlja

		while (true) {
			break;
		}

		// for petlja se ne mora izvesti
		for (int i = 0; i < 0; i++) {
			System.out.println("01 Neće se izvesti");
		}

		boolean uvjet = false;
		while (uvjet) {
			System.out.println("02 Neće se izvesti");
		}

		// standardni primjer
		int i = 0;
		while (i++ < 10) {
			System.out.println(i);
		}
		// ovo će ispisati od 1 do 10

		int j = 0;
		while (j < 10) {
			System.out.println(j++);
		}
		// a ovaj će od 0 do 10

		// continue, break i ugnježđivanje rade kao u for petlji

	}

}
