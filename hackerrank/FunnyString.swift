//
//  FunnyString.swift
//
//  Practice solution - Marwan Alani - 2017
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/funny-string
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//

if let cases = Int(readLine() ?? "0") {
    var output = [String]()

    // Process Input
    for _ in 1...cases {
        if let line: String = readLine() {
            var funny = true
            let myString = line.utf8
            let count = myString.count
            for offset in 0...(count/2) - 1 {
                let firstFrontAscii = Int(myString[myString.index(myString.startIndex, offsetBy: offset)])
                let secondFrontAscii = Int(myString[myString.index(myString.startIndex, offsetBy: offset+1)])
                let firstBackAscii = Int(myString[myString.index(myString.startIndex, offsetBy: (count-1) - offset)])
                let secondBackAscii = Int(myString[myString.index(myString.startIndex, offsetBy: (count-2) - offset)])
                    if (abs(firstFrontAscii - secondFrontAscii) != abs(firstBackAscii - secondBackAscii)) {
                    funny = false;
                    break
                }
            }
            output.append(funny ? "Funny" : "Not Funny")
        }
    }

    // Print Output
    for line in output {
        print(line)
    }
}
