//
//  FlippingBits.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/flipping-bits
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
let cases = Int(readLine()!)!

// Solve the cases
var output = [UInt]()
for _ in 1...cases {
  output.append(4294967295 - UInt(readLine()!)!)
}

// Print the output
for line in output {
  print(line)
}
