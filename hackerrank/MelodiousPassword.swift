//
//  MelodiousPassword.swift
//
//  Contest solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/contests/w30/challenges/melodious-password
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Define our alphabet (sans "y")
let vowels = ["a","o","u","i","e"]
let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","z"]

// Read n
let n = Int(readLine()!)!

// Base case: n = 1
var output = vowels + consonants

// Create the output for n > 1
for _ in 1..<n {
    let previousOutput = output
    output.removeAll()
    for line in previousOutput {
        let lastLetter = line.substring(from: line.index(before: line.endIndex))
        if vowels.contains(lastLetter) {
            for consonant in consonants {
                output.append(line + consonant)
            }
        } else {
            for vowel in vowels {
                output.append(line + vowel)
            }
        }
    }
}

// Print the output
for line in output {
    print(line)
}
