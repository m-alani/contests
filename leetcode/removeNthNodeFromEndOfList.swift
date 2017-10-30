//
//  removeNthNodeFromEndOfList.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/remove-nth-node-from-end-of-list/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var distance = n
    var dummy = ListNode(0)
    dummy.next = head
    var parent: ListNode? = dummy
    var itr = head
    while itr != nil {
      itr = itr?.next
      if distance == 0 {
        parent = parent?.next
      } else {
        distance -= 1
      }
    }
    parent?.next = parent?.next?.next
    return dummy.next
  }
}
