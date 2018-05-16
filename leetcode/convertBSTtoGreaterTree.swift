//
//  convertBSTtoGreaterTree.swift
//
//  Practice solution - Marwan Alani - 2018
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/convert-bst-to-greater-tree
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  var sum = 0

  func convertBST(_ root: TreeNode?) -> TreeNode? {
    guard let node = root else { return nil }
    _ = convertBST(node.right)
    sum += node.val
    node.val = sum
    _ = convertBST(node.left)
    return root
  }
}