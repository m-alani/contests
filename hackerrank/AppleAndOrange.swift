//
//  AppleAndOrange.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/apple-and-orange
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read S & T
var inputLine = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let houseStart = inputLine[0]
let houseEnd = inputLine[1]

// Read A & B
inputLine = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let appleTree = inputLine[0]
let orangeTree = inputLine[1]

// Read M & N and ignore the values (not needed in our implementation)
_ = readLine()

// Read apples & oranges arrays
let apples = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let oranges = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the cases and print the output
print(apples.filter({$0 + appleTree <= houseEnd && $0 + appleTree >= houseStart}).count)
print(oranges.filter({$0 + orangeTree <= houseEnd && $0 + orangeTree >= houseStart}).count)
