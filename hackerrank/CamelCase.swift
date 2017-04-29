//
//  CamelCase.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/camelcase
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

// Attempt to squeeze everything into 1 line, and preferrably make it unreadable ... because I'm l33t
import Foundation;print(String(readLine()!)!.characters.filter({"ABCDEFGHIJKLMNOPQRSTUVWXYZ".contains(String($0))}).count+1)
