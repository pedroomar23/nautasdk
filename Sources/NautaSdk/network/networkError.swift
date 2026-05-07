//
//  networkError.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

public enum NetWorkError: Error {
    case statusCode(code: Int)
    case jsonError(msg: String)
    case serverError(msg: String)
}
