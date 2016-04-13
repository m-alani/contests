// This is an actual solution written to solve a problem from Google Code Jam (small & large data-sets)
// Problem B: Qualification round - 2016
// Link to problem: https://code.google.com/codejam/contest/6254486/dashboard#s=p0
// 
// Usage: pass the input file name as an argument to the compiled code, the output will be written in "out.txt"
//
// Marwan Alani - 2016

import java.io.File;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Scanner;

public class CountingSheep {

	public static void main(String[] args) {
		
		ArrayList<String> output = new ArrayList<>();
		ArrayList<Character> numbers = new ArrayList<>();
		try {
			Scanner input = new Scanner(new File(args[0]));
			int tempBase;
			int cases = input.nextInt();
			for (int i=0; i<cases; i++) {
				tempBase = input.nextInt();
				numbers.clear();
				for (int j=0; j<10; j++)
					numbers.add(Character.forDigit(j, 10));
				for (int j=1; j<=100 && numbers.size() != 0; j++) {
					String check = Integer.toString(j*tempBase);
					for (int k=0; k<check.length(); k++){
						if (numbers.indexOf(check.charAt(k)) != -1)
							numbers.remove(numbers.indexOf(check.charAt(k)));
					}
					if (numbers.isEmpty())
						output.add("Case #" + (i+1) + ": " + check);
				}
				if (!numbers.isEmpty())
					output.add("Case #" + (i+1) + ": INSOMNIA");
			}
			input.close();
			
			PrintStream outputFile = new PrintStream(new File("out.txt")); 
			for (String line: output)
				outputFile.println(line);
			outputFile.close();
		} catch (Exception e) {
			e.printStackTrace(System.out);
		}
	}

}
