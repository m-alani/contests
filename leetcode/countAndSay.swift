//
//  countAndSay.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/count-and-say/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func find(_ str: [Character], _ idx: Int) -> Int {
    let char = str[idx]
    var result = 1
    while idx + result < str.count && str[idx + result] == str[idx] { result += 1 }
    return result
  }

  func countAndSay(_ n: Int) -> String {
    if n < 1 { return "" }
    var str: [Character] = ["1"]
    var iteration = 1
    while iteration < n {
      var newStr = [Character]()
      var ptr = 0 
      while ptr < str.count {
        let reps = find(str, ptr)
        newStr.append(String(reps).first!)
        newStr.append(str[ptr])
        ptr += reps
      }
      iteration += 1
      str = newStr
    }
    return String(str)
  }
}

