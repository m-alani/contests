//
//  BeautifulWord.swift
//
//  Contest solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/contests/w31/challenges/beautiful-word
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read input
let word = Array(String(readLine()!)!.lowercased().characters)

// Process the word
let vowels = Array("aeiouy".characters)
var preVowel = false
var preChar: Character = " "
var output = "Yes"
for letter in word {
  if letter == preChar || (preVowel && vowels.contains(letter)) {
    output = "No"
    break
  } else {
    preChar = letter
    preVowel = vowels.contains(letter)
  }
}

// Print the output
print(output)
