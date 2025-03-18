//
//  main.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

// 필수 문제 1
testCalculate()


// 필수 문제 2
testForInForEach()
testHighOrderFunctionChaining()
testCreateCustomHigherOrderFunction()

// 필수 문제 3
testFilterEvenIndexedIntegers()
testFilterEvenIndexedStrings()
testFilterEvenIndexedGeneric()
testFilterEvenIndexedNumbersOnly()


// 도전 문제 1
let myCar: HybridCar = .init(brand: "브랜드1", model: "모델1", year: "2025", engine: ElectricEngine())
myCar.switchEngine(to: HydrogenEngine())
print(myCar.engine)
