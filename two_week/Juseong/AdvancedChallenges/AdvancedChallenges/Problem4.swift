//
//  Problem4.swift
//  AdvancedChallenges
//
//  Created by 박주성 on 3/17/25.
//

import Foundation

// MARK: Engine
private class Engine {
    var engineType: String {
        return "일반"
    }
}

private class ElectricEngine: Engine {
    override var engineType: String {
        return "전기"
    }
}

private class HydrogenEngine: Engine {
    override var engineType: String {
        return "수소"
    }
}

// MARK: Car
private class Car {
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
        print("\(brand) \(model) 주행중")
    }
}

private class ElectricCar: Car {
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
}

private class HybridCar: Car {
    init(brand: String, model: String, year: String, engine: HydrogenEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    
    func switchEngine(to newEngine: Engine) {
        self.engine = newEngine
    }
}

// MARK: 인스턴스 생성
private let hybridCar = HybridCar(brand: "현대", model: "제네시스", year: "25년", engine: HydrogenEngine())

func problem4Result() {
    print("도전 문제 1")
    print("변경 전 엔진 - \(hybridCar.engine.engineType)")
    hybridCar.switchEngine(to: ElectricEngine())
    print("변경 후 엔진 - \(hybridCar.engine.engineType)")
}
