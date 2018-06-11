//
//  DeleteDuplicatesFromSortedLinkedList.swift
//
//  Practice solution - Marwan Alani - 2018
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/delete-duplicate-value-nodes-from-a-sorted-linked-list
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//  

func removeDuplicates(head: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
    var itr = head
    while itr != nil {
        if itr?.data == itr!.next?.data {
            itr?.next = itr?.next?.next
        } else {
            itr = itr?.next
        }
    }
    return head
}
