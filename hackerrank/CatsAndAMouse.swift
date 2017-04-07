//
//  CatsAndAMouse.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/cats-and-a-mouse
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read Q
let queries = Int(readLine()!)!

// Process the queries one by one
var output = [String]()
for _ in 1...queries {
    let positions = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
    if (abs(positions[0] - positions[2]) == abs(positions[1] - positions[2])) {
        output.append("Mouse C")
    } else {
        output.append(abs(positions[0] - positions[2]) < abs(positions[1] - positions[2]) ? "Cat A" : "Cat B")
    }
}

// Print the output
for line in output {
    print(line)
}
