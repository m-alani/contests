//
//  ransomNote.swift
//
//  Practice solution - Marwan Alani - 2018
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/ransom-note
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  var letters = [Character](magazine)
  for letter in ransomNote {
    guard let index = letters.index(of: letter) else { return false }
    letters.remove(at: index)
  }
  return true
}
