//
//  MagicSquareForming.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/magic-square-forming
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read the input
var input = [[Int]]()
input.append(String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}))
input.append(String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}))
input.append(String(readLine()!)!.components(separatedBy: " ").map({Int($0)!}))

// Helper function to find the cost of converting a matrix to another
func costToConvert(matrix mat1: [[Int]], into mat2: [[Int]]) -> Int {
    var cost = 0
    for row in 0...2 {
        for column in 0...2 {
            cost += abs(mat1[row][column] - mat2[row][column])
        }
    }
    return cost
}

// Helper array of all possible 3x3 magic matrices
let magic3x3 = [
    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]]
]

// Find the minimum cost
var output = 55
for matrix in magic3x3 {
    let cost = costToConvert(matrix: input, into: matrix)
    output = (cost < output) ? cost : output
}

// Print the output
print(output)
