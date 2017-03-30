//
//  MiniMaxSum.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/mini-max-sum
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read input
let numbers = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted()

// Print ouput
print(numbers.reduce(0,+) - numbers[4], numbers.reduce(0,+) - numbers[0])
