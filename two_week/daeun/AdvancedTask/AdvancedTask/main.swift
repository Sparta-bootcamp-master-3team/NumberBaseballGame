//
//  main.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

// 필수 문제 1
let sum: (Int, Int) -> String = { "두 수의 합은 \($0 + $1)입니다." }

func calculate(_ operate: (Int, Int) -> String) {
    print(operate(1, 2))
}

calculate(sum)

// 필수 문제 2
let numbers = [1, 2, 3, 4, 5]

var result = [String]()

numbers.forEach { number in
    result.append(String(number))
}


let input = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10]
let output = input.filter { $0 % 2 == 0 }.map { String($0) }

print(output)
