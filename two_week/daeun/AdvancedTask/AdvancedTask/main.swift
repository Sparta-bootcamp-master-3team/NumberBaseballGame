//
//  main.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

// 필수 문제 1
testCalculate()

// 필수 문제 2
testForInForEach()
testHighOrderFunctionChaining()
testCreateCustomHigherOrderFunction()


// 필수 문제 3
testFilterEvenIndexedIntegers()
testFilterEvenIndexedStrings()
testFilterEvenIndexedGeneric()
testFilterEvenIndexedNumbersOnly()


// 도전 문제 1
testSwitchEngine()

/* 서술형
 상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 장단점, 차이를 고민하고 주석으로 서술해주세요.
 
 1. 상속
 - 장점: 부모 클래스에서 이미 구현되어 있는 메서드와 속성을 그대로 사용할 수 있다.
 - 단점: 다중 상속이 불가능하다.
 - 단점: 부모 클래스에 강하게 의존하기 떄문에 상속 계층이 깊어지면 유지보수가 어려워질 수 있다.
 
 2. 프로토콜 채택
 - 단점: 채택하는 클래스에서 구현을 모두 직접 해야한다. -> 프로토콜 확장으로 기본 구현을 제공해 중복코드를 줄일 수 있다.
 - 장점: 다중 채택이 가능하다.
 - 장점: 느슨한 결합으로 특정 클래스가 구체적인 구현체에 의존하지 않고 프로토콜을 통해 상호작용하여 유지보수에 용이하다.g
 */
