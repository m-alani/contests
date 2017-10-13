//
//  longestSubstringWithoutRepeatingCharacters.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/longest-substring-without-repeating-characters/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    // In Swift 4, String is a collection type, so we can do "s.makeIterator()" without creating a Character View first
    var itr = s.characters.makeIterator()
    var longest = 0, begin = 0, end = 0
    var letters = [Character: Int]()
    while let key = itr.next() {
      if let prev = letters[key] {
        if begin <= prev {
          begin = prev + 1
        }
      }
      letters[key] = end
      if longest <= end - begin {
        longest = end - begin + 1
      }
      end += 1
    }
    return longest
  }
}
