package practice;

public class Practice18IncrementDecrement {

	public static void main(String[] args) {

		int i = 0;
		// increment
		i = i + 1; // int je sada 1

		i += 1; // sada je 2 - jer je i sada 1 + 1 pa dobijemo dva

		i++; // 3 - jer je povećao za 1

		++i; // 4

		// decrement
		i = i - 1; // sada je 3

		i -= 1; // 2

		i--; // 1

		--i; // 0

		System.out.println(i);

		// i++ prvo koristi vrijednost pa ju uveća
		i = 1;
		System.out.println(i++); // 1
		System.out.println(i); // 2

		// ++i prvo uveća pa onda koristi vrijednost
		System.out.println(++i); // 3

		// isto vrijedi i za --

		// tipični zadaci
		int t = 1, k = 0;

		t = ++k - t; // k=1, t=0
		System.out.println("k=" + k + ",t=" + t);

		k = --t - t++; // k=0, t=0
		System.out.println("k= " + k + ",t=" + t);
		System.out.println(k + t); // 0

	}

}
