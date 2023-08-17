package edunova;

public class E05TryCatch {
	
	public static void main(String[] args) {
		
		int[] niz = {1,2};
		
		
		
		// iznimke se obrađuju sa try catch finally blokom
		
		try {
			// ovdje se uvijek dolazi
			System.out.println(niz[2]);
		} catch (ArrayIndexOutOfBoundsException e) {
			// ovdje se dolazi ako je iznimka bačena (throw) ArrayIndexOutOfBoundsException
			System.out.println("Ideš na indeks koji ne postoji");
		}catch (NumberFormatException | StackOverflowError e) {
			// ovdje se dolazi ako je bačena  iznimka  NumberFormatException ili StackOverflowError
		}catch (Exception e) {
			// ovaj će uhvatiti sve što prethodno nije navedeno
		}finally {
			// ovdje se uvijek dolazi
		}
		
		// u nastavku ću korisiti
		try {
			
		} catch (Exception e) {
			System.out.println(niz[2]);
			e.printStackTrace();
		}
		
		
		
		
	}

}
