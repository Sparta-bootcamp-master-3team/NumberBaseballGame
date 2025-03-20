//
//  RequiredTask2.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/18/25.
//

// MARK: for-in forEach
func testForInForEach() {
    print("-- for-in, map --")
    
    let numbers: [Int] = getValidArrayInput(reference: "for-in과 map의 결과값이 같은지 검사합니다.")
    var forInResult: [String] = []
    var mapResult: [String] = []
    
    // for-in
    for number in numbers {
        forInResult.append(String(number))
    }
    
    // map
    mapResult = numbers.map { String($0) }
    
    print("for-in 결과: \(forInResult)")
    print("map 결과: \(mapResult)")
    waitForEnter()
}

// MARK: higher order function
func testHighOrderFunctionChaining() {
    print("-- Higher Order Function Chaining --")
    
    let input: [Int] = getValidArrayInput(reference: "고차함수를 통해 짝수인 요소가 필터링됩니다.")
    let output = input.filter { $0 % 2 == 0 }.map { String($0) }
    
    print("input: \(input)")
    print("output: \(output)")
    waitForEnter()
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

    let input: [Int] = getValidArrayInput(reference: "정수 배열을 문자열 배열로 변환합니다.")
    let myMapResult = myMap(input) { String($0) }
    
    print("myMap result: \(myMapResult)")
    waitForEnter()
}
