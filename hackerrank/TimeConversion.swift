//
//  TimeConversion.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/time-conversion
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the string
let s = readLine()!

// Split the input
var intHours = Int(s.substring(with: s.startIndex..<s.index(s.startIndex, offsetBy: 2))) ?? 0
var hours = String(s.substring(with: s.startIndex..<s.index(s.startIndex, offsetBy: 2))) ?? ""
let minutes = String(s.substring(with: s.index(s.startIndex, offsetBy: 3)..<s.index(s.startIndex, offsetBy: 5))) ?? "00"
let seconds = String(s.substring(with: s.index(s.startIndex, offsetBy: 6)..<s.index(s.startIndex, offsetBy: 8))) ?? "00"

// Check for AM/PM
let isAM = (String(s.substring(with: s.index(s.startIndex, offsetBy: 8)..<s.index(s.startIndex, offsetBy: 10)))) == "PM"
    ? false
    : true

if (intHours == 12) {
    hours = isAM ? "00" : "12"
} else {
    hours = isAM ? hours : "\(intHours + 12)"
}

// Print Output
print("\(hours):\(minutes):\(seconds)")

