//
//  wordBreak.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/word-break/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    let dict = Set(wordDict)
    var f = Array(repeating: false, count: s.count + 1)
    f[0] = true;
    for i in 1...s.count {
      for j in 0..<i {
        let range = s.index(s.startIndex, offsetBy: j)..<s.index(s.startIndex, offsetBy: i)
        let word = s.substring(with: range)
        if f[j] && dict.contains(word) {
          f[i] = true;
          break;
        }
      }
    }
    return f[s.count];
  }
}
