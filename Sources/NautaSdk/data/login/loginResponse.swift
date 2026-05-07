//
//  loginResponse.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

// MARK: - Login Response

public struct LoginResponse: Decodable, Hashable, Encodable, Sendable {
    public let resp: Resp
    
    enum CodingKeys: String, CodingKey {
        case resp = "resp"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.resp = try container.decode(Resp.self, forKey: .resp)
    }
    
    public init(resp: Resp) {
        self.resp = resp
    }
}

// MARK: - Resp

public struct Resp: Decodable, Hashable, Encodable, Sendable {
    public let user: User
    
    enum CodingKeys: String, CodingKey {
        case user = "user"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.user = try container.decode(User.self, forKey: .user)
    }
    
    public init(user: User) {
        self.user = user
    }
}
