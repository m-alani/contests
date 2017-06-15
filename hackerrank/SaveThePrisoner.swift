//
//  SaveThePrisoner.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/save-the-prisoner
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the number of test cases
let cases = Int(readLine()!)!

// Go case by case
var output = [Int]()
for _ in 1...cases {
  let inputArr = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
  let prisoners = inputArr[0], startIndex = inputArr[2]
  let sweets = (inputArr[1] % prisoners) - 1
  output.append(((sweets + startIndex) % prisoners) == 0 ? prisoners : ((sweets + startIndex) % prisoners))
}

// Print the output
for line in output {
  print(line)
}
