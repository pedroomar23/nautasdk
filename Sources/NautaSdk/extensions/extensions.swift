//
//  extensions.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

protocol NetworkFailure: Error {
    func didError(error: String)
    func didMessage(msg: String)
}
