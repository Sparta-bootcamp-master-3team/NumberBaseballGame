//
//  main.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

// 필수 문제 1
testRequiredTask1()


// 필수 문제 2
let numbers = [1, 2, 3, 4, 5]

var result = [String]()

numbers.forEach { number in
    result.append(String(number))
}


let input = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10]
let output = input.filter { $0 % 2 == 0 }.map { String($0) }

print(output)

func myMap(_ array: [Int], _ convert: (Int) -> String) -> [String] {
    var convertedArray: [String] = []
    convertedArray.reserveCapacity(array.count)
    array.forEach { convertedArray.append(convert($0)) }
    return convertedArray
}

let myMapResult = myMap([1, 2, 3, 4, 5]) {
    String($0)
}

print(myMapResult)


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
