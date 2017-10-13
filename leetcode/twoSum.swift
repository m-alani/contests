//
//  twoSum.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/two-sum/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    var map = [Int:Int]()
    for (index, num) in nums.enumerated() {
      if let complimentIndex = map[num] {
        result.append(complimentIndex)
        result.append(index)
        break
      } else {
        map[target - num] = index
      }
    }
    return result
  }
}
