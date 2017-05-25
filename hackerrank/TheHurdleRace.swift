//
//  TheHurdleRace.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/the-hurdle-race
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
let nk = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let heights = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Go through the hurdles
var output = 0
for height in heights {
  output = (height - nk[1] > output) ? height - nk[1] : output
}

// Print the output
print(output)
