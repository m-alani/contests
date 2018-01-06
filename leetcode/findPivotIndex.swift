//
//  findPivotIndex.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/find-pivot-index/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func pivotIndex(_ nums: [Int]) -> Int {
    if nums.count >= 2 {
      var sums = [Int]()
      var sum = 0
      sums.append(sum)
      _ = nums.map({sum += $0; sums.append(sum)})
      for (i, sum) in sums.enumerated() {
        let right = (i == sums.count - 1) ? 0 : nums[i]
        if sum == (sums.last! - sum - right) && (i != nums.count) { return i }
      }
    }
    return -1
  }
}
