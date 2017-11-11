//
//  longestPalindrome.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/longest-palindrome/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func longestPalindrome(_ s: String) -> Int {
    var length = 0
    var itr = s.makeIterator()
    var chars = Set<Character>()
    while let char = itr.next() {
      if chars.remove(char) != nil {
        length += 2
      } else {
        chars.insert(char)
      }
    }
    if chars.count > 0 { length += 1 }
    return length
  }
}
