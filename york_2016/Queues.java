import java.util.ArrayList;
import java.util.Scanner;

public class Queues {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int cases = Integer.parseInt(input.nextLine());
		ArrayList<Boolean> output = new ArrayList<>();

		for (int i=0; i<cases; i++) {
			int length = Integer.parseInt(input.nextLine());
			String line = input.nextLine();
			line = line.replaceAll("\\s+","");
			if (line.indexOf('Z') != (line.length() / 2))
				output.add(false);
			else {
				output.add(line.substring(0, line.indexOf('Z')).equals(line.substring(line.indexOf('Z')+1, line.length())));
			}
		}

		for (boolean value : output)
			System.out.println(value);
		input.close();
	}

}
