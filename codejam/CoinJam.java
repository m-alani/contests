// This is an actual solution written to solve a problem from Google Code Jam (small data-set)
// Problem C: Qualification round - 2016
// Link to problem: https://code.google.com/codejam/contest/6254486/dashboard#s=p2
// 
// Usage: pass the input file name as an argument to the compiled code, the output will be written in "out.txt"
//
// Marwan Alani - 2016

import java.io.File;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Scanner;

public class CoinJam {

	public static void main(String[] args) {
		try {
			Scanner input = new Scanner(new File(args[0]));
			ArrayList<String> output = new ArrayList<>();
			output.add("Case #1:");
			input.nextInt();
			int n = input.nextInt();
			int j = input.nextInt();
			Long min = (long) (Math.pow(2, n) / 2) + 1;
			Long max = (long) Math.pow(2, n) - 1;
			Long cur_num = min + 2;
			
			while (cur_num < max) {
				boolean prime = false;
				String cur_str = Long.toString(cur_num, 2);
				ArrayList<Long> divisors = new ArrayList<>();
				for (int i=2; i<11 && !prime; i++){
					long divisor = isPrime(Long.parseLong(cur_str, i)); 
					if ( divisor == -1)
						prime = true;
					else 
						divisors.add(divisor);
				}
				if (!prime){
					String line = "";
					line += cur_str;
					for (Long temp: divisors)
						line += " " + temp;
					output.add(line);
				}
				if (output.size() > j)
					cur_num = max + 1;
				else
					cur_num += 2;
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
	
	
	public static long isPrime(long num){
		long divisor = -1;
		long i = 3;
		while ((i*i) < num){
			if (num % i == 0) {
				divisor = i;
				i = num;
			}
			i += 2;
		}
		return divisor;
	}

}
