//
//  validParantheses.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/valid-parantheses/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
    func isValid(_ input: String) -> Bool {
        var valid = true
        var stack = [Character]()
        let s = [Character](input.characters)
        for char in s {
            switch char {
                case "{": stack.append("}")
                case "(": stack.append(")")
                case "[": stack.append("]")
                default: if (stack.count == 0 || stack.last != char) {
                    valid = false
                    break
                } else {
                    stack.removeLast()
                }
            }
        }
        if (stack.count != 0) {
            valid = false
        }
        return valid
    }
}
