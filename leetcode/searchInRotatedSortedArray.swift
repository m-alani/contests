//
//  searchInRotatedSortedArray.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/search-in-rotated-sorted-array/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func search(_ nums: [Int], _ target: Int) -> Int {
    return nums.index(of: target) ?? -1
  }
}
