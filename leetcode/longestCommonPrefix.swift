//
//  longestCommonPrefix.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/longest-common-prefix/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func longestCommonPrefix(_ strs: [String]) -> String {
    // Declarations & safety checks
    if strs.count == 0 || strs[0].characters.count == 0 {
      return ""
    }
    var result = "", done = false, index = 0
    var strings = [[Character]]()
    for string in strs { // Swift is still behind with Strings, so converting input to Character arrays
      strings.append([Character](string.characters))
    }
    var reference = strings[0]
    var char = reference[0]

    // Start checking
    while (!done) {
      for str in strings {
        if (str.count <= index || str[index] != char) {
          done = true
        }
      }
      if (!done) {
        result.append(char)
      }
      index += 1
      if (index >= reference.count) {
        break
      }
      char = reference[index]
    }

    return result
  }
}
