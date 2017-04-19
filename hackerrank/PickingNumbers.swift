//
//  PickingNumbers.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/picking-numbers
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read input
_ = readLine()
let numbers = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted()

// Process the array of numbers
var output = 1
for i in 0..<numbers.count {
  var j = i, count = 0
  while (j < numbers.count && abs(numbers[j] - numbers[i]) < 2) {
    count += 1
    j += 1
  }
  output = max(output, count)
}

// Print the output
print(output)
