//
//  3SumClosest.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/3sum-closest/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func threeSumClosest(_ numbers: [Int], _ target: Int) -> Int {
    let nums = numbers.sorted()
    var result = nums[0] + nums[1] + nums[2]
    for i in 0..<nums.count - 2 {
      var l = i + 1, r = nums.count - 1
      while (l < r) {
        let sum = nums[i] + nums[l] + nums[r]
        if sum == target { return sum }
        else if sum < target { l += 1 }
        else { r -= 1 }
        result = (abs(sum - target) < abs(result - target)) ? sum : result
      }
    }
    return result
  }
}
