//
//  BetweenTwoSets.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/between-two-sets
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Helper function to check if an integer is a factor of another
func isFactorOf(number x: Int, factorOf y: Int) -> Bool {
    return y % x == 0
}

// Read (and ignore) N & M
_ = readLine()

// Read A & B
let arrayA = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted()
let arrayB = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted()

// Process the arrays
var output = 0
if (arrayA[arrayA.count-1] < arrayB[0]) {
    xCheck: for x in arrayA[arrayA.count-1]...arrayB[0] {
        var satisfies = true
        for a in arrayA {
            satisfies = isFactorOf(number: a, factorOf: x)
            if (!satisfies) { continue xCheck}
        }
        for b in arrayB {
            satisfies = isFactorOf(number: x, factorOf: b)
            if (!satisfies) { continue xCheck}
        }
        output += 1
    }
}

// Print the output
print(output)
