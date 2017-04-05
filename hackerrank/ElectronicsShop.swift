//
//  ElectronicsShop.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/electronics-shop
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
let money = Int(String(readLine()!)!.components(separatedBy: " ")[0])!
let keyboards = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted(by: {$0 < $1}) // ascending
let usbs = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}).sorted(by: {$0 >= $1}) // descending

// Process the case
var output = -1
var keyIndex = 0, usbIndex = 0
while (keyIndex < keyboards.count && usbIndex < usbs.count) {
    let sum = keyboards[keyIndex] + usbs[usbIndex]
    if (sum <= money) {
        output = (output > sum) ? output : sum
        keyIndex += 1
    } else {
        usbIndex += 1
    }
}

// Print the output
print(output)
