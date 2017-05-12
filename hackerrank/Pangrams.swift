//
//  Pangrams.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/pangrams
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
let input = Array(String(readLine()!)!.lowercased().characters)

// Solve the mystery
var alphabet = Set("abcdefghijklmnopqrstuvwxyz".characters)
var output = "not pangram"
for letter in input {
  alphabet.remove(letter)
  if (alphabet.count == 0) {
    output = "pangram"
    break
  }
}

// Print the output
print(output)
