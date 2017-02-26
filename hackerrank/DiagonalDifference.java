//
//  DiagonalDifference.java
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/diagonal-difference
//  Note: make sure that you select "Java" from the top-right language menu of the code editor when testing this code
//

import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int n = input.nextInt();
        int matrix[][] = new int[n][n];
        for (int i=0; i<n; i++) {
            for (int j=0; j<n; j++) {
                matrix[i][j] = input.nextInt();
            }
        }
        input.close();
        int sum1 = 0;
        int sum2 = 0;
        for (int i=0; i<n; i++) {
            sum1 += matrix[i][i];
            sum2 += matrix[i][n-i-1];
        }
        System.out.println(Math.abs(sum1 - sum2));
    }
}
