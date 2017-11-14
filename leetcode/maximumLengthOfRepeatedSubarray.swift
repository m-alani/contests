//
//  maximumLengthOfRepeatedSubarray.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/maximum-length-of-repeated-subarray/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func findLength(_ A: [Int], _ B: [Int]) -> Int {
    var result = 0
    var memo = Array(repeating: Array(repeating: 0, count: B.count + 1), count: A.count + 1)
    for i in 0...A.count {
      for j in 0...B.count {
        if i != 0 && j != 0 {
          if A[i-1] == B[j-1] {
            memo[i][j] = 1 + memo[i-1][j-1]
            result = max(result, memo[i][j])
          }
        }
      }
    }
    return result
  }
}
