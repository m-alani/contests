import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ToAndFro {

	public static void main(String[] args) {
		List<String> matrix;
		List<String> finalOutput = new ArrayList<String>();;
		int C;
		Scanner input = new Scanner(System.in);
		C = input.nextInt();
		while (C > 1 ){
			String temp, tempOut = "";
			String encrypted = input.next();
			matrix = new ArrayList<String>();
			for (int i=0; i < encrypted.length() / C; i++) {
				temp = encrypted.substring(i * C, (i * C) + C);
				if (i % 2 == 1)
					temp = new StringBuilder(temp).reverse().toString();
				matrix.add(temp);
			}
			for (int i=0; i<C; i++)
				for (int j=0; j<matrix.size(); j++)
					tempOut += matrix.get(j).charAt(i);
			finalOutput.add(tempOut);
			C = input.nextInt();
		}
		input.close();

		for (int i=0; i<finalOutput.size(); i++)
			System.out.println(finalOutput.get(i));

	}
}
