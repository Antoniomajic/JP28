package edunova;

import javax.swing.JOptionPane;

public class Z01 {

	// Program osigurava učitanje broja od korisnika
	// broj je u rasponu od 20 do 50 i nije 30
	// koristiti while petlju

	public static void main(String[] args) { // prije svega main metodu

		int x1; // deklariranje varijable (bolje izvan petlje)

		while (true) {
			x1 = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj:")); // korištenje varijable (ovdje je
																					// koristimo u petlji)
			if (x1 >= 20 && x1 <= 50 && x1 != 30) {
				break; // prekidamo petlju
			}
			JOptionPane.showMessageDialog(null, "Nije dobro"); // prvi parametar (null) je roditelj, njega zovu prozori,
																// za sad ne koristimo
		}

		System.out.println(x1); // ispisujemo nakon petlje

	}

}
