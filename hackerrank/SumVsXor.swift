//
//  SumVsXor.swift
//
//  Contest solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/contests/hourrank-13/challenges/sum-vs-xor
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

let input = UInt(readLine()!)!
if input == 0 {
  print("1")
} else {
  print(pow(2, Array(String(input, radix: 2)).filter({$0 == "0"}).count))
}
