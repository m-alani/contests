//
//  CircularArrayRotation.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/circular-array-rotation
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
var input = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let array = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the queries
let queries = input[2]
let shift = input[1] % array.count
var output = [Int]()
for _ in 0..<queries {
  var index = Int(readLine()!)! - shift
  if (index < 0) {
    index += array.count
  }
  output.append(array[index])
}

// Print the output
for line in output {
  print(line)
}
