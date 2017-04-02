//
//  DrawingBook.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/drawing-book
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//  Another note: this solution came as an answer to a friend's question: "How compact (and unreadable) can your Swift code be?".

import Foundation
let N = Int(readLine()!)!, P = Int(readLine()!)!
print((P <= N/2) ?(P/2):((N-P)/2))
