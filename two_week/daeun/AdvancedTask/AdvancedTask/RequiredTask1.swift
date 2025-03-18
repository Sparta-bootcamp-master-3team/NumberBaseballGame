//
//  RequiredTask1.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/18/25.
//


let sum: (Int, Int) -> String = { "두 수의 합은 \($0 + $1)입니다." }

func calculate(_ operate: (Int, Int) -> String) {
    print(operate(1, 2))
}

func testCalculate() {
    print("-- calculate(_:) --")
    calculate(sum)
    print()
}
