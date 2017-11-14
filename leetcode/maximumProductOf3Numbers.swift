//
//  maximumProductOf3Numbers.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/maximum-product-of-three-numbers/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

// O(n log n) lazy solution. This can be optimized to O(n) by going through "nums" once and remembering the largest 3 and smallest 2 numbers.
class Solution {
  func maximumProduct(_ nums: [Int]) -> Int {
      var result = 0
      var last = nums.count - 1
      let sorted = nums.sorted()
      if sorted[0] < 0 && sorted [1] < 0 {
          result = sorted[0] * sorted[1] * sorted[last]
      }
      result = max(result, sorted[last] * sorted[last-1] * sorted[last-2])
      return result
  }
}
