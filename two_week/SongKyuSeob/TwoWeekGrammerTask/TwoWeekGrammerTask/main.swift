//
//  main.swift
//  TwoWeekGrammerTask
//
//  Created by 송규섭 on 3/17/25.
//

import Foundation

// MARK: - 필수 문제 1
let firstQuestion = FirstQuestion()

print(firstQuestion.sum(3, 7))
firstQuestion.calculate(num1: 10, num2: 5) { a, b in
    return "두 수의 합은 \(a + b)입니다"
}

// MARK: - 필수 문제 2
let secondQuestion = SecondQuestion()

print(secondQuestion.myMap([1, 2, 3, 4, 5], { String($0) }))
