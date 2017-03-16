//
//  FindTheMinimumNumber.swift
//
//  Contest solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/contests/w30/challenges/find-the-minimum-number
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Recursive function to solve teh problem
func generateCall(for number: Int) -> String {
    if number == 1 {
        return "int"
    } else {
        return "min(int, \(generateCall(for: number-1)))"
    }
}

// Read n
let n = Int(readLine()!)!

// Calculate the output and print it
print(generateCall(for: n))
