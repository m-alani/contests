//
//  AngryProfessor.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/angry-professor
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get no. of cases
let cases = Int(readLine()!)!
var output = [String]()

// Process the cases
for _ in 0..<cases {
  let minStudents = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})[1]
  let arrivals = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
  var onTime = 0
  for arrival in arrivals {
    if (arrival < 1) {
      onTime += 1
    }
  }
  output.append((onTime < minStudents) ? "YES" : "NO")
}

// Print the output
for line in output {
  print(line)
}
