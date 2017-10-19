//
//  ConnectedCellInAGrid.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/ctci-connected-cell-in-a-grid
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// helper function (recursion FTW)
func check(_ m: inout [[Bool]], _ i: Int, _ j:Int) -> Int {
    if (i < 0 || j < 0 || i >= m.count || j >= m[i].count || !m[i][j]) {
        return 0
    }
    m[i][j] = false
    var count = 1
    count += check(&m, i - 1, j - 1)
    count += check(&m, i - 1, j)
    count += check(&m, i - 1, j + 1)
    count += check(&m, i, j - 1)
    count += check(&m, i, j + 1)
    count += check(&m, i + 1, j - 1)
    count += check(&m, i + 1, j)
    count += check(&m, i + 1, j + 1)
    return count
}

// prep
var rows = Int(readLine()!)!, columns = Int(readLine()!)!
var matrix = [[Bool]]()

// read the input
for _ in 0..<rows {
    let row = String(readLine()!)!.components(separatedBy: " ").map({ $0 == "1" })
    matrix.append(row)
}

// get to work
var result = 0
for i in 0..<rows {
    for j in 0..<columns {
        result = max(result, check(&matrix, i, j))
    }
}

// print the output
print(result)
