import java.util.ArrayList;
import java.util.Scanner;

public class IceCream {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int cases = Integer.parseInt(input.nextLine());
		ArrayList<Integer> output = new ArrayList<>();
		for (int i=0; i<cases; i++) {
			int options = Integer.parseInt(input.nextLine());
			double[] value = new double[options];
			for (int j=0; j<options; j++) {
				String row = input.nextLine();
				String[] cells = row.split(" ");
				double h = Double.parseDouble(cells[1]);
				double r = Double.parseDouble(cells[2]);
				double price = Double.parseDouble(cells[3]);
				if (cells[0].contains("cone")) {
					double volume = ((Math.PI * Math.pow(r, 2) * (h / 3.0)) + (((4.0/6.0) * Math.PI * Math.pow(r, 3))));
					value[j] = price / volume;
				} else {
					double volume = (Math.PI * Math.pow(r, 2) * h);
					value[j] = price / volume;
				}
			}
			int best = 0;
			for (int k=1; k<value.length; k++)
				if (value[k] < value[best])
					best = k;
			output.add(best+1);
		}

		for (int value : output)
			System.out.println(value);
		input.close();
	}
}
