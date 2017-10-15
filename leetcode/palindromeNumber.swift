//
//  palindromeNumber.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/palindrome-number/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func isPalindrome(_ x: Int) -> Bool {
    let numbers = Array(String(x).characters)
    for i in 0..<(numbers.count/2) {
      if (numbers[i] != numbers[numbers.count - i - 1]) {
        return false
      }
    }
    return true
  }
}
