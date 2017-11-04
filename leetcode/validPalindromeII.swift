//
//  validPalindromeII.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/valid-palindrome-ii/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func validPalindrome(_ input: String) -> Bool {
    let s = [Character](input)
    if s.count < 2 { return true }
    var l = 0, r = s.count - 1
    while l < r {
      if s[l] != s[r] {
        return validate(s, l+1, r) || validate(s, l, r-1)
      }
      r -= 1
      l += 1
    }
    return true
  }

  func validate(_ s: [Character], _ left: Int, _ right: Int) -> Bool {
    var l = left, r = right
    while l < r {
      if s[l] != s[r] { return false }
      l += 1
      r -= 1
    }
    return true
  }
}
