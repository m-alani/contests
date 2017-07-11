//
//  FindDigits.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/find-digits
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the number of cases
let cases = Int(readLine()!)!

// Process each case
var output = [Int]()
for _ in 1...cases {
  let numberStr = String(readLine()!)!
  let number = Int(numberStr)!
  var count = 0, iterator = number
  while (iterator > 0) {
    let current = iterator % 10
    iterator /= 10
    if (current != 0 && number % current == 0) { count += 1 }
  }
  output.append(count)
}

// print the output
for number in output {
  print(number)
}
