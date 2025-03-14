# 🔢⚾️ NumberBaseballGame 🎮
## 소개
> 숫자 야구 게임은 컴퓨터가 랜덤으로 숫자 3자리를 받으면, 사용자가 **3자리의 숫자**를 맞히는 게임이다.  
각 자리의 숫자와 위치가 모두 맞으면 '스트라이크', 숫자만 맞고 위치가 다르면 '볼'로 판정된다.  
예를 들어, 상대방의 숫자가 123일 때 132를 추리하면 1스트라이크 2볼이 된다.  
이러한 힌트를 활용하여 컴퓨터의 숫자를 추리해 나가는 게임이다.
## 기술
- 개발환경: Xcode, macOS, Command Line Tool
- 언어: Swift
## 기능
- 프로그램을 실행하면 안내문구가 나온다.
> <img width="314" alt="스크린샷 2025-03-14 오전 1 35 06" src="https://github.com/user-attachments/assets/91406fb3-208a-4c48-a205-8c6955d3e4c0" />

- 처음 실행했을 때 숫자 2를 입력하면 이전 기록이 없기 때문에 **시작하지 않음**을 출력한다.
> <img width="312" alt="스크린샷 2025-03-14 오전 1 43 50" src="https://github.com/user-attachments/assets/efe20aad-0ac6-4a8d-a9fe-72518b03c277" />

- 숫자 1을 입력하면 컴퓨터가 랜덤한 값 3자리를 정하고, 사용자에게 **숫자 입력**을 출력한다.
> <img width="306" alt="스크린샷 2025-03-14 오전 1 47 51" src="https://github.com/user-attachments/assets/a1f83183-7f27-4a1f-97a1-b36c8acad8c2" />

- 오직 서로 다른 숫자 3자리만 입력받아서 숫자 3자리가 아니거나 앞자리가 0이 오거나 중복된 숫자가 있으면 **다시 입력**을 출력한다.
> <img width="190" alt="스크린샷 2025-03-14 오전 1 54 50" src="https://github.com/user-attachments/assets/2efcf8da-c9b2-453f-b876-a92911c5eca3" /> <img width="189" alt="스크린샷 2025-03-14 오전 1 54 57" src="https://github.com/user-attachments/assets/a06e2b8b-5989-4560-9a26-aabb26d5744f" /> <img width="186" alt="스크린샷 2025-03-14 오전 1 55 06" src="https://github.com/user-attachments/assets/b0493704-b629-4320-8f04-d71dcb437531" />

- 랜덤 값과 입력 값이 같은 위치에 같은 값이 있으면 **스트라이크**, 같은 위치는 아니지만 같은 값이 있으면 **볼**, 같은 값이 아예 없으면 **Nothing**을 출력한다.
> <img width="139" alt="스크린샷 2025-03-14 오전 1 54 10" src="https://github.com/user-attachments/assets/d0733e21-c8d4-4fad-ae6b-f35096cc567b" /> <img width="136" alt="스크린샷 2025-03-14 오전 1 52 23" src="https://github.com/user-attachments/assets/b8c9582c-07e7-4942-be34-3b61bfc7ac39" />

- 정답이 나올 때까지 계속 반복한다.
- 랜덤 값과 입력 값이 3자리 모두 같은 위치에 같은 값이 있으면 **정답**을 출력하고 안내문구로 돌아간다.
> <img width="136" alt="스크린샷 2025-03-14 오전 1 52 52" src="https://github.com/user-attachments/assets/6db8d0ba-a853-48e6-8e7d-18ea74f6c157" />

- 몇 번의 게임 실행 후, 안내문구에서 2번을 입력하면 몇 번째 게임인지 몇 번 시도했는지 게임 기록을 출력한다.
> <img width="306" alt="스크린샷 2025-03-14 오전 1 56 17" src="https://github.com/user-attachments/assets/345bbdb2-d943-483a-87ea-36f51c7c9208" />

- 안내문구에서 1, 2, 3번을 제외한 다른 값을 입력하게 되면 **다시 입력**하라는 안내가 출력된다.
> <img width="312" alt="스크린샷 2025-03-14 오전 2 13 32" src="https://github.com/user-attachments/assets/78fa4927-014c-4186-b482-ed019bef2a8e" />

- 안내문구에서 3번을 입력하면 게임이 종료된다.
> <img width="305" alt="스크린샷 2025-03-14 오전 1 56 33" src="https://github.com/user-attachments/assets/df5fc2b0-bc89-4b1c-839f-28aeeb5c0652" />

## 프로젝트 구조
```
BaseballGame/
│── RandomValue.swift   (랜덤 값 생성)
│── InputValue.swift    (사용자 입력 처리)
│── RecordManager.swift (게임 기록 관리)
│── BaseballGame.swift  (게임 실행 로직)
│── HintCompare.swift   (랜덤 값 사용자 값 비교)
│── main.swift          (프로그램 실행)
```
