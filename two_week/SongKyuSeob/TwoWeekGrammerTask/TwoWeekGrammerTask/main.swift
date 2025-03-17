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

// MARK: - 필수 문제 3
let thirdQuestion = ThirdQuestion()

print(thirdQuestion.removeEvenNum([1, 2, 3, 4, 5]))
print(thirdQuestion.removeEvenString(["가", "나", "다", "라", "마"]))
print(thirdQuestion.removeEven([1,2,3,4,5,6,7]))
print(thirdQuestion.removeEven(["가", "나", "다", "라", "마", "바", "사"]))
