//
//  addTwoNumbers.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/add-two-numbers/
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
    func addTwoNumbers(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var digit = 0, carry = 0, result: ListNode?, itr: ListNode?, l1 = list1, l2 = list2
        repeat {
            digit = ((l1?.val) ?? 0) + ((l2?.val) ?? 0) + carry
            carry = (digit > 9) ? 1 : 0
            if result == nil {
                result = ListNode((digit > 9) ? digit - 10 : digit)
                itr = result
            } else {
                itr?.next = ListNode((digit > 9) ? digit - 10 : digit)
                itr = itr?.next
            }
            l1 = l1?.next
            l2 = l2?.next
        } while (l1 != nil || l2 != nil || carry != 0)
        return result
    }
}
