//
//  GameOfThrones-I.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/game-of-thrones
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

// Read Input
if let input = readLine() {
  var oddChars: Set<Character> = Set()
  let word = input.characters
  // Process the input line one character at a time. Maintain a set of all characters with odd occurences in the input
  for char in word {
    if let exists = oddChars.remove(char) {}
    else {
      oddChars.insert(char)
    }
  }
  // Check for passing condition:
  //   The input line can have 1 character at most with odd occurences
  let output = oddChars.count < 2 ? "YES" : "NO"

  // Print Output
  print(output)
}
