//
//  searchInsertPosition.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/search-insert-position/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Soluion {
  func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var l = 0, r = nums.count - 1
    while (l <= r) {
      let mid = (l + r) / 2
      if nums[mid] == target { return mid }
      else if nums[mid] < target { l = mid + 1 }
      else { r = mid - 1 }
    }
    return l
  }
}
