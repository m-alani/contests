//
//  ModifiedKaprekarNumbers.swift
//
//  Practice solution - Marwan Alani - 2021
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/kaprekar-numbers
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

func kaprekarNumbers(p: Int, q: Int) -> Void {
    var output = ""
    
    for num in p...q {
        if isKap(num) {
            output.append("\(num) ")
        }
    }

    print((output.isEmpty) ? "INVALID RANGE" : output)
}

func isKap(_ num: Int) -> Bool {
    let squaredStr = String(num * num)
    let squared = Array<Character>(squaredStr)
    let left = squared[..<(squared.count / 2)]
    let right = squared[(squared.count / 2)...]
    let l = Int(String(left)) ?? 0
    let r = Int(String(right)) ?? 0
    return (l + r) == num
}
