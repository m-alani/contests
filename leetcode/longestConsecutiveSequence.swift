//
//  longestConsecutiveSequence.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/longest-consecutive-sequence/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func longestConsecutive(_ nums: [Int]) -> Int {
    var result = 0
    var map = [Int: Int]()
    for num in nums {
      if map[num] == nil {
        let left = map[num - 1] ?? 0
        let right = map[num + 1] ?? 0
        let current = left + 1 + right
        result = max(current, result)
        map[num] = current
        map[num - left] = current
        map[num + right] = current
      }
    }
    return result
  }
}
