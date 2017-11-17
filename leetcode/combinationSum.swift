//
//  combinationSum.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/combination-sum/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  var nums = [Int]()
  var target = 0
  var result = [[Int]]()

  func combinationSum(_ candidates: [Int], _ tar: Int) -> [[Int]] {
    nums = candidates.sorted()
    target = tar
    expand(0, [Int]())
    return result
  }

  func expand(_ sum: Int, _ arr: [Int]) {
    let current = arr.last ?? 0
    for num in nums {
      if num < current { continue }
      let newSum = sum + num
      if newSum == target {
        var newArr = arr
        newArr.append(num)
        result.append(newArr)
      } else if newSum < target {
        var newArr = arr
        newArr.append(num)
        expand(newSum, newArr)
      } else {
        break
      }
    }
  }
}

