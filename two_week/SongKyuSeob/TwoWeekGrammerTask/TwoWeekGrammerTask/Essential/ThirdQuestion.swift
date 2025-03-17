//
//  ThirdQuestion.swift
//  TwoWeekGrammerTask
//
//  Created by 송규섭 on 3/17/25.
//

import Foundation

protocol Numbers {
    var intValue: Int? { get }
}

class ThirdQuestion {
    
    func removeEvenNum(_ array: [Int]) -> [Int] {
        var result: [Int] = []
        
        for i in 1...array.count {
            // 홀수 요소를 따로 빼도록 하여 기존 요소 중 짝수만 없도록 처리
            if i % 2 != 0 {
                result.append(array[i-1])
            }
        }
        
        return result
    }
    
    func removeEvenString(_ array: [String]) -> [String] {
        var result: [String] = []
        
        for i in 1...array.count {
            if i % 2 != 0 {
                result.append(array[i-1])
            }
        }
        
        return result
    }
    
    // 위 함수들을 제네릭을 이용해 타입을 유연하게 하여 하나의 함수로 대체
    func removeEven<T> (_ array: [T]) -> [T] {
        
        guard !array.isEmpty else {
            print("빈 배열이 입력되었습니다") // 빈 배열에 대한 예외 처리 1
            return []
        }
        
        var result: [T] = []
        
        for i in 1...array.count {
            guard i-1 < array.count else {
                print("배열 인덱스 범위를 초과했습니다.")
                break
            }
            
            if i % 2 != 0 {
                result.append(array[i-1])
            }
        }
        
        return result
    }
    
    func removeEvenWithNumbers<T: Numbers> (_ array: [T]) -> [T] {
        
        guard !array.isEmpty else {
            print("빈 배열이 입력되었습니다")
            return []
        }
        
        let result = array.enumerated().compactMap { (index, element) in
            return index % 2 == 0 ? element : nil
        }
        
        return result
    }
    
    func printNumbers(numbers: [Numbers]) {
        let values = numbers.compactMap { $0.intValue }
        
        print(values)
    }
    
}

struct Number<T>: Numbers {
    
    var num: T?
    
    var intValue: Int? { // Float, Double의 실수도 정수로 반환
        if let doubleValue = num as? Double {
            return Int(doubleValue)
        } else if let floatValue = num as? Float {
            return Int(floatValue)
        } else if let intValue = num as? Int {
            return intValue
        }
        return nil // 그 외 String 같은 상황이 올 때 nil 반환 (예외 처리 2)
    }
    
}
