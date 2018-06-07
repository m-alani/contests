//
//  sumOfLeftLeaves.swift
//
//  Practice solution - Marwan Alani - 2018
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/sum-of-left-leaves
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
  var sum = 0
  
  func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    traverse(root?.left, true)
    traverse(root?.right, false)
    return sum
  }

  func traverse(_ node: TreeNode?, _ isLeftNode: Bool) {
    guard let node = node else { return }
    if node.left == nil && node.right == nil && isLeftNode { 
      self.sum += node.val 
    } else {
      traverse(node.left, true)
      traverse(node.right, false)
    }
  }
}
