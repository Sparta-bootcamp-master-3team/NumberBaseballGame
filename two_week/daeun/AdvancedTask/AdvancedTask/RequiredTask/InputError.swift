//
//  InputError.swift
//  AdvancedTask
//
//  Created by 곽다은 on 3/18/25.
//

enum InputError: Error {
    case emptyInput
    case nonValidType(expectedType: String)
    
    var errorDescription: String {
        switch self {
        case .emptyInput:
            return "입력값이 비어있습니다."
        case .nonValidType(let expectedType):
            return "구분용 띄어쓰기 외 \(expectedType)만 입력해야합니다."
        }
    }
}
