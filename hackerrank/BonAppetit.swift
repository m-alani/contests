//
//  BonAppetit.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/bon-appetit
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N (and ignore it, as it is not needed in this implementation) & K
let allergyIndex = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})[1]

// Read the costs
var costs = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Read how much Anna was charged
let charged = Int(readLine()!)!

// Find Anna's share
costs.remove(at: allergyIndex)
let actual = Int(costs.reduce(0, +) / 2)

// Generate output, then print it
let output = (actual == charged) ? "Bon Appetit" : "\(charged - actual)"
print(output)
