package edunova;

public class E02DoWhilePetlja {

	public static void main(String[] args) {

		// do while osigurava minimalno jedan prolazak kroz petlju

		do {
			System.out.println("Ispisuje se");
		} while (false);

		// prekidanje, nastavak i ugnježđivanje su jednako kao kod for i while

		// zbroj 1 do 100 brojeva
		int suma = 0;
		int i = 1;
		do {
			suma += i;
		} while (i++ < 100);
		System.out.println(suma);

	}

}
