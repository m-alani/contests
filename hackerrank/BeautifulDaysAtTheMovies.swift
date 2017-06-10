//
//  BeautifulDaysAtTheMovies.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/beautiful-days-at-the-movies
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Helper function to find the reverse of an Int
func reverse(_ number: Int) -> Int {
  var reversed: Int = 0
  var current = number
  while current != 0 {
    reversed = reversed * 10 + current % 10
    current = current / 10
  }
  return reversed
}

// Read input
let input = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the case
var output = 0
for i in input[0]...input[1] {
  var current = i
  var reversed = reverse(i)
  if ((i - reversed) % input[2] == 0) {
    output += 1
  }
}

// Print the output
print(output)
