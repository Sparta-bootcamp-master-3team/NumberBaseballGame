//
//  RequiredTask2.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/18/25.
//

// MARK: for-in forEach
func testForInForEach() {
    print("-- for-in ForEach --")
    
    let numbers = [1, 2, 3, 4, 5]
    var forInResult: [String] = []
    var forEachResult: [String] = []
    
    // for-in
    for number in numbers {
        forInResult.append(String(number))
    }
    
    // forEach
    numbers.forEach { forEachResult.append(String($0)) }
    
    print("for-in 결과: \(forInResult)")
    print("forEach 결과: \(forEachResult)")
    print()
}

// MARK: higher order function
func testHighOrderFunctionChaining() {
    print("-- Higher Order Function Chaining --")
    
    let input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let output = input.filter { $0 % 2 == 0 }.map { String($0) }
    
    print("input: \(input)")
    print("output: \(output)")
    print()
}

// MARK: custom higher order function
func testCreateCustomHigherOrderFunction() {
    print("-- Create Custom Higher Order Function: myMap --")
    
    // myMap 정의
    func myMap(_ array: [Int], _ convert: (Int) -> String) -> [String] {
        var convertedArray: [String] = []
        convertedArray.reserveCapacity(array.count)
        array.forEach { convertedArray.append(convert($0)) }
        return convertedArray
    }

    // 결과값
    let myMapResult = myMap([1, 2, 3, 4, 5]) {
        String($0)
    }
    
    print("myMap result: \(myMapResult)")
    print()
}
