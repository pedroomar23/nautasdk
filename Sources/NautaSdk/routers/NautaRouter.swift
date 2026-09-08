//
//  performResponse.swift
//
//  Copyright (c) 2026 Pedro Omar
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

enum NautaRouter {
    /// - URL Api
    private static let urlApi = "https://wwww.nauta.cu:5002"
    /// - Login
    case login(params: String)
    /// - Captcha
    case captcha
    /// - Users
    case users(token: String, lastUpdate: String)

    /// - URL
    private var url: URL {
        return URL(string: NautaRouter.urlApi + path)!
    }
    /// - Path
    private var path: String {
        switch self {
           case .login: return "/login"
           case .captcha: return "/captcha/captcha"
           case .users: return "/users"
        }
    }
    /// - HTTP Method
    /// - GET
    /// - POST
    private var httpMethod: String {
        switch self {
            case .login: return "POST"
            case .captcha: return "GET"
            case .users: return "POST"
        }
    }
    /// - Parameters
    private var parameters: Data? {
        switch self {
            case .login(let param): return param.data(using: .utf8)
            case .captcha: return nil
            case .users(_, let token): return token.data(using: .utf8)
        }
    }
    /// - URLRequest Protocol
    func urlRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")

        if let parameters = parameters {
            urlRequest.httpBody = parameters
        }

        return urlRequest
    }
}
