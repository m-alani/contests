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
        var count = 0, itr = 0
        while (itr < nums.count) {
            if nums[itr] == 0 {
                nums.remove(at: itr)
                count += 1
            } else {
                itr += 1
            }
        }
        while (count > 0) {
            nums.append(0)
            count -= 1
        }
    }
}
