//
//  AccurateSorting.swift
//
//  Contest solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/contests/w31/challenges/accurate-sorting
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read input
let queries = Int(readLine()!)!

// Process the queries
var output = [String]()
for _ in 1...queries {
  _ = readLine()
  var array = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
  var unswappable = false   // Flag to break out when we can't perform a swap
  var sorted = false        // Flag to break out if a single search cycle is completed with no swaps (the array is sorted already)
  main:for i in 1...array.count {
    var j = array.count - i
    sorted = true
    while (j > 0) {
      if (array[j] < array[j-1]) {
        if (abs(array[j] - array[j-1]) > 1) {
          unswappable = true
          break main
        } else {
          swap(&array[j], &array[j-1])
          sorted = false
        }
      }
      j -= 1
    }
    if (sorted) {
      break main
    }
  }
  output.append((unswappable) ? "No" : "Yes")
}

// Print the output
for answer in output {
  print(answer)
}
