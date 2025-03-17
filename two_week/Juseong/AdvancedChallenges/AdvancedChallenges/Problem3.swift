//
//  Problem3.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

// MARK: 1. Int 배열 홀수번째 요소 반환
private let numbers = [1, 2, 3, 4, 5]

private func a(_ numbers: [Int]) -> [Int] {
    numbers.indices.filter { $0 % 2 == 0 }.map { numbers[$0] }
}

private let result = a(numbers)

func problem3Result() {
    print(result)
}
