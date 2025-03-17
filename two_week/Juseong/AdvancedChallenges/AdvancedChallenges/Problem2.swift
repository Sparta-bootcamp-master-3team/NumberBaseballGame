//
//  Problem2.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

private let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// MARK: 1. map 변환
private let result1 = numbers.map { String($0) }

// MARK: 2. 고차함수 체이닝 - filter, map
private let result2 = numbers.filter { $0 % 2 == 0 }.map { String($0) }

// MARK: 3. myMap 함수 구현
private func myMap(numbers: [Int], closure: ((Int) -> String)) -> [String] {
    numbers.map(closure)
}

private let result3 = myMap(numbers: numbers) { String($0) }

func problem2Result() {
    print("필수 문제 2")
    print("map 변환 - \(result1)")
    print("고차함수 체이닝 - \(result2)")
    print("myMap - \(result3)")
    print("\n--------------------\n")
}
