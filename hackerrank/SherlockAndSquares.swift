//
//  SherlockAndSquares.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/sherlock-and-squares
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read T
let cases = Int(readLine()!)!

// Process the cases
var output = [Int]()
for _ in 1...cases {
    let input = String(readLine()!)!.components(separatedBy: " ").map({Double($0)!})
    let lowerBound = input[0].squareRoot()
    let upperBound = input[1].squareRoot()
    var difference = Int()
    if (floor(lowerBound) == lowerBound) {
        if (floor(upperBound) == upperBound) {
            difference = Int(upperBound - lowerBound) + 1
        } else {
            difference = Int(ceil(upperBound - lowerBound))
        }
    } else if (floor(upperBound) == upperBound) {
        difference = Int(ceil(upperBound - lowerBound))
    } else {
        difference = Int(floor(upperBound) - floor(lowerBound))
    }
    output.append(difference)
}

// Print the output
for number in output {
    print(number)
}
