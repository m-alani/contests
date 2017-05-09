//
//  ReducedString.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/reduced-string
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read input
var str = Array(String(readLine()!)!.characters)

// Process the case
var idx = 0
while (!str.isEmpty && idx < str.count - 1) {
  if (str[idx] == str[idx+1]) {
    str.removeSubrange(idx...idx+1)
    idx = (idx == 0) ? 0 : idx - 1
  } else {
    idx += 1
  }
}
let output = (str.count > 0) ? String(str) : "Empty String"

// Print the output
print(output)
