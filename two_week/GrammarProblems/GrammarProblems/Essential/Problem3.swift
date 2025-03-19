//
//  Problem3.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/19/25.
//

import Foundation

// Int 배열의 짝수 번째 요소를 제거해서 반환하는 함수a 생성, 실행
func a(numbers: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<numbers.count {
        i % 2 == 0 ? result.append(numbers[i]) : ()
    }
    
    return result
}

let resultA = a(numbers: inputNumbers)

// String 배열의 짝수 번째 요소를 제거해서 반환하는 함수b 생성, 실행
func b(words: [String]) -> [String] {
    var result = [String]()
    
    for i in 0..<words.count {
        i % 2 == 0 ? result.append(words[i]) : ()
    }
    
    return result
}

let resultB = b(words: inputWords)

// 함수 a, b의 로직이 같기 때문에 하나의 함수로 대체하기 위해 제네릭을 사용한 함수c 생성, 실행
func c<T>(something: [T]) -> [T] {
    var result = [T]()
    
    for i in 0..<something.count {
        i % 2 == 0 ? result.append(something[i]) : ()
    }
    
    return result
}

let resultCNumbers = c(something: inputNumbers)
let resultCWords = c(something: inputWords)

// 함수 c를 기반으로 Numeric 프로토콜을 준수하는 타입의 요소를 가진 배열만 실행할 수 있는 함수d 생성, 실행
func d<T: Numeric>(something: [T]) -> [T] {
    var result = [T]()
    
    for i in 0..<something.count {
        i % 2 == 0 ? result.append(something[i]) : ()
    }
    
    return result
}

let resultD = d(something: inputNumbers)

// Problem3의 출력 함수
func printProblem3() {
    print("\n-------필수 문제 3️⃣-------")
    print(resultA)
    print(resultB)
    print(resultCNumbers)
    print(resultCWords)
    print(resultD)
}
