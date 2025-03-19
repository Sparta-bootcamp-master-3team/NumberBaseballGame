//
//  ChallengeProblem.swift
//  GrammarProblems
//
//  Created by 조선우 on 3/19/25.
//

import Foundation

class Engine {
    func engineType() { print("가솔린") }
}

class ElectricEngine: Engine {
    override func engineType() { print("전기") }
}

class HybridEngine: Engine {
    override func engineType() { print("하이브리드") }
}

class Car {
    let brand: String
    let model: String
    let year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    func drive() {
        print("\(brand) \(model) 주행 중...")
    }
    
    func stop() {
        print("\(brand) \(model) 멈춤")
    }
    
    func charge() {
        print("\(brand) \(model) 충전 중..")
    }
    
    func refuel() {
        print("\(brand) \(model) 주유 중..")
    }
}

class ElectricCar: Car {
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
}

class HybridCar: Car {
    init(brand: String, model: String, year: String, engine: HybridEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    
    func switchEngine(to otherEngine: Engine) {
        self.engine = otherEngine
    }
}

let myCar = HybridCar(brand: "KIA", model: "K5", year: "2015", engine: HybridEngine())

func printChallengeProblem() {
    myCar.drive()
    myCar.engine.engineType()

    myCar.switchEngine(to: ElectricEngine())
    myCar.engine.engineType()
}
