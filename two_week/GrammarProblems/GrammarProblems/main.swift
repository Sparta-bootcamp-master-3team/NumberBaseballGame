//
//  main.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/18/25.
//

import Foundation

var inputNumbers = [1, 2, 3, 4, 5]
var inputWords = ["가", "나", "다", "라", "마"]

// MARK: P1
let sum: (Int, Int) -> String = { (num1, num2) in
    return "두 수의합은 \(num1 + num2) 입니다."
}

func calculate(closure: (Int, Int) -> String) {
    print(closure(20, 30))
}

print(sum(10, 20))

calculate(closure: sum)

// MARK: P2
var result = inputNumbers.map { String($0) }
print(result)

var input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var output = input.filter { $0 % 2 == 0 }.map { String($0) }
print(output)

func myMap(_ array: [Int], _ conversion: (Int) -> String) -> [String] {
    var myResult = [String]()
    
    for i in array {
        myResult.append(conversion(i))
    }
    
    return myResult
}

let myConversion = myMap(inputNumbers) { String($0) }
print(myConversion)

// MARK: P3
func a(numbers: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<numbers.count {
        i % 2 == 0 ? result.append(numbers[i]) : ()
    }
    
    return result
}

let resultA = a(numbers: inputNumbers)
print(resultA)

func b(words: [String]) -> [String] {
    var result = [String]()
    
    for i in 0..<words.count {
        i % 2 == 0 ? result.append(words[i]) : ()
    }
    
    return result
}

let resultB = b(words: inputWords)
print(resultB)

func c<T>(something: [T]) -> [T] {
    var result = [T]()
    
    for i in 0..<something.count {
        i % 2 == 0 ? result.append(something[i]) : ()
    }
    
    return result
}

let resultCNumbers = c(something: inputNumbers)
print(resultCNumbers)
let resultCWords = c(something: inputWords)
print(resultCWords)

func d<T: Numeric>(something: [T]) -> [T] {
    var result = [T]()
    
    for i in 0..<something.count {
        i % 2 == 0 ? result.append(something[i]) : ()
    }
    
    return result
}

let resultD = d(something: inputNumbers)
print(resultD)

// MARK: Challenge Problem
class Engine { }
class ElectricEngine: Engine { }
class HybridEngine: Engine { }

class Car {
    let brand: String
    let model: String
    let year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    func drive() {
        print("\(brand) \(model) 주행 중...")
    }
    
    func stop() {
        print("\(brand) \(model) 멈춤")
    }
    
    func charge() {
        print("\(brand) \(model) 충전 중..")
    }
    
    func refuel() {
        print("\(brand) \(model) 주유 중..")
    }
}

class ElectricCar: Car {
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
}

class HybridCar: Car {
    init(brand: String, model: String, year: String, engine: HybridEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    
    func switchEngine(to otherEngine: Engine) {
        self.engine = otherEngine
    }
}

let myCar = HybridCar(brand: "KIA", model: "K5", year: "2015", engine: HybridEngine())
myCar.drive()

