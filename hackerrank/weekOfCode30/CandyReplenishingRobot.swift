//
//  CandyReplenshingRobot.swift
//
//  Contest solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/contests/w30/challenges/candy-replenishing-robot
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read n & c. Because of the way we're reading in c, we don't need to read t from the input.
let n = Int(String(readLine()!)!.components(separatedBy: " ")[0])!
let c: [Int] = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Calculate the output
var currentCandies = n
var output = 0
for index in 0 ..< c.count-1 {
    currentCandies -= c[index]
    if currentCandies < 5 {
        output += n - currentCandies
        currentCandies = n
    }
}

// Print the output
print(output)
