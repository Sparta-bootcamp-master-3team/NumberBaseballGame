//
//  Problem1.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

private let sum: ((Int, Int) -> String) = { "두수의 합은 \($0 + $1) 입니다."}

private func calculate(sum: ((Int, Int) -> String)) {
    print(sum(10, 20))
}

func problem1Reulst() {
    print("필수 문제 1")
    calculate(sum: sum)
    print("\n--------------------\n")
}
