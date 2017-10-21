//
//  romanToInteger.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/roman-to-integer/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func romanToInt(_ s: String) -> Int {
    let input = [Character](s.characters).map({convertToNumber($0)})
    var sum = 0, i = 0
    while (i < input.count - 1) {
      let curr = input[i], next = input[i+1]
      if (curr < next) {
        sum += next - curr
        i += 2
      } else {
        sum += curr
        i += 1
      }
    }
    if (i < input.count) {
      sum += input[i]
    }
    return sum
  }

  func convertToNumber(_ c: Character) -> Int {
    var num: Int
    switch c {
    case "I": num = 1
    case "V": num = 5
    case "X": num = 10
    case "L": num = 50
    case "C": num = 100
    case "D": num = 500
    case "M": num = 1000
    default: num = 0
    }
    return num
  }
}
