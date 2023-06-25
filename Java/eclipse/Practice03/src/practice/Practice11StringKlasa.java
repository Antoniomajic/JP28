package practice;

public class Practice11StringKlasa {

	public static void main(String[] args) {

		// prema OOP pravilima
		String s = new String();

		// kraća sintaksa

		String grad = "Osijek" + " je najbolji " + 9;

		System.out.println(grad);
		System.out.println(grad.toLowerCase());
		System.out.println(grad.toUpperCase());
		System.out.println(grad.substring(2, 6)); // substring bira znakove, u ovom slučaju od drugog do šestog te će
													// ispisati samo "ijek" jer je i drugi znak a k šesti
	}

}
