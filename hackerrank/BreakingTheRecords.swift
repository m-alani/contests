//
//  BreakingTheRecord.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/breaking-best-and-worst-records
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N (and ignore it, as it is not needed in this implementation)
_ = readLine()

// Read the scores
let scores = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the scores
var highest = scores[0], lowest = scores[0], highCount = 0, lowCount = 0
for score in scores {
    if score > highest {
        highest = score
        highCount += 1
    } else if score < lowest {
        lowest = score
        lowCount += 1
    }
}

// Print the output
print("\(highCount) \(lowCount)")
