//
//  3Sum.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/3sum/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func threeSum(_ numbers: [Int]) -> [[Int]] {
    let nums = numbers.sorted()
    var result = [[Int]]()
    if (nums.count > 2) {
      for i in 0...nums.count - 3 {
        if i == 0 || (i > 0 && nums[i] != nums[i-1]) {
          var l = i + 1, r = nums.count - 1
          while (l < r) {
            if (nums[i] + nums[l] + nums[r] == 0) {
              result.append([nums[i], nums[l], nums[r]])
              while (l < r && nums[l] == nums[l+1]) {l += 1}
              while (l < r && nums[r] == nums[r-1]) {r -= 1}
              l += 1
              r -= 1
            } else if (nums[i] + nums[l] + nums[r] < 0) {
              l += 1
            } else {
              r -= 1
            }
          }
        }
      }
    }
    return result
  }
}
