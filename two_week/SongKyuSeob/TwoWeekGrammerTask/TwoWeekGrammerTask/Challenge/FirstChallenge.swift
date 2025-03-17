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
    var engine: Engine
    
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
        print("Car 멈..춤....")
    }
}

class ElectricCar: Car {
    override init(brand: String, model: String, modelYear: String, engine: Engine) {
        let electricEngine = ElectricEngine()
        super.init(brand: brand, model: model, modelYear: modelYear, engine: electricEngine)
    }
    
    override func drive() {
        super.drive()
        print("전기차라 소음이 적네..")
    }
}

class HybridCar: Car {
    override init(brand: String, model: String, modelYear: String, engine: Engine) {
        let hydrogenEngine = HydrogenEngine()
        super.init(brand: brand, model: model, modelYear: modelYear, engine: hydrogenEngine)
    }
    
    func switchEngine(to: Engine) {
        self.engine = to
        
        print("엔진을 변경합니다.")
    }

}

class Engine { }

class ElectricEngine: Engine { }

class HydrogenEngine: Engine { }
