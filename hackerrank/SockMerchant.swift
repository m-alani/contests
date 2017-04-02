//
//  SockMerchant.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/sock-merchant
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

import Foundation

// Read N (and ignore it, as it is not needed in this implementation)
_ = readLine()

// Read the socks values
let socks = String(readLine()!)!.components(separatedBy: " ").map({Int($0)!})

// Find the number of pairs
var output = 0
var temp = Set<Int>()
for sock in socks {
    if temp.contains(sock) {
        output += 1
        temp.remove(sock)
    } else {
        temp.insert(sock)
    }
}

// Print the number of pairs
print(output)
