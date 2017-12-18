//
//  bulbSwitcher.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/bulb-switcher/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func bulbSwitch(_ n: Int) -> Int {
    return Int(sqrt(Double(n)))
  }
}

/* Greedy Initial Solution :

func bulbSwitch(_ n: Int) -> Int {
  if n < 2 { return n }
  var bulbs = Array(repeating: true, count: n)
  var i = 2
  while i <= n {
    var idx = i - 1
    while idx < n {
      bulbs[idx] = !bulbs[idx]
      idx += i
    }
    i += 1
  }
  return bulbs.filter({ $0 }).count
}

*/
