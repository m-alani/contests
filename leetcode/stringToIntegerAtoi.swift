//
//  stringToIntegerAtoi.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/string-to-integer-atoi/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
    func myAtoi(_ s: String) -> Int {
        let str = [Character](s.characters)
        let numbers = [Character]("0123456789".characters)
        var number = 0
        var ptr = 0
        var negative = false
        while (ptr < str.count && str[ptr] == " ") {
            ptr += 1
        }
        if (ptr < str.count && str[ptr] == "-") {
            negative = true
            ptr += 1
        } else if (ptr < str.count && str[ptr] == "+") {
            ptr += 1
        }
        while (ptr < str.count && numbers.index(of: str[ptr]) != nil) {
            number = (number * 10) + Int(String(str[ptr]))!
            if (number > 2147483648 && negative) {
                return -2147483648
            } else if (number > 2147483647 && !negative) {
                return 2147483647
            }
            ptr += 1
        }
        return negative ? number * -1 : number
    }
}
