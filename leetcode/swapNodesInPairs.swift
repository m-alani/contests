//
//  swapNodesInPairs.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/swap-nodes-in-pairs/
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
  func swapPairs(_ head: ListNode?) -> ListNode? {
    if (head == nil || head?.next == nil) {
      return head
    }
    let swappedHead = head?.next
    head?.next = swapPairs(head?.next?.next)
    swappedHead?.next = head
    return swappedHead
  }
}
