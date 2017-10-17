//
//  moveZeroes.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/move-zeroes/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var itr = 0
        for num in nums {
            if num != 0 {
                nums[itr] = num
                itr += 1
            }
        }
        while (itr < nums.count) {
            nums[itr] = 0
            itr += 1
        }
    }
}
