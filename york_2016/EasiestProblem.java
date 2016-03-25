import java.util.ArrayList;
import java.util.Scanner;

public class EasiestProblem {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int cases = Integer.parseInt(input.nextLine());
		ArrayList<String> output = new ArrayList<>();
		for (int i=0; i<cases; i++) {
			String temp = input.nextLine();
			String[] values = temp.split(" ");
			int competitors = Integer.parseInt(values[0]);
			int problems = Integer.parseInt(values[1]);
			int[] solutions = new int[problems];
			for (int k=0; k<problems; k++)
				solutions[k] = 0;
			for (int j=0; j<competitors; j++) {
				String row = input.nextLine();
				String[] cells = row.split(" ");
				for (int k=1; k<cells.length; k++) {
					if (Integer.parseInt(cells[k]) > 0)
						solutions[k-1]++;
				}
			}
			int easy = 0;
			for (int k=0; k<solutions.length; k++)
				if (solutions[k] > solutions[easy])
					easy = k;
			output.add("Problem " + (easy+1) + " is easiest.");
		}

		for (String line : output)
			System.out.println(line);
		input.close();
	}

}
