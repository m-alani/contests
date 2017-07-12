//
//  LeftRotation.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/array-left-rotation
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
let shift = Int(String(readLine()!)!.components(separatedBy: " ")[1])!
let numbers = String(readLine()!)!.components(separatedBy: " ")

// Generate the shifted output
var output = numbers[shift % numbers.count]
for index in 1..<numbers.count {
  output = output + " " + numbers[(index + shift) % numbers.count]
}

// Print the output
print(output)
