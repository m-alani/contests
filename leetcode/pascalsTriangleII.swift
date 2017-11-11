//
//  pascalsTriangleII.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/pascals-triangle-ii/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func getRow(_ rowIndex: Int) -> [Int] {
    var row = Array(repeating: 0, count: rowIndex + 1)
    var num = Double(rowIndex), den = 1.0, idx = 1
    row[0] = 1

    // Cover the edge case of index = 0
    if rowIndex == 0 { return row }

    // Find the values for the first half
    while num >= den {
      row[idx] = Int(Double(row[idx-1]) * num / den)
      num -= 1
      den += 1
      idx += 1
    }
    // Mirror the values to the second half
    let half = row.count / 2
    row[row.count-half...rowIndex] = ArraySlice(row[0..<half].reversed())

    return row
  }
}
