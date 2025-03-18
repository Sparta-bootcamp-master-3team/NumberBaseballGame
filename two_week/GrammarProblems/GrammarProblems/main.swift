//
//  main.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/18/25.
//

import Foundation

// MARK: P1
let sum: (Int, Int) -> String = { (num1, num2) in
    return "두 수의합은 \(num1 + num2) 입니다."
}

func calculate(closure: (Int, Int) -> String) {
    print(closure(20, 30))
}

print(sum(10, 20))

calculate(closure: sum)
