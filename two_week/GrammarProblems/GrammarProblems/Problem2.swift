//
//  Problem2.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/19/25.
//

import Foundation

var result = inputNumbers.map { String($0) }

var input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var output = input.filter { $0 % 2 == 0 }.map { String($0) }

func myMap(_ array: [Int], _ conversion: (Int) -> String) -> [String] {
    var myResult = [String]()
    
    for i in array {
        myResult.append(conversion(i))
    }
    
    return myResult
}

let myConversion = myMap(inputNumbers) { String($0) }

func printProblem2() {
    print(result)
    print(output)
    print(myConversion)
}
