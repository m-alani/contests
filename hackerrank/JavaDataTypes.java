//
//  JavaDataTypes.java
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/java-datatypes
//  Note: make sure that you select "Java 8" from the top-right language menu of the code editor when testing this code
//

import java.util.*;

public class Main {
  public static void main(String []argh) {
    Scanner sc = new Scanner(System.in);
    int t = sc.nextInt();
    for (int i = 0; i < t; i++) {
      try {
        long x = sc.nextLong();
        System.out.println(x + " can be fitted in:");
        if (x >= -128L && x <= 127L) System.out.println("* byte");
        if (x >= -32768L && x <= 32767L) System.out.println("* short");
        if (x >= -2147483648L && x <= 2147483647L) System.out.println("* int");
        if (x >= -9223372036854775808L && x <= 9223372036854775807L) System.out.println("* long");
      } catch (Exception e) {
        System.out.println(sc.next() + " can't be fitted anywhere.");
      }
    }
  }
}
