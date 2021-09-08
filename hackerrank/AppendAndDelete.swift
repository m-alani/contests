//
//  AppendAndDelete.swift
//
//  Practice solution - Marwan Alani - 2021
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/append-and-delete/
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

func appendAndDelete(s: String, t: String, k: Int) -> String {
    
    guard s.count + t.count > k else { return "Yes" }
    
    let s1 = Array<Character>(s)
    let s2 = Array<Character>(t)
    var sharedIndex = 0
    
    while (s1.count > sharedIndex) && (s2.count > sharedIndex) && (s1[sharedIndex] == s2[sharedIndex]) {
        sharedIndex += 1
    }
    
    let requiredChanges = (s1.count - sharedIndex) + (s2.count - sharedIndex)
    let delta = k - requiredChanges
    let output = delta == 0 || (delta > 0 && (delta.isMultiple(of: 2))) ? "Yes" : "No"
    
    return output
}
