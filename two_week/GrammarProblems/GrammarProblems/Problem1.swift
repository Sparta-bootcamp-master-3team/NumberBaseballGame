//
//  Problem1.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/19/25.
//

import Foundation

let sum: (Int, Int) -> String = { (num1, num2) in
    return "두 수의 합은 \(num1 + num2) 입니다."
}

// 위 클로저와 동일한 타입의 클로저를 파라미터로 받는 함수 정의
func calculate(closure: (Int, Int) -> String) {
    print(closure(20, 30))
}

// Problem1의 출력 함수
func printProblem1() {
    print(sum(10, 20))
    calculate(closure: sum)
}
