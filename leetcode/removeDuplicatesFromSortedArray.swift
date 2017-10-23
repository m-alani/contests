//
//  removeDuplicatesFromSortedArray.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/remove-duplicates-from-sorted-array/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if (nums.count == 0) { return 0 }
        var itr = 1, next = 1
        while (itr < nums.count) {
            while (itr < nums.count && nums[itr] == nums[itr - 1]) { itr += 1 }
            if (itr < nums.count) {
                if (itr != next) {
                    nums[next] = nums[itr]
                }
                next += 1
                itr += 1
            }
        }
        return next
    }
}
