//
//  Problem3.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

// MARK: 1. Int 배열 홀수번째 요소 반환
//private let numbers = [1, 2, 3, 4, 5]
//
//private func a(_ numbers: [Int]) -> [Int] {
//    numbers.indices.filter { $0 % 2 == 0 }.map { numbers[$0] }
//}
//
//private let result = a(numbers)

// MARK: 2. String 배열 홀수번째 요소 반환
//private let strings = ["가", "나", "다", "라", "마"]
//
//private func b(_ strings: [String]) -> [String] {
//    strings.indices.filter { $0 % 2 == 0 }.map { strings[$0] }
//}
//
//private let result = b(strings)

// MARK: 3. 제네릭 함수 구현
//private let numbers = [1, 2, 3, 4, 5]
//private let strings = ["가", "나", "다", "라", "마"]
//
//private func c<T>(_ inputs: [T]) -> [T] {
//    inputs.indices.filter { $0 % 2 == 0 }.map { inputs[$0] }
//}
//
//private let numberResult = c(numbers)
//private let stringResult = c(strings)
//
//func problem3Result() {
//    print(numberResult)
//    print(stringResult)
//}

// MARK: 4. Numbers 프로토콜
protocol Numbers { }
extension Int: Numbers { }

private let numbers = [1, 2, 3, 4, 5]
private let strings = ["가", "나", "다", "라", "마"]

private func d<T: Numbers>(_ inputs: [T]) -> [T] {
    inputs.indices.filter { $0 % 2 == 0 }.map { inputs[$0] }
}

private let numberResult = d(numbers)
//private let stringResult = c(strings) // 에러 발생

func problem3Result() {
    print(numberResult)
}
