//
//  singleNumberIII.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/single-number-iii/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func singleNumber(_ nums: [Int]) -> [Int] {
    var numbers = Set<Int>()
    for num in nums {
      let new = numbers.insert(num)
      if !new.inserted { numbers.remove(num) }
    }
    return Array(numbers)
  }
}
