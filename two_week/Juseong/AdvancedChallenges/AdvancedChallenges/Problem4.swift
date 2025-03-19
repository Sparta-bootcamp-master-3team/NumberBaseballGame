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

private enum EngineSwitchError: Error {
    case sameEngineType
}

private class HybridCar: Car {
    init(brand: String, model: String, year: String, engine: HydrogenEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    
    func switchEngine(to newEngine: Engine) throws {
        if self.engine.engineType == newEngine.engineType {
            throw EngineSwitchError.sameEngineType
        } else {
            print("엔진 변경 성공: \(self.engine.engineType) -> \(newEngine.engineType)")
            self.engine = newEngine
        }
    }
}

// MARK: 인스턴스 생성
private let hybridCar = HybridCar(brand: "현대", model: "제네시스", year: "25년", engine: HydrogenEngine())

func problem4Result() {
    print("도전 문제 1")
    print("변경 전 엔진 - \(hybridCar.engine.engineType)")
    hybridCarEngineSwitching(of: hybridCar, to: HydrogenEngine())
    hybridCarEngineSwitching(of: hybridCar, to: ElectricEngine())
    print("변경 후 엔진 - \(hybridCar.engine.engineType)")
}

private func hybridCarEngineSwitching(of hybridCar: HybridCar, to engine: Engine) {
    do {
        try hybridCar.switchEngine(to: engine)
    } catch {
        print("엔진 변경 실패: 변경할 엔진이 같습니다.")
    }
}

// MARK: 상속과 프로토콜
/**
1. 상속
장점:
 - 상속을 통해 코드가 재사용되기 때문에 생산성이 높아진다.
 - 오버라이딩을 통해 필요한 부분만 수정하여 세부 기능을 쉽게 수정할 수 있다.
단점:
 - 하나의 클래스만 상속이 가능하여 다중 상속이 불가능하다.
 - 클래스에서만 사용할 수 있다.
 
2. 프로토콜
장점:
 - 여러개의 프로토콜을 채택하여 유연하게 기능을 조합할 수 있다.
 - 모든 타입에서 채택 가능하다.
단점:
 - 기본 구현이 없는 경우 각 타입에서 모든 요구사항을 직접 구현해야 한다.
 - 지나치게 많은 프로토콜로 분리하면 가독성과 유지보수가 복잡해질 수 있다.
**/
