//
//  AlternatingCharacters.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/alternating-characters
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

if let cases: Int = Int(readLine() ?? "0") {
    var output: [String] = [String]()

    // Process Input
    for _ in 1...cases {
        if let input: String = readLine() {
            // Initializations
            var line: String.CharacterView = input.characters
            var deleteOperations: Int = 0
            var charIndex: String.CharacterView.Index = line.startIndex
            var previousChar: Character = line[charIndex]
            charIndex = line.index(after: charIndex)
            // Loop through the input line, starting at the second character
            while (charIndex != line.endIndex) {
                // Same character as before? Delete
                if (line[charIndex] == previousChar) {
                    line.remove(at: charIndex)
                    deleteOperations += 1
                } else {
                    // Not the same? update the previous character variable, and move on
                    previousChar = line[charIndex]
                    charIndex = line.index(after: charIndex)
                }
            }
            // Save the number of deletions for this case
            output.append("\(deleteOperations)")
        }
    }

    // Print Output
    for line in output {
        print(line)
    }
}
