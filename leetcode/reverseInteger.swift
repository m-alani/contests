//
//  reverseInteger.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/reverse-integer/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func reverse(_ x: Int) -> Int {
    var temp: [Character] = Array(String(x).characters)
    if (temp[0] == "-") {
      temp.append("-")
      temp = temp.reversed()
      temp.remove(at: temp.count - 1)
    } else {
      temp = temp.reversed()
    }
    if let result = Int(String(temp)) {
      if (result > 2147483647 || result < -2147483648) {
        return 0
      } else {
        return result
      }
    }
    return 0
  }
}
