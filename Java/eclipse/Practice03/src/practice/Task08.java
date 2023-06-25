package practice;

import javax.swing.JOptionPane;

public class Task08 {
	
	/* Za upisana 3 cijela broja
	 * program ispisuje najveći
	 * pretpostavka je da su sva tri broja različita
	 */
	
	public static void main(String[] args) {

		int br1=Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj"));
		int br2=Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj"));
		int br3=Integer.parseInt(JOptionPane.showInputDialog("Unesi treći broj"));
		
		if(br1>br2 && br1>br3) {
			System.out.println(br1);
		}else if (br2>br1 && br2>br3) {
			System.out.println(br2);
		}else {
			System.out.println(br3);
		}
		
	}

}
