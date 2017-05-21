//
//  MakingAnagrams.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/making-anagrams
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
let str1 = Array(String(readLine()!)!.characters)
let str2 = Array(String(readLine()!)!.characters)

// Process the strings
var dict1 = [Character : Int]()
var dict2 = [Character : Int]()
let alphabet = Array("abcdefghijklmnopqrstuvwxyz".characters)
_ = alphabet.map({dict1[$0] = 0; dict2[$0] = 0})
for letter in str1 {
  dict1[letter]! += 1

}
for letter in str2 {
  dict2[letter]! += 1
}
var output = 0
for letter in alphabet {
  output += abs(dict1[letter]! - dict2[letter]!)
}

// Print the output
print(output)
