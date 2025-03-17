//
//  FirstChallenge.swift
//  TwoWeekGrammerTask
//
//  Created by 송규섭 on 3/17/25.
//

import Foundation

class Car {
    let brand: String
    let model: String
    let modelYear: String
    let engine: Engine
    
    init(brand: String, model: String, modelYear: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.modelYear = modelYear
        self.engine = engine
    }
    
    func drive() {
        print("Car 주행 중...")
    }
    
    func stop() {
        print("멈춰 !")
    }
}

class Engine {
    
}
