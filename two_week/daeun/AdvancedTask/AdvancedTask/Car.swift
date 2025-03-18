//
//  Car.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

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
