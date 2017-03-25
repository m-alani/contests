//
//  Kangaroo.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/kangaroo
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read Input
let inputLine = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
var x1 = inputLine[0]
let v1 = inputLine[1]
var x2 = inputLine[2]
let v2 = inputLine[3]

// Process the input
var output = "NO"
if (v1 == v2) {
    if (x1 == x2) {
        output = "YES"
    }
} else if (v1 > v2) {
    while (x2 > x1) {
        x2 += v2
        x1 += v1
        if (x1 == x2) {
            output = "YES"
        }
    }
} else {
    while (x1 > x2) {
        x2 += v2
        x1 += v1
        if (x1 == x2) {
            output = "YES"
        }
    }
}

// Print the output
print(output)
