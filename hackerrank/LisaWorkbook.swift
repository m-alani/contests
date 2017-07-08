//
//  LisaWorkbook.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/lisa-workbook
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the inputs
let pageSize = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})[1]
let chapters = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Process the problem
var special = 0
var page = 0
for chapter in chapters {
  var problemsOnPage = 0
  page += 1
  for problem in 1...chapter {
    if (problemsOnPage == pageSize) {
      page += 1
      problemsOnPage = 1
    } else {
      problemsOnPage += 1
    }
    if (problem == page) {
      special += 1
    }
  }
}

// Print the output
print(special)
