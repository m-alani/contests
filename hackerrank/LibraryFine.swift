//
//  LibraryFine.swift
//
//  Practice solution - Marwan Alani - 2018
//
//  Check the problem (and run the code) on HackerRank @ https://www.hackerrank.com/challenges/library-fine
//  Note: make sure that you select "Swift" from the top-right language menu of the code editor when testing this code
//  

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    let y = y1 - y2, m = m1 - m2, d = d1 - d2
    if y < 0 { return 0 }
    if y > 0 { return 10000 }
    if m < 0 { return 0 }
    if m > 0 { return m * 500 }
    if d > 0 { return d * 15 }
    return 0
}
