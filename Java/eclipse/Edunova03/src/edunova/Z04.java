package edunova;

import javax.swing.JOptionPane;

public class Z04 {

	public static void main(String[] args) {
		
		int pb= Integer.parseInt(JOptionPane.showInputDialog("Prvi broj"));
		int db = Integer.parseInt(JOptionPane.showInputDialog("Drugi broj"));
		
		if(pb>db) {
			System.out.println(pb);
		}else if (db>pb) {
			System.out.println(db);
		}
		
		
		
	}

}
