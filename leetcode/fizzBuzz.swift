//
//  fizzBuzz.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/fizz-buzz/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func fizzBuzz(_ n: Int) -> [String] {
    var output = [String]()
    guard n > 0 else { return output }
    for i in 1...n {
      var current = String()
      if i % 3 == 0 { current.append("Fizz") }
      if i % 5 == 0 { current.append("Buzz") }
      if current.count == 0 { current.append(String(i)) }
      output.append(current)
    }
    return output
  }
}
