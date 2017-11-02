//
//  nextPermutation.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/next-permutation/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func nextPermutation(_ nums: inout [Int]) {
    var l = -1, i = nums.count - 2
    while (i >= 0) {
      if nums[i] < nums[i + 1] {
        l = i
        break
      }
      i -= 1
    }
    if l == -1 {
      nums = Array(nums.reversed())
      return
    }
    var r = -1
    i = nums.count - 1

    while (i > l) {
      if nums[i] > nums[l] {
        r = i
        break
      }
      i -= 1
    }
    nums.swapAt(l, r)
    nums.replaceSubrange(l + 1..<nums.count, with: Array(Array(nums[l + 1...nums.count - 1]).reversed()))
  }
}
