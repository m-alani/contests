//
//  mergeTwoSortedLists.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/merge-two-sorted-lists/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if (l1 == nil) { return l2 }
        if (l2 == nil) { return l1 }
        if (l1!.val < l2!.val) {
            l1!.next = mergeTwoLists(l1!.next, l2)
            return l1
        } else {
            l2!.next = mergeTwoLists(l1, l2!.next)
            return l2
        }
    }
}
