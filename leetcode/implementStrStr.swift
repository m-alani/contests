//
//  implementStrStr.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/implement-strstr/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle == "" { return 0 }
    let range = haystack.range(of: needle, options: [.literal]) // .literal option dramatically increases performance!
    if let range = range {
      return haystack.distance(from: haystack.startIndex, to: range.lowerBound)
    } else {
      return -1
    }
  }
}
