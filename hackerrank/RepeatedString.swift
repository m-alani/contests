//
//  RepeatedString.swift
//
//  Practice solution - Marwan Alani - 2021
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/repeated-string/
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

func repeatedString(s: String, n: Int) -> Int {
    let inputStr = Array<Character>(s)
    let countPerString = inputStr.filter({ $0 == "a"}).count
    let repeatedCount = (n / inputStr.count) * countPerString
    let leftoverCount = inputStr[0..<(n % inputStr.count)].filter({ $0 == "a"}).count
    return repeatedCount + leftoverCount
}
