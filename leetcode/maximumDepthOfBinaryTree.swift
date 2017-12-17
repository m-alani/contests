//
//  maximumDepthOfBinaryTree.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/maximum-depth-of-binary-tree/
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
  var max = 0

  func maxDepth(_ root: TreeNode?) -> Int {
    findMax(root, 1)
    return max
  }

  func findMax(_ node: TreeNode?, _ depth: Int) {
    if let node = node {
      if depth > max { max = depth }
      findMax(node.left, depth + 1)
      findMax(node.right, depth + 1)
    }
  }
}
