//
//  HackerrankInAString.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/hackerrank-in-a-string
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
let queries = Int(readLine()!)!

// Use magic to solve this query
var output = [String]()
let hr = Array("hackerrank".characters)
for _ in 1...queries {
  let input = Array(String(readLine()!)!.lowercased().characters)
  var idx = 0, inputIdx = 0
  while (inputIdx < input.count && idx < 10) {
    if (input[inputIdx] == hr[idx]) {
      idx += 1
    }
    inputIdx += 1
  }
  output.append((idx == 10) ? "YES" : "NO")
}

// Print output
for line in output {
  print(line)
}
