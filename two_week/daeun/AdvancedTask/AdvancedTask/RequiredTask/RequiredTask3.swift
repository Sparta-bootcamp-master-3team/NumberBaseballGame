//
//  RequiredTask3.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/18/25.
//

// MARK: a
func testFilterEvenIndexedIntegers() {
    print("-- Filter Even Indexed Integers --")
    
    func a(_ array: [Int]) -> [Int] {
        return array
            .enumerated()
            .filter{ $0.offset % 2 == 0}
            .map { $0.element }
    }
    
    let input: [Int] = getValidArrayInput()
    
    print("input: \(input)")
    print("output: \(a(input))")
}

// MARK: b
func testFilterEvenIndexedStrings() {
    print("-- Filter Even Indexed Strings --")
    
    func b(_ array: [String]) -> [String] {
        return array
            .enumerated()
            .filter{ $0.offset % 2 == 0}
            .map { $0.element }
    }

    let input: [String] = getValidArrayInput()
    
    print("input: \(input)")
    print("output: \(b(input))")
}

// MARK: c
func testFilterEvenIndexedGeneric() {
    print("-- Filter Even Indexed Generic --")
    
    func c<T>(_ array: [T]) -> [T] {
        return array
            .enumerated()
            .filter{ $0.offset % 2 == 0}
            .map { $0.element }
    }
    
    let input1: [Int] = getValidArrayInput()
    print("input: \(input1)")
    print("output: \(c(input1))")
    
    let input2: [String] = getValidArrayInput()
    print("input: \(input2)")
    print("output: \(c(input2))")
}

// MARK: d
func testFilterEvenIndexedNumbersOnly() {
    print("-- Filter Even Indexed Numbers Only --")
    
    // Numbers protocol 정의
    protocol Numbers {
        var stringValue: String { get }
    }
    
    // Numbers를 준수하는 샘플 열거형 정의
    enum Roman: Numbers {
        case one, two, three
        
        var stringValue: String {
            switch self {
            case .one: return "I"
            case .two: return "II"
            case .three: return "III"
            }
        }
    }
    
    // 과제 구현부
    func d<T: Numbers>(_ array: [T]) -> [T] {
        return array
            .enumerated()
            .filter{ $0.offset % 2 == 0}
            .map { $0.element }
    }
    
    let input: [Roman] = [.one, .two, .three]
    
    print("input: \(input.map { $0.stringValue })")
    print("output: \(d(input).map { $0.stringValue}) ")
    print()
}
