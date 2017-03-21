//
//  TaumAndBday.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/taum-and-bday
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read T
let cases = Int(readLine()!)!

// Solve the cases one by one
var output = [Int]()
for _ in 1...cases {
    let bwTarget = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
    var prices = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
    if (prices[0] + prices[2]) < prices[1] {
        prices[1] = prices[0] + prices[2]
    } else if (prices[1] + prices[2]) < prices[0] {
        prices[0] = prices[1] + prices[2]
    }
    output.append(prices[0]*bwTarget[0] + prices[1]*bwTarget[1])
}

// Print the output
for caseResult in output {
    print(caseResult)
}
