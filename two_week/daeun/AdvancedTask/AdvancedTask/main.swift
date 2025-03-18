//
//  main.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

func waitForEnter() {
    print("\n[Enter 키를 눌러 다음 테스트로 진행...]")
    _ = readLine()
}

// 필수 문제 1
testCalculate()
waitForEnter()

// 필수 문제 2
testForInForEach()
waitForEnter()
testHighOrderFunctionChaining()
waitForEnter()
testCreateCustomHigherOrderFunction()
waitForEnter()


// 필수 문제 3
testFilterEvenIndexedIntegers()
waitForEnter()
testFilterEvenIndexedStrings()
waitForEnter()
testFilterEvenIndexedGeneric()
waitForEnter()
testFilterEvenIndexedNumbersOnly()
waitForEnter()


// 도전 문제 1
testSwitchEngine()

