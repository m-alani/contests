//
//  findTheDifference.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/find-the-difference/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func findTheDifference(_ s: String, _ t: String) -> Character {
    let original = [Character](s), shuffled = [Character](t)
    var dict = [Character : Int]()

    // Populate the dictionary
    for letter in shuffled {
      let count = dict[letter] ?? 0
      dict[letter] = count + 1
    }

    // Remove the duplicate letters
    for letter in original {
      let value = dict[letter]
      if value == 1 {
        dict[letter] = nil
      } else {
        dict[letter] = value! - 1
      }
    }

    // Return the only character left in the dictionary
    return dict.first?.key ?? Character("")
  }
}
