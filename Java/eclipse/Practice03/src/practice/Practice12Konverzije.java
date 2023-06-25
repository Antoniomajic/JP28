package practice;

public class Practice12Konverzije {
	
	public static void main(String[] args) {
		
		int i = 24;
		
		// implicitna konverzija
		double d = i;
		
		// eksplicitna konverzija
		i=Integer.parseInt(String.valueOf(d));
		
		// cast metoda
		i=(int)d;
		
		
	}

}
