//
//  validParantheses.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on leetCode @ https://leetcode.com/problems/valid-parantheses/
//  Note: make sure that you select "Swift" from the top-left language menu of the code editor when testing this code
//

class Solution {
  func isValid(_ s: String) -> Bool {
    var valid = true
    var stack = [Character]()
    let brackets = "({["
    let input = [Character](s.characters)
    if input.count % 2 != 0 {
      return false
    }
    for char in input {
      if (brackets.contains(String(char))) {
        stack.append(char)
      } else {
        if (stack.count > 0) {
          switch char {
            case "}": if (stack[stack.count - 1] == "{") {
              stack.removeLast()
            } else { valid = false }
            case ")": if (stack[stack.count - 1] == "(") {
              stack.removeLast()
            } else { valid = false }
            case "]": if (stack[stack.count - 1] == "[") {
              stack.removeLast()
            } else { valid = false }
            default: valid = false
          }
        } else {
          valid = false
        }
      }
    }
    if (stack.count != 0) {
      valid = false
    }
    return valid
  }
}
