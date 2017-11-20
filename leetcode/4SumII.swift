//
//  4SumII.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/4sum-ii/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
    var count = 0
    var dict = [Int:Int]()
    for i in 0..<A.count {
      for j in 0..<B.count {
        let key = A[i] + B[j]
        dict[key] = (dict[key] ?? 0) + 1
      }
    }
    for i in 0..<C.count {
      for j in 0..<D.count {
        let key = (C[i] + D[j]) * -1
        if let num = dict[key] {
          count += num
        }
      }
    }
    return count
  }
}
