//
//  main.swift
//  TwoWeekGrammerTask
//
//  Created by 송규섭 on 3/17/25.
//

import Foundation

// MARK: - 필수 문제 1
let firstQuestion = FirstQuestion()

print(firstQuestion.sum(3, 7))
firstQuestion.calculate(num1: 10, num2: 5) { a, b in
    return "두 수의 합은 \(a + b)입니다"
}

// MARK: - 필수 문제 2
let secondQuestion = SecondQuestion()

print(secondQuestion.myMap([1, 2, 3, 4, 5], { String($0) }))

// MARK: - 필수 문제 3
let thirdQuestion = ThirdQuestion()

print(thirdQuestion.removeEvenNum([1, 2, 3, 4, 5]))
print(thirdQuestion.removeEvenString(["가", "나", "다", "라", "마"]))
print(thirdQuestion.removeEven([1,2,3,4,5,6,7]))
print(thirdQuestion.removeEven(["가", "나", "다", "라", "마", "바", "사"]))

let intExample: [Int] = [ 1, 7, 5, 3, 9, 2 ]
let filteredInts = thirdQuestion.removeEvenWithNumeric(intExample)
print(filteredInts)

let doubleExample: [Double] = [1.1, 7.14, 5.13, 3.14, 9.11, 2.164]
let filteredDoubles = thirdQuestion.removeEvenWithNumeric(doubleExample)
print(filteredDoubles)

let floatExample: [Float] = [3.1, 1.1, 2.1, 5.1, 4.1, 9.1]
let filteredFloats = thirdQuestion.removeEvenWithNumeric(floatExample)
print(filteredFloats)

// MARK: - 도전 문제 1

let engine = Engine()
let car = Car(brand: "Hyundai", model: "Genesis G80", modelYear: "2020", engine: engine)
car.drive()

let electricEngine = ElectricEngine()
let eletricCar = ElectricCar(brand: "Tesla", model: "Tesla Model S", modelYear: "2013", engine: electricEngine)
eletricCar.drive()

let hydrogenEngine = HydrogenEngine()
let hybridCar = HybridCar(brand: "Mercedes-Benz", model: "S-class", modelYear: "2020", engine: hydrogenEngine)
hybridCar.switchEngine(to: electricEngine)

/*
 
 상속을 사용하여 기능을 추가하게 되면 상속의 특징을 이용해 다양한 형태로 바꿀 수 있는 유연함이 있고 단점은 개인적으로 프로토콜과 비교해서 찾진 못하겠다.
 프로토콜의 경우 일종의 틀을 주게 되어 일관성을 줄 수 있는데 해당 부분은 클래스에서도 구현 가능한 부분이라 솔직히 각자 가지는 뚜렷한 장단점에 대해 서술하기 어렵다고 생각한다.
 
 해당 부분에 한해서 클로드에 물어봤는데,
 상속의 경우 부모 클래스의 기능을 자식 클래스가 모두 물려받아 사용할 수 있기에 코드 재사용성이 좋고 기능 확장 및 수정에 용이하다. 그러나, 부모 자식 클래스 간 강한 결합으로 변경에 취약하며 클래스는 다중 상속을 지원하지 않아 여러 클래스의 기능을 동시에 상속받을 수 없다. 계층이 생기기에 유지보수에도 어려움이 생긴다.
 프로토콜의 경우 구현 세부사항과 분리되어 유연성이 높으며 동시 채택이 가능해 조합이 자유롭고 클래스뿐만 아니라 구조체 및 열거형에서도 사용가능하다는 장점이 있는 반면, 각 타입마다 프로토콜을 개별적으로 구현해야 해서 코드 중복이 발생할 수 있으며 여러 프로토콜을 채택할 경우 요구사항 충족 관리가 복잡해질 수 있다는 단점이 있다.
 
 */
