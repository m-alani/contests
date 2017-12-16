//
//  detectCapital.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/detect-capital/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  let lowerCase = Set<Character>("abcdefghijklmnopqrstuvwxyz")
  let upperCase = Set<Character>("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

  func detectCapitalUse(_ word: String) -> Bool {
    if word.count < 2 { return true }
    let input = [Character](word)
    if upperCase.contains(input[0]) {
      let rest = [Character](input[1...])
      return rest.reduce(true, { $0 && lowerCase.contains($1) }) ||
        rest.reduce(true, { $0 && upperCase.contains($1) })
    }
    return input.reduce(true, { $0 && lowerCase.contains($1) })
  }
}
