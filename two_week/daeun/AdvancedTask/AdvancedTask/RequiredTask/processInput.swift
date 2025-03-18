//
//  validateInput.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/18/25.
//

import Foundation

func convertToArray<T: LosslessStringConvertible>(input: String) throws -> [T] {
    guard !input.isEmpty else { throw InputError.emptyInput }
    
    let separatedInput = input.components(separatedBy: " ")
    
    var parsedNumbers: [T] = []
    parsedNumbers.reserveCapacity(separatedInput.count)
    
    for element in separatedInput {
        guard let integer = T(element) else { throw InputError.nonValidType(expectedType: "\(T.self)") }
        parsedNumbers.append(integer)
    }
    
    return parsedNumbers
}

func getValidArrayInput<T: LosslessStringConvertible>() -> [T] {
    while true {
        print("\(T.self) 배열을 입력해주세요. 입력 형태 예시: 원소1 원소2 원소3")
        print("입력: ", terminator: "")
        
        do {
            return try convertToArray(input: readLine()!)
        } catch let error as InputError {
            print(error.errorDescription)
        } catch {
            print("예기치 않은 오류가 발생했습니다: \(error.localizedDescription)")
        }
    }
}
