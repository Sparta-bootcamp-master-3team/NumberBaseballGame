//
//  Problem3.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/19/25.
//

import Foundation

func a(numbers: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<numbers.count {
        i % 2 == 0 ? result.append(numbers[i]) : ()
    }
    
    return result
}

let resultA = a(numbers: inputNumbers)

func b(words: [String]) -> [String] {
    var result = [String]()
    
    for i in 0..<words.count {
        i % 2 == 0 ? result.append(words[i]) : ()
    }
    
    return result
}

let resultB = b(words: inputWords)

func c<T>(something: [T]) -> [T] {
    var result = [T]()
    
    for i in 0..<something.count {
        i % 2 == 0 ? result.append(something[i]) : ()
    }
    
    return result
}

let resultCNumbers = c(something: inputNumbers)
let resultCWords = c(something: inputWords)

func d<T: Numeric>(something: [T]) -> [T] {
    var result = [T]()
    
    for i in 0..<something.count {
        i % 2 == 0 ? result.append(something[i]) : ()
    }
    
    return result
}

let resultD = d(something: inputNumbers)

func printProblem3() {
    print(resultA)
    print(resultB)
    print(resultCNumbers)
    print(resultCWords)
    print(resultD)
}
