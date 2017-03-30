//
//  BirthdayCakeCandles.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/birthday-cake-candles
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read (and ignore) N
_ = readLine()

// Read the candles heights
let heights = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the case
var output = 0
var max = heights[0]
for height in heights {
    if height > max {
        max = height
        output = 1
    } else if height == max {
        output += 1
    }
}

// Print the output
print(output)
