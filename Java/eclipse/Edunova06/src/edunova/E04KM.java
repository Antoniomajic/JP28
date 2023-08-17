package edunova;

public class E04KM {
	
	public static void main(String[] args) {
		
		//System.out.println(Pomocno.UcitajBroj("Unesi cijeli broj", "Nisi unio broj"));
		
		int [][] niz = {
				{2,3,4},
				{2,6,7},
				{3,5,4}
		};
		
		Pomocno.ispisiTablicu(niz);
		
		// broj 7 zamjenite s brojem 1 i ponovno ispišite matricu
		
		niz[1][2]=1;
		
		Pomocno.ispisiTablicu(niz);
		
	}

}
