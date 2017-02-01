//
//  LoveLetterMystery.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/the-love-letter-mystery
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

if let cases = Int(readLine() ?? "0") {
  var output = [String]()

  // Process Input
  for _ in 1...cases {
    if let line: String = readLine() {
      var operations = 0
      let word = line.utf8
      let count = word.count
      for offset in 0...(count/2) - 1 {
        let frontAscii = Int(word[word.index(word.startIndex, offsetBy: offset)])
        let backAscii = Int(word[word.index(word.startIndex, offsetBy: (count-1) - offset)])
        operations += abs(frontAscii - backAscii)
      }
      output.append("\(operations)")
    }
  }

  // Print Output
  for line in output {
    print(line)
  }
}
