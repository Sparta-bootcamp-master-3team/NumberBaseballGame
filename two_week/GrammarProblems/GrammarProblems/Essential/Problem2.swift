//
//  Problem2.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/19/25.
//

import Foundation

// 고차함수 map을 사용하여 Array<Int>값을 Array<String>으로 변환
var result = inputNumbers.map { String($0) }

// 고차함수 filter, map을 사용하여 짝수만 출력하고,Array<Int>값을 Array<String>으로 변환
var input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var output = input.filter { $0 % 2 == 0 }.map { String($0) }

// Array<Int>값을 Array<String>으로 변환하는 고차함수 myMap을 커스텀해서 만들고 실행
func myMap(_ array: [Int], _ conversion: (Int) -> String) -> [String] {
    var myResult = [String]()
    
    for i in array {
        myResult.append(conversion(i))
    }
    
    return myResult
}

let myConversion = myMap(inputNumbers) { String($0) }

// Problem2의 출력 함수
func printProblem2() {
    print("\n-------필수 문제 2️⃣-------")
    print(result)
    print(output)
    print(myConversion)
}
