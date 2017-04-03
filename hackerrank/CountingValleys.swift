//
//  CountingValleys.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/counting-valleys
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N (and ignore it) & the steps
_ = readLine()
let steps = String(readLine()!)!.characters

// Process the hike
var alt = 0, valleyPoints = 0
for step in steps {
    if (step == "U") {
        alt += 1
        if (alt == 0) { valleyPoints += 1 }
    } else {
        alt -= 1
        if (alt == -1) { valleyPoints += 1 }
    }
}

// Print the output
print(valleyPoints / 2)
