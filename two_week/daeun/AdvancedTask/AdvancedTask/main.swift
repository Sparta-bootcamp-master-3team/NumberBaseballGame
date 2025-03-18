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
func a(_ array: [Int]) -> [Int] {
    return array
        .enumerated()
        .filter{ $0.offset % 2 == 0}
        .map { $0.element }
}

print(a([1, 2, 3, 4, 5]))

func b(_ array: [String]) -> [String] {
    return array
        .enumerated()
        .filter{ $0.offset % 2 == 0}
        .map { $0.element }
}

print(b(["가", "나", "다", "라", "마"]))

func c<T>(_ array: [T]) -> [T] {
    return array
        .enumerated()
        .filter{ $0.offset % 2 == 0}
        .map { $0.element }
}

print(c([1, 2, 3, 4, 5]))
print(c(["가", "나", "다", "라", "마"]))

func d<T: Numbers>(_ array: [T]) -> [T] {
    return array
        .enumerated()
        .filter{ $0.offset % 2 == 0}
        .map { $0.element }
}


// 도전 문제 1
let myCar: HybridCar = .init(brand: "브랜드1", model: "모델1", year: "2025", engine: ElectricEngine())
myCar.switchEngine(to: HydrogenEngine())
print(myCar.engine)
