//
//  removeElement.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/remove-element/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var last = nums.count, itr = 0
    while (itr < last) {
      if (nums[itr] == val) {
        last -= 1
        nums[itr] = nums[last]
      } else {
        itr += 1
      }
    }
    return last
  }
}
