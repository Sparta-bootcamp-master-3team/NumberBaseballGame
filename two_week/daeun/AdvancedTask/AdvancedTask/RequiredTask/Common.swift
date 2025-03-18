//
//  Common.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/18/25.
//
import Foundation

func waitForEnter() {
    print("\n[Enter 키를 눌러 다음 테스트로 진행...]")
    _ = readLine()
}

func convertToArray<T: LosslessStringConvertible>(input: String) throws -> [T] {
    guard !input.isEmpty else { throw InputError.emptyInput }
    
    // 입력 파싱
    let parsedInput = input.components(separatedBy: " ")
    
    // 타입이 String이면 parsedInput를 다운캐스팅하여 반환
    if String.self == T.self { return parsedInput as! [T] }
    
    // T 타입으로 변환된 값을 저장할 array 선언
    var array: [T] = []
    array.reserveCapacity(parsedInput.count)
    
    // parsedInput의 각 요소들을 T로 변환, 변환이 불가능한 요소가 발견되면 에러를 던짐
    for element in parsedInput {
        guard let integer = T(element) else { throw InputError.nonValidType(expectedType: "\(T.self)") }
        array.append(integer)
    }
    
    return array
}

func getValidArrayInput<T: LosslessStringConvertible>(reference: String? = nil) -> [T] {
    print("\(T.self) 배열을 입력해주세요. 입력 형태 예시: 원소1 원소2 원소3")
    if let reference { print("참고: \(reference)") }
    
    // 사용자의 입력을 T배열로 변환하는데 성공할 때까지 입력 요구
    while true {
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

