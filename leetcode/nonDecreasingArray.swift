//
//  nonDecreasingArray.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/non-decreasing-array/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func checkPossibility(_ numbers: [Int]) -> Bool {
    var i = 1, changes = 0, nums = numbers
    while i < nums.count && changes < 2 {
      if nums[i-1] > nums[i] {
        if i > 1 && nums[i-2] > nums[i] {
          nums[i] = nums[i-1]
        } else {
          nums[i-1] = nums[i]
        }
        changes += 1
      }
      i += 1
    }
    return changes < 2
  }
}
