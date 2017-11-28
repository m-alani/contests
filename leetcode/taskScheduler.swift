//
//  taskScheduler.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/task-scheduler/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
    if tasks.count == 1 || n == 0 { return tasks.count }
    var dict = [Character: Int]()
    for char in tasks { dict[char] = (dict[char] ?? 0) + 1 }
    let arr = dict.values.sorted(by: >)
    let maximum = arr.first! - 1, count = arr.filter({ $0 == arr.first! }).count 
    return max(tasks.count, (maximum * (n+1)) + count)
  }
}
