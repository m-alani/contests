//
//  generateParantheses.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/generate-parantheses/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  var result = [String]()

  func generateParenthesis(_ n: Int) -> [String] {
    solveRecursive(n, 0, 0, "")
    return result
  }

  func solveRecursive(_ n: Int, _ left: Int, _ right: Int, _ currentStr: String) {
    if (currentStr.count == n * 2) {
      result.append(currentStr)
      return
    }
    if (left < n) { solveRecursive(n, left + 1, right, currentStr + "(") }
    if (right < left) { solveRecursive(n, left, right + 1, currentStr + ")") }
  }
}
