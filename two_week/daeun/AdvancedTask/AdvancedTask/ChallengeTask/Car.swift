//
//  Car.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

// MARK: Car
class Car {
    var brand: String
    var model: String
    var year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
    }
    
    func drive() {
        print("Car 주행 중...🚙💨💨")
    }
    
    func stop() {
        print("Car 멈춤! 🛑")
    }
}

// MARK: ElectricCar
final class ElectricCar: Car {
    init(brand: String, model: String, year: String, engine: ElectricEngine) {
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
}

// MARK: HybridCar
final class HybridCar: Car {
    func switchEngine(to engine: Engine) {
        self.engine = engine
    }
}

// MARK: - test function
func testSwitchEngine() {
    print("-- switchEngine(to:): Electric engine -> Hydrogen engine --")
    
    let myCar: HybridCar = .init(brand: "브랜드1", model: "모델1", year: "2025", engine: ElectricEngine())
    print("before switch: \(myCar.engine)")
    
    myCar.switchEngine(to: HydrogenEngine())
    print("after switch: \(myCar.engine)")
    
    print()
}
