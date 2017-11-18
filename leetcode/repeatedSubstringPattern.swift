//
//  repeatedSubstringPattern.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/repeated-substring-pattern/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func repeatedSubstringPattern(_ input: String) -> Bool {
    guard input.count > 1 else { return false }
    let s = [Character](input)
    var result = false
    var length = s.count / 2
    while length > 0 {
      if s.count % length == 0 {
        var start = 0, end = length
        while end < s.count && s[start] == s[end] {
          start += 1; end += 1
        }
        if end == s.count {
          length = 0
          result = true
        }
      }
      length -= 1
    }
    return result
  }
}
