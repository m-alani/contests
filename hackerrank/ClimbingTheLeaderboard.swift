//
//  ClimbingTheLeaderboard.swift
//
//  Practice solution - Marwan Alani - 2021
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/climbing-the-leaderboard/
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    var output = [Int]()
    var rankings = removeDuplicates(from: ranked)
    
    for score in player {
        while ((rankings.last ?? 0) <= score && !rankings.isEmpty) {
            _ = rankings.popLast()
        }
        output.append((rankings.isEmpty) ? 1 : rankings.count + 1)
    }
    
    return output
}

func removeDuplicates(from arr: [Int]) -> [Int] {
    var uniques = [Int]()
    for score in arr {
        if score != uniques.last {
            uniques.append(score)
        }
    }
    
    return uniques
}
