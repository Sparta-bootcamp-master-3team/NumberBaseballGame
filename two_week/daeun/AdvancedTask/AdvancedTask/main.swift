//
//  main.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/17/25.
//

import Foundation

let sum: (Int, Int) -> String = { "두 수의 합은 \($0 + $1)입니다." }

print(sum(1, 2))
