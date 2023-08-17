package edunova;

public class E01Metode {
	
	public static void main(String[] args) {
		tip1(); // italic (ukoso) jer je statična
		
		tip1(2);
		
		int broj=7;
		tip1(broj);
		
		tip1(true);
	}
		// 1. vrsta metode tipa void, ne prima parametre
		
		// staticne metode možeš zvati iz statične metode, a poošto je main static onda mora i ova biti
		// za sada moramo 
		/* bez navođenja načina pristupa */ static void tip1() { /* bez navođenja načina pristupa */
			System.out.println("Hello tip 1");
			
		}
		
		// potpis metode: naziv + lista parametra koju prima
		
		
		// 2. tipa void, prima parametre
		//method overloading = naziv može biti isti i tip podatka parametra može biti
		private static void tip1(int i) {
			System.out.println("Tip 2 " + i);
		}
		
		//method overloading 
		protected static void tip1(boolean i) {
			System.out.println("Tip 2 " + i);
		}
		
		
		// 3. određenog tipa, ne prima parametre
		
		public static int zbroj100brojeva() { // javit će se sintaksa greška jer metoda određenog tipa mora vratiti vrijednost
			
			int s = 0;
			for(int i=1;i<=100;i++) {
				s+=i;
			}
			return s;
			
		}
	

}
