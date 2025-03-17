//
//  Problem4.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

private class Engine {
    var engineType: String {
        return "일반"
    }
}

private class Car {
    let brand: String
    let model: String
    let year: String
    let engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    func drive() {
        print("\(brand) \(model) 주행중")
    }
}
