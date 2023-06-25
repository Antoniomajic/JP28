package practice;

public class Practice14UvjetnoGrananjeSwitch {

	public static void main(String[] args) {

		int ocjena = 3;

		if (ocjena == 1) {
			System.out.println("Nedovoljan");
		} else if (ocjena == 2) {
			System.out.println("Dovoljan");
		}
		// ....
		else {
			System.out.println("Nije ocjena");
		}

		switch (ocjena) {
		case 1:
			System.out.println("Nedovoljan");
			break;
		case 2:
			System.out.println("Dovoljan");
			break;
		case 3:
			System.out.println("Dobar");
			break;
		// ....
		default:
			System.out.println("Nije ocjena");

		}

		String grad = "Osijek";

		switch (grad) {
		case "Osijek":
			System.out.println("Najbolji grad");
			break;
		default:
			System.out.println("Svi drugi");

		}

		char c = 'A';
		switch (c) {
		case 'A':
			System.out.println("Slovo A");
		}

	}

}
