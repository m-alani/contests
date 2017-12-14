//
//  palindromeLinkedList.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/palindrome-linked-list/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

// Please note that this problem can not be solved in O(1) space. My solution is of O(n) time & space complexity

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
  func isPalindrome(_ head: ListNode?) -> Bool {
    var arr = [Int]()
    var itr = head
    var i = 0
    while itr != nil {
      arr.append(itr!.val)
      itr = itr!.next
    }
    while i < (arr.count / 2) {
      if arr[i] != arr[arr.count - i - 1] { return false }
      i += 1
    }
    return true
  }
}
