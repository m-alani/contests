//
//  CutTheSticks.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/cut-the-sticks
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read n
let n = Int(readLine() ?? "0")!

// Read the array
var numbers = String((readLine() ?? "0")!).components(separatedBy: " ").map({Int($0) ?? 0}).sorted()

// Process the output
var numberOfCuts = numbers.count
while numberOfCuts != 0 {
    print(numberOfCuts)
    let deletedNumber = numbers.removeFirst()
    while numbers.first ?? deletedNumber + 1 == deletedNumber {
        numbers.removeFirst()
    }
    numberOfCuts = numbers.count
}
