//
//  MarsExploration.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/mars-exploration
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
var input = String(readLine()!)!.characters

// Process the string
var output = 0, subIdx = 1
for char in input {
  if (subIdx == 2) {
    if (char != "O") {
      output += 1
    }
  } else {
    if (char != "S") {
      output += 1
    }
  }
  subIdx = (subIdx == 3) ? 1 : subIdx + 1
}

// Print the output
print(output)
