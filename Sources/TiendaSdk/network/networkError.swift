//
//  networkError.swift
//  EtecsaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

public enum NetworkError: Error {
    case statusCode(status: Int)
    case jsonError(msg: String)
    case serverError(msg: String)
}
