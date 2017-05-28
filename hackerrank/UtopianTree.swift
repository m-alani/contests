//
//  UtopianTree.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/utopian-tree
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
let cases = Int(readLine()!)!

// Read and solve each case
var output = [Int]()
for _ in 1...cases {
  var cycles = Int(readLine()!)!
  var height = 1
  var spring = true
  while (cycles > 0) {
    height = (spring) ? height * 2 : height + 1
    spring = !spring
    cycles -= 1
  }
  output.append(height)
}

// Print output
for tree in output {
  print(tree)
}
