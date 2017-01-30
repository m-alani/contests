//
//  Staircase.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/staircase
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// read the integer n
let n = Int(readLine()!)!

// print the staircase
for steps in 1...n {
    var outputLine = ""
    var spaces = n - steps
    while (spaces > 0) {
        outputLine += " "
        spaces -= 1
    }
    for _ in 1...steps { outputLine += "#" }
    print(outputLine)
}
