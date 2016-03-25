import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ClassifyingTriangles {

	public static void main(String[] args) {
		int T, s1, s2, s3;
		List<String> output;
		Scanner input = new Scanner(System.in);
		T = input.nextInt();
		output = new ArrayList<String>();
		for (int i=0; i<T; i++) {
			s1 = input.nextInt();
			s2 = input.nextInt();
			s3 = input.nextInt();
			if ((s1+s2 > s3) && (s1+s3 > s2) && (s2+s3 > s1)) {
				if ((s1 == s2) && (s2 == s3))
					output.add("Equilateral");
				else if ((s1 == s2) || (s1 == s3) || (s2 == s3))
					output.add("Isosceles");
				else
					output.add("Scalene");
			} else {
				output.add("Invalid");
			}
		}
		input.close();
		for (int i=0; i<T; i++) {
			System.out.println("Case " + (i+1) + ": " + output.get(i));
		}
	}
	
}
