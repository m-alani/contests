//
//  constructTheRectangle.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/construct-the-rectangle/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func constructRectangle(_ area: Int) -> [Int] {
    var width = Int(sqrt(Double(area)))
    while area % width != 0 { width -= 1 }
    return [area / width, width]
  }
}
