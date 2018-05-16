//
//  groupAnagrams.swift
//
//  Practice solution - Marwan Alani - 2018
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/group-anagrams/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func groupAnagrams(_ strs: [String]) -> [[String]] {
    var words = [String : [String]]()
    for str in strs {
      let sorted = String(str.sorted())
      if words[sorted] == nil {
        words[sorted] = [str]
      } else {
        words[sorted]?.append(str)
      }
    }
    return Array(words.values)
  }
}