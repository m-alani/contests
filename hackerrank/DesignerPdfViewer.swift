//
//  DesignerPdfViewer.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/designer-pdf-viewer
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
let heights = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})
let word = Array(String(readLine()!)!.utf16)

// Find the area for that word
var height = 0
for letter in word {
  let toCompare = heights[Int(letter) - 97]
  height = (height < toCompare) ? toCompare : height
}
let output = word.count * height

// Print the output
print(output)
