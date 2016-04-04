// This is a practice solution written to solve a problem from Google Code Jam
// Problem A: Qualification round - Africa - 2010
// Hyperlink to problem: https://code.google.com/codejam/contest/351101/dashboard#s=p0
// 
// Usage: pass the input file name as an argument to the compiled code, the output will be written in "output.txt"
//
// Marwan Alani - 2015

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Scanner;

public class storeCredit {

	public static void main(String[] args) {
		Scanner input = null;
		BufferedWriter outputFile = null;
		
		// Reading input file and processing cases
		try {
			ArrayList<String> output = new ArrayList<>();
			input = new Scanner(new File(args[0]));
			int cases = input.nextInt();
			for (int i=0; i<cases; i++) {
				int total = input.nextInt();
				int items = input.nextInt();
				ArrayList<Integer> prices = new ArrayList<>();
				boolean found = false;
				for (int j=0; j<items; j++) {
					int current = input.nextInt();
					for (int k=0; k<prices.size() && !found; k++) {
						if (current + prices.get(k) == total) {
							found = true;
							output.add("Case #" + (i+1) + ": " + (k+1) + " " + (prices.size()+1) + '\n');
						} 
					}
					prices.add(current);
				}
			}
			
			// Writing output to file (output.txt)
			File file = new File("output.txt");
			if (!file.exists()) {
				file.createNewFile();
			}
			FileWriter fileWriter = new FileWriter(file.getAbsoluteFile());
			outputFile = new BufferedWriter(fileWriter);			
			for (int i=0; i<output.size(); i++)
				outputFile.write(output.get(i));
			
			// Display a message to indicate completion
			System.out.println("Written results of " + cases + " cases to output.txt");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			// Attempt to do some cleanup
			try {
				if (input != null) {
					input.close();
				}
				if (outputFile != null) {
					outputFile.close();
				}
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}
	}
}