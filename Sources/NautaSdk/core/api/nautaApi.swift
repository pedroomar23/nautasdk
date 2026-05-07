//
//  nautaApi.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation
import os.log

public class NautaApi: @unchecked Sendable {
    public static let shared = NautaApi()
    private let logger = Logger()
    private let session: URLSession = {
        let delegate = SesionDelegate.shared
        let configuration = URLSessionConfiguration.default
        configuration.httpCookieStorage = HTTPCookieStorage.shared
        configuration.timeoutIntervalForRequest = 10
        return URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
    }()
    
    // MARK: - Login
    
    // MARK: - Captcha
    
    // MARK: - Users
}
