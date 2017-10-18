//
//  reshapeTheMatrix.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/reshape-the-matrix/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let orgRows = nums.count
        let orgColumns = nums[0].count
        if (orgRows * orgColumns != r * c) { return nums }
        var reshaped = [[Int]](), row = [Int]()
        var inPtrR = 0, inPtrC = 0
        while (inPtrR < orgRows) {
            row.append(nums[inPtrR][inPtrC])
            inPtrC += 1
            if inPtrC >= orgColumns {
                inPtrC = 0
                inPtrR += 1
            }
            if row.count >= c {
                reshaped.append(row)
                row.removeAll()
            }
        }
        return reshaped
    }
}
