//
//  FirstQuestion.swift
//  TwoWeekGrammerTask
//
//  Created by 송규섭 on 3/17/25.
//

import Foundation

class FirstQuestion {
    
    let sum = { (a: Int, b: Int) -> String in
        return "두 수의 합은 \(a + b)입니다"
    }
    
    func calculate(num1: Int, num2: Int, closure: (_ a: Int, _ b: Int) -> String) -> Void {
        print(closure(num1, num2))
    }
    
}
