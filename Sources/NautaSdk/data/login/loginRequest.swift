//
//  loginRequest.swift
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

// MARK: - Login Request

public struct LoginRequest: Decodable, Hashable, Encodable, Sendable {
    public var username, password, tipoCuenta: String
    public var idRequest: String
    public var captchatext: String
    
    enum CodingKeys: String, CodingKey {
        case username, password, tipoCuenta
        case idRequest
        case captchatext
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.username = try container.decode(String.self, forKey: .username)
        self.password = try container.decode(String.self, forKey: .password)
        self.tipoCuenta = try container.decode(String.self, forKey: .tipoCuenta)
        self.idRequest = try container.decode(String.self, forKey: .idRequest)
        self.captchatext = try container.decode(String.self, forKey: .captchatext)
    }
    
    public init(username: String, password: String, tipoCuenta: String, idRequest: String, captchatext: String) {
        self.username = username
        self.password = password
        self.tipoCuenta = tipoCuenta
        self.idRequest = idRequest
        self.captchatext = captchatext
    }
}
