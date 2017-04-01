//
//  MigratoryBirds.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/migratory-birds
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N (and ignore it, as it is not needed in this implementation)
_ = readLine()

// Read the scores
let birds = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the scores
var count = [0,0,0,0,0]
for bird in birds {
    count[bird-1] += 1
}
var output = 0
for type in 1...4 {
    if count[type] > count[output] {
        output = type
    }
}
output += 1 // Make up for the starting index difference (array starts at 0, bird types at 1)

// Print the output
print(output)
