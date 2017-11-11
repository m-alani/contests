//
//  friendCircles.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/friend-circles/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {

  var visited = [Bool]()
  var m = [[Int]]()

  func DFS(_ i: Int) {
    for j in 0..<m.count {
      if m[i][j] == 1 && !visited[j] {
        visited[j] = true
        DFS(j)
      }
    }
  }

  func findCircleNum(_ M: [[Int]]) -> Int {
    var count = 0
    visited = Array(repeating: false, count: M.count)
    m = M
    for i in 0..<m.count {
      if !visited[i] {
        DFS(i)
        count += 1
      }
    }
    return count
  }

}
