//
//  BirthdayChocolate.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/the-birthday-bar
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Helper function to test a specific index
func checkIndex(m: Int, d: Int, arr: [Int], idx: Int) -> Bool {
  var sum = 0
  for i in idx..<idx + m {
    sum += arr[i]
  }
  return sum == d
}

// Read input
_ = readLine()
let bar = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let temp = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let d = temp[0], m = temp[1]

// Process the case
var output = 0
let maxIdx = (bar.count == 1) ? 1 : bar.count - m + 1
for idx in 0..<maxIdx {
  if checkIndex(m: m, d: d, arr: bar, idx: idx) {
    output += 1
  }
}

// Print the output
print(output)
