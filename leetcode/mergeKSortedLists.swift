//
//  mergeKSortedLists.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/merge-k-sorted-lists/
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
  func mergeKLists(_ lists: [ListNode?]) -> ListNode? {

    // Convert the input into an array (O(n))
    var array = [Int]()
    for list in lists {
      var itr = list
      while itr != nil {
        array.append(itr!.val)
        itr = itr?.next
      }
    }
    let dummy = ListNode(0)
    var itr: ListNode? = dummy

    // Then sort the array (O(n log n)) and generate a new list of the merged numbers (O(n))
    for num in array.sorted() {
      itr?.next = ListNode(num)
      itr = itr?.next
    }

    // Total: O(n log n) time complexity & O(n) space complexity
    return dummy.next
  }
}
