//
//  ThirdQuestion.swift
//  TwoWeekGrammerTask
//
//  Created by 송규섭 on 3/17/25.
//

import Foundation

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
    
}
