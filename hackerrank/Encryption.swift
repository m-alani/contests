//
//  Encryption.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/encryption
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
let inputLine = String(readLine()!)!

// Prepare variables
let input = Array(inputLine.characters)
let length = input.count
let outputLength = length + Int(Double(length).squareRoot())
let rowLength = Int(ceil(Double(length).squareRoot()))
var output = [Character]()
var index = 0
var column = 0

// Generate the output as a Character array
while (output.count < outputLength) {
    output.append(input[index])
    index += rowLength
    if (index >= length) {
        column += 1
        index = column
        output.append(" ")
    }
}

// Print the output
print(String(output))
