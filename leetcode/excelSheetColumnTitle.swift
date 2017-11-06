//
//  excelSheetColumnTitle.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/excel-sheet-column-title/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func convertToTitle(_ n: Int) -> String {
    var column = ""
    if n > 0 {
      var num = n
      while num > 0 {
        num -= 1
        let letter = UnicodeScalar(65 + (num % 26))!
        column = String(describing: letter) + column
        num /= 26
      }
    }
    return column
  }
}
