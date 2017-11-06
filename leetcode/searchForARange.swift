//
//  searchForARange.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/search-for-a-range/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
  let start = nums.index(of: target)
  if let s = start {
    var e = s
    while e < nums.count && nums[e] == target {
      e += 1
    }
    return [s, e - 1]
  } else {
    return [-1, -1]
  }
}
