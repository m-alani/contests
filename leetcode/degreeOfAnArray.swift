//
//  degreeOfAnArray.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/degree-of-an-array/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func findShortestSubArray(_ nums: [Int]) -> Int {
    var degree = 0, result = Int.max
    var frequency = [Int:Int]()
    var ranges = [Int: (first: Int, last: Int)]()
    for (idx, num) in nums.enumerated() {
      frequency[num] = (frequency[num] ?? 0) + 1
      ranges[num] = ((ranges[num]?.first ?? idx), idx)
      if (frequency[num]! > degree) { degree = frequency[num]! }
    }
    for num in nums {
      if frequency[num] == degree {
        result = min(result, ranges[num]!.last - ranges[num]!.first + 1)
      }
    }
    return result
  }
}
