//
//  factorialTrailingZeroes.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/factorial-trailing-zeroes/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

// Why on earth is this tagged "easy" on leetCode!?
class Solution {
  func trailingZeroes(_ num: Int) -> Int {
    var result = 0, n = num
    while n >= 5 {
      n /= 5
      result += n
    }
    return result
  }
}
