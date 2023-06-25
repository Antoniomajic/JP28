package practice;

public class Practice10Operatori {

	public static void main(String[] args) {

		// Čitati :
		// https://docs.oracle.com/javase/tutorial/java/nutsandbolts/opsummary.html

		// operator dodjeljivanja =
		int i = 2;

		// provjera jednakosti ==
		boolean b = i == 2;

		System.out.println(b);

		// različito !=
		boolean c = 3 != 2;

		System.out.println(c);

		// logički and &, or (alt gr W) |, not ! -> detaljnije u if naredbi
		boolean k = false;
		System.out.println(k & b);

		// modulo %

		boolean parniBroj = 8 % 2 == 0;
		
		System.out.println(parniBroj);

	}

}
