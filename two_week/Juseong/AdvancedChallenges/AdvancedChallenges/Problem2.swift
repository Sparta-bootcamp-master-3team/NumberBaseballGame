//
//  Problem2.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

private let numbers = [1, 2, 3, 4, 5]

// map 변환
//private let result = numbers.map { String($0) }

// 고차함수 체이닝 - filter, map
private let result = numbers.filter { $0 % 2 == 0 }.map { String($0) }

func problem2Result() {
    print(result)
}
