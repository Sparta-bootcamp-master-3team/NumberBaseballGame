# GrammarProblems
## 소개
> 심화 문법 주차 개인 과제로 필수 문제 3문제와 도전 문제 1문제를 구현했다. 요구사항에 맞게 알맞은 문법을 사용해서 구현했다.
## 기술
- 개발환경: Xcode, macOS, Command Line Tool
- 언어: Swift
## 요구사항
### 필수 문제 1번
- 두 개의 Int 값을 파라미터로 받고 하나의 String 값을 반환하는 클로저를 설계해주세요. 
- 클로저 내부에서는 두 정수를 더한 후, "두 수의 합은 {합계} 입니다"라는 문자열을 반환합니다.
- 위에서 정의한 sum과 동일한 타입의 클로저를 파라미터로 받고, 반환 값이 없는(void) 함수 calculate를 작성해주세요.
- (조건) calculate 함수 구현 내에서는 파라미터로 전달받은 클로저를 호출하는 코드를 포함해야합니다.
> ![스크린샷 2025-03-19 오후 5 59 27](https://github.com/user-attachments/assets/1d1bad1b-6814-4534-a499-d45f73bba624)
### 필수 문제 2번
- map 을 사용하여 정수 배열값을 입력값으로 받아서 문자열 배열값으로 출력하는 코드로 변환해주세요.
- filter, map을 사용해서 정수 배열값을 입력값으로 받아서 문자열 배열값으로 출력하는 코드로 변환해주세요
- map과 비슷한 역할을 하는 고차함수 myMap을 커스텀해서 만들어주세요.
> ![스크린샷 2025-03-19 오후 5 59 40](https://github.com/user-attachments/assets/785dbf10-6cd6-4fc6-afcd-ad8a89e8b73d)
### 필수 문제 3번
- Int 배열의 짝수번째 요소를 제거해서 반환하는 함수 a 를 작성해주세요.
- String 배열의 짝수번째 요소를 제거해서 반환하는 함수 b 를 작성해주세요.
- 위 두 함수를 하나의 함수로 대체할 수 있는 방법을 고민해보고, 함수 c 로 작성해주세요. (제네릭 사용)
- 함수 c 를 기반으로 수정하여 함수 d 를 작성해주세요. 파라미터의 타입을 << 'Numeric 프로토콜'을 준수하는 타입의 요소를 가진 배열 >> 로 변경합니다. 
> ![스크린샷 2025-03-19 오후 5 59 49](https://github.com/user-attachments/assets/4e43853a-3c13-4ddb-8fdf-06d5bf413a8c)
### 도전 문제
- Base Class Car 를 설계해주세요.
  - 4가지의 상태를 정의해주세요.
    - 브랜드, 모델, 연식
        - 모두 String 타입입니다.
    - 엔진
        - Engine 이라는 커스텀 타입으로 정의해주세요.
- Car 를 상속한 ElectricCar 를 설계해주세요.
    - ElectricEngine 타입의 Engine 을 사용해야합니다.
- Car 를 상속한 HybridCar 를 설계해주세요.
    - 새로운 엔진 타입 HydrogenEngine 을 정의해주세요.
    - HybridCar 에는 기존 Car 에 없던 새로운 동작이 추가됩니다.
        - 엔진을 런타임에 바꿀 수 있는 switchEngine(to:) 입니다.
- HybridCar 인스턴스를 생성하고, switchEngine(to:) 를 호출하여 서로 다른 타입의 엔진으로 교체하는 코드를 작성해주세요.
> ![스크린샷 2025-03-19 오후 5 59 58](https://github.com/user-attachments/assets/e6b0f088-a125-485a-b21b-8fb4ddc7386f)
## 프로젝트 구조
```
GrammarProblems/
│── Challenge
│       └── ChallengeProblem.swift
│── Essential
│       │── Problem1.swift
│       │── Problem2.swift
│       └── Problem3.swift
└── main.swift  
```
