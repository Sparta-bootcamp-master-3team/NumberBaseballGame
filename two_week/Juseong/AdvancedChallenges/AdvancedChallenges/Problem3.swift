//
//  Problem3.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

private let numbers = [1, 2, 3, 4, 5]
private let strings = ["가", "나", "다", "라", "마"]
private let doubles: [Double] = [1.0, 2.0, 3.0, 4.0, 5.0]

// MARK: 1. Int 배열 홀수번째 요소 반환
private func a(_ numbers: [Int]) -> [Int] {
    numbers.indices.filter { $0 % 2 == 0 }.map { numbers[$0] }
}

private let resultA = a(numbers)

// MARK: 2. String 배열 홀수번째 요소 반환
private func b(_ strings: [String]) -> [String] {
    strings.indices.filter { $0 % 2 == 0 }.map { strings[$0] }
}

private let resultB = b(strings)

// MARK: 3. 제네릭 함수 구현
private func c<T>(_ inputs: [T]) -> [T] {
    inputs.indices.filter { $0 % 2 == 0 }.map { inputs[$0] }
}

private let numberResultC = c(numbers)
private let stringResultC = c(strings)

// MARK: 4. Numbers 프로토콜
protocol Numbers { }
extension Int: Numbers { }
extension Double: Numbers { }

private func d<T: Numbers>(_ inputs: [T]) -> [T] {
    inputs.indices.filter { $0 % 2 == 0 }.map { inputs[$0] }
}

private let numberResultD = d(numbers)
//private let stringResultD = c(strings) // 에러 발생
private let doubleResultD = d(doubles)

func problem3Result() {
    print("필수 문제 3")
    print("함수 a - \(resultA)")
    print("함수 b - \(resultB)")
    print("함수 c (Int) - \(numberResultC)")
    print("함수 c (String) - \(stringResultC)")
    print("함수 d (Int) - \(numberResultD)")
    print("함수 d - (Double) \(doubleResultD)")
    print("\n--------------------\n")
}
