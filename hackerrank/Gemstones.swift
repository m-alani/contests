//
//  Gemstones.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/gem-stones
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
let stones = Int(readLine()!)!

// Get the first stone
var stone: [Character] = Array(String(readLine()!)!.characters)
var gemElements = Set(stone)

// Process all other stones
for _ in 1..<stones {
  stone = Array(String(readLine()!)!.characters)
  gemElements = gemElements.intersection(stone)
}

// Print the output
print(gemElements.count)
