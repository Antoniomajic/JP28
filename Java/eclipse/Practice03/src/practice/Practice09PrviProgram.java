package practice;

import javax.swing.JOptionPane;

public class Practice09PrviProgram {

	public static void main(String[] args) {

		int broj = Integer.parseInt(
						JOptionPane.showInputDialog("Unesi broj")); // program te traži da upišeš broj (u ovom slučaju)
		
		broj=broj+7;
		
		System.out.println(broj); //ispisuje broj u console(konzoli)

	}

}
