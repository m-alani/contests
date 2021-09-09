//
//  JumpingOnTheClouds.swift
//
//  Contest solution - Marwan Alani - 2021
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/jumping-on-the-clouds
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

func jumpingOnClouds(c: [Int]) -> Int {
    var jumps = 0
    var index = 0
    
    while (index < c.count - 1) {
        if (index + 2 < c.count && c[index+2] == 0) {
            index += 2
        } else {
            index += 1
        }
        jumps += 1
    }
    return jumps
}
