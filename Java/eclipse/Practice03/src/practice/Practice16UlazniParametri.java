package practice;

public class Practice16UlazniParametri {

	public static void main(String[] args) {

		if (args.length != 2) {
			System.out.println("Obavezno dva parametra");
			return; // prekidaš metode - short curcuiting
		}

		System.out.println(args[0]);
	}

}
