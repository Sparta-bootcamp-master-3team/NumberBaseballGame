//
//  SecondQuestion.swift
//  TwoWeekGrammerTask
//
//  Created by 송규섭 on 3/17/25.
//

import Foundation

class SecondQuestion {
    
    func myMap(_ array: [Int], _ closure: (Int) -> String) -> [String] {
        let result = array.map { closure($0) }
        
        return result
    }
    
}
