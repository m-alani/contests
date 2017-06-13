//
//  ViralAdvertising.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/strange-advertising
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N
let days = Int(readLine()!)!

// Find the number of likes
var base = 2
var likes = 2
for _ in 1..<days {
  base = (base * 3) / 2
  likes += base
}

// Print the output
print(likes)
