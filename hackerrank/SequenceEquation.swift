//
//  SequenceEquation.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/permutation-equation
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
_ = readLine()
let input = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Find & print the output
for i in 0..<input.count {
  print(input.index(of: input.index(of: (i+1))! + 1)! + 1)
}
