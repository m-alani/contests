//
//  BeautifulBinaryString.java
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/beautiful-binary-string
//  Note: make sure that you select "Java 8" from the top-right language menu of the code editor when testing this code
//

import java.util.*;

public class Solution {
  static int minSteps(String B){
    int steps = 0;
    int index = B.indexOf("010");
    while (index != -1) {
      steps++;
      index = B.indexOf("010", index + 3);
    }
    return steps;
  }

  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);
    in.nextInt();
    String B = in.next();
    int result = minSteps(B);
    System.out.println(result);
    in.close();
  }
}
