//
//  SparseArrays.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/sparse-arrays
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N
let n = Int(readLine()!)!

// Generate our dictionary
var stringsDB = [String:Int]()
for _ in 1...n {
    let word = String(readLine()!)!
    let count = stringsDB[word] ?? 0
    stringsDB[word] = count + 1
}

// Read Q
let q = Int(readLine()!)!

// Search and generate output
var output = [Int]()
for _ in 1...q {
    let word = String(readLine()!)!
    output.append(stringsDB[word] ?? 0)
}

// Print the output
for count in output {
    print(count)
}
