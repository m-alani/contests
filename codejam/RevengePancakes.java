// This is an actual solution written to solve a problem from Google Code Jam (small & large data-sets)
// Problem B: Qualification round - 2016
// Link to problem: https://code.google.com/codejam/contest/6254486/dashboard#s=p1
// 
// Usage: pass the input file name as an argument to the compiled code, the output will be written in "out.txt"
//
// Marwan Alani - 2016

import java.io.File;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Scanner;

public class RevengePancakes {

	public static boolean[] stack;
	public static int count;
	
	public static void main(String[] args) {
		ArrayList<String> output = new ArrayList<>();
		
		try {
			Scanner input = new Scanner(new File(args[0]));
			int cases = input.nextInt();
			input.nextLine();
			for (int i=0; i<cases; i++) {
				String line = input.nextLine();
				count = 0;
				boolean sorted = false;
				stack = new boolean[line.length()];
				for (int j=0; j<line.length(); j++) {
					if (line.charAt(j) == '+')
						stack[j] = true;
					else
						stack[j] = false;
				}
				
				while (!sorted) {
					int caseResult;
					if (stack[0]) {
						caseResult = findLeft();
						if (caseResult == -1)
							sorted = true;
						else
							flip(caseResult);
					} else {
						caseResult = findRight();
						flip(caseResult);
					}
				}
				
				output.add("Case #" + (i+1) + ": " + count);
			}
			
			PrintStream outputFile = new PrintStream(new File("out.txt")); 
			for (String line: output)
				outputFile.println(line);
			
			outputFile.close();
			input.close();
		} catch (Exception e) {
			e.printStackTrace(System.out);
		}
	}
	
	public static int findRight() {
		int index = stack.length -1;
		while (stack[index])
			index--;
		return index;
	}
	
	@SuppressWarnings("finally")
	public static int findLeft() {
		int index = 0;
		try {
			while (stack[index])
				index++;
			index--;
		} catch (IndexOutOfBoundsException e) {
			index = -1;
		} finally {
			return index;
		}
	}
	
	public static void flip(int index) {
		if (index == 0) {
			stack[0] = !stack[0];
			count++;
		} else {
			for (int i=index; i>(index/2); i--) {
				boolean temp = !stack[i];
				stack[i] = !stack[index-i];
				stack[index-i] = temp;
			}
			if (index % 2 == 0)
				stack[index/2] = !stack[index/2];
			count++;
		}
	}
}
