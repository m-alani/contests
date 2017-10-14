//
//  longestPalindromicSubstring.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/longest-palindromic-substring/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func longestPalindrome(_ s: String) -> String {
    let input: [Character] = Array(s.characters)
    var begin = 0, end = 0
    for i in 0..<input.count {
      var b = i, e = i
      // for odd
      while (b >= 0 && e < input.count && input[b] == input [e]) {
        b -= 1
        e += 1
      }
      if (e - b - 1 > end - begin) {
        begin = b + 1
        end = e - 1
      }
      // for even
      b = i
      e = i + 1
      while (b >= 0 && e < input.count && input[b] == input [e]) {
        b -= 1
        e += 1
      }
      if (e - b - 1 > end - begin) {
        begin = b + 1
        end = e - 1
      }
      // optimization trick
      if ((end - begin) / 2 > input.count - i) {
        break
      }
    }
    return String(input[begin...end])
  }
}
