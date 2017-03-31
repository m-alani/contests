//
//  DivisibleSumPairs.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/divisible-sum-pairs
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read K
let k = Int(String(readLine()!)!.components(separatedBy: " ")[1])!

// Read the array
let array = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the array
var output = 0
for i in 0..<array.count-1 {
    for j in i+1..<array.count {
        if (array[i] + array[j]) % k == 0 {
            output += 1
        }
    }
}

// Print the output
print(output)
