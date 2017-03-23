//
//  GradingStudents.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/grading
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N
let cases = Int(readLine()!)!
var output = [Int]()

// Process the cases
for _ in 1...cases {
    let grade = Int(readLine()!)!
    if (grade > 37 && grade % 5 > 2)  {
        output.append(grade + 5 - (grade % 5))
    } else {
        output.append(grade)
    }
}

// Print the output
for newGrade in output {
    print(newGrade)
}
