//
//  integerToRoman.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/integer-to-roman/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func intToRoman(_ number: Int) -> String {
    var result = ""
    var num = number
    while (num > 0) {
      switch num {
        case 1000..<4000: result.append("M"); num -= 1000
        case 900..<1000: result.append("CM"); num -= 900
        case 500..<900: result.append("D"); num -= 500
        case 400..<500: result.append("CD"); num -= 400
        case 100..<400: result.append("C"); num -= 100
        case 90..<100: result.append("XC"); num -= 90
        case 50..<90: result.append("L"); num -= 50
        case 40..<50: result.append("XL"); num -= 40
        case 10..<40: result.append("X"); num -= 10
        case 9: result.append("IX"); num -= 9
        case 5..<9: result.append("V"); num -= 5
        case 4: result.append("IV"); num -= 4
        case 1..<4: result.append("I"); num -= 1
        default: num -= num
      }
    }
    return result
  }
}
