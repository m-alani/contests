//
//  ACMICPC.swift
//
//  Practice solution - Marwan Alani - 2021
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/acm-icpc-team/
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

func acmTeam(topic: [String]) -> [Int] {
    let input = convertStrArrayToBool(topic)
    var output = [0, 0]
    
    for first in 0 ..< input.count - 1 {
        for second in first + 1 ..< input.count {
            var count = 0
            for i in 0 ..< input[first].count {
                if input[first][i] || input[second][i] {
                    count += 1
                }
            }
            if count > output[0] {
                output[0] = count
                output[1] = 1
            } else if count == output[0] {
                output[1] += 1
            }
        }
    }
    
    return output
}

func convertStrArrayToBool(_ strings: [String]) -> [[Bool]] {
    return strings.map({ convertStrToBoolArray($0) })
}

func convertStrToBoolArray(_ str: String) -> [Bool] {
    return str.map({ $0 == "1" })
}
