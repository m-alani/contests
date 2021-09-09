//
//  EqualizeTheArray.swift
//
//  Practice solution - Marwan Alani - 2021
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/equality-in-a-array
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

func equalizeArray(arr: [Int]) -> Int {
    // From the problem's constraints: 1 <= arr[i] <= 100, we'll size the array to 101 for simplicity
    var counts = [Int](repeating: 0, count: 101)
    for number in arr {
        counts[number] += 1
    }
    
    return counts.reduce(0, +) - counts.max()!
}
