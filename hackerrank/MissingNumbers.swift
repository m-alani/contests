//
//  MissingNumbers.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/missing-numbers
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// In our case, N & M doesn't matter, as we're reading the input in 1 line always.
var unusedInput = readLine()
// Read the first list into an array of strings (Swift readline() limitation)
var inputString = String(readLine() ?? "")!.components(separatedBy: " ")
// Convert the strings into an array of integers
var listA = inputString.map({Int($0) ?? 0})

// Read the second list into an array of strings (Swift readline() limitation)
unusedInput = readLine()
inputString = String(readLine() ?? "")!.components(separatedBy: " ")
// Convert the strings into an array of integers
let listB = inputString.map({Int($0) ?? 0})

// Process the lists and create an output array for the missing numbers
var output = [Int]()
for number in listB {
    if let index = listA.index(of: number) {
        listA.remove(at: index)
    } else {
        output.append(number)
    }
}

// Sort then print the output
if output.count > 0 {
    output.sort()
    print(output[0], separator: "", terminator: "")
    for index in 1..<output.count {
        print(" \(output[index])", separator: "", terminator: "")
    }
    print()
}
