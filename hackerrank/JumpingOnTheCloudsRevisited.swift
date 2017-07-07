//
//  JumpingOnTheCloudsRevisited.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the inputs
let jumpDistance = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})[1]
let clouds = String(readLine()!)!.components(separatedBy: " ").map({$0 == "1"}) // true for a thunder cloud, false otherwise

// Emulate the game, one jump at a time
var energy = 100
var location = 0
repeat {
  location = (location + jumpDistance) % clouds.count
  energy = (clouds[location]) ? energy - 3 : energy - 1
} while (location != 0)

// Print the remaining energy
print(energy)
