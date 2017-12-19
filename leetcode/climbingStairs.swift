//
//  climbingStairs.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/climbing-stairs/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

// It's really just Fibonacci series
func climbStairs(_ n: Int) -> Int {
  if n == 1 { return 1 }
  if n == 2 { return 2 }
  var one = 2, two = 1, i = 2, ways = 0
  while i < n {
    i += 1
    ways = one + two
    two = one
    one = ways
  }
  return ways
}
