//
//  loginRequest.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
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
