//
//  CaesarCipher1.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/caesar-cipher-1
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Get the input
_ = readLine()
var input = Array(String(readLine()!)!.utf16)
let cipher = Int(readLine()!)!

// Encrypt the characters
var output = [Character]()
for i in 0..<input.count {
  switch input[i] {
  case 65...90:
    output.append(Character(UnicodeScalar((((Int(input[i]) - 65) + cipher ) % 26) + 65)!))
  case 97...122:
    output.append(Character(UnicodeScalar((((Int(input[i]) - 97) + cipher ) % 26) + 97)!))
  default:
    output.append(Character(UnicodeScalar(input[i])!))
  }
}

// Print the output
print(String(output))
