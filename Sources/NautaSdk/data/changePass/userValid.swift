//
//  changePass.swift
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

// MARK: - UserValid

public struct UserValid: Decodable, Hashable, Encodable, Sendable {
    public let param: [Param]
    public let idRequest: String
    public let captchatext: String
    public let data: NewData

    enum CodingKeys: String, CodingKey {
        case param = "param"
        case idRequest = "idRequest"
        case captchatext = "captchatext"
        case data = "data"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.param = try container.decode([Param].self, forKey: .param)
        self.idRequest = try container.decode(String.self, forKey: .idRequest)
        self.captchatext = try container.decode(String.self, forKey: .captchatext)
        self.data = try container.decode(NewData.self, forKey: .data)
    }

    public init(param: [Param], idRequest: String, captchatext: String, data: NewData) {
        self.param = param
        self.idRequest = idRequest
        self.captchatext = captchatext
        self.data = data
    }
}

public struct NewData: Decodable, Hashable, Encodable, Sendable {
    public let resultado: String

    enum CodingKeys: String, CodingKey {
        case resultado = "resultado"
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.resultado = try container.decode(String.self, forKey: .resultado)
    }
    
    public init(resultado: String) {
        self.resultado = resultado
    }
}


