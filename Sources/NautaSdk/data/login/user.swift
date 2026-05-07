//
//  user.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

// MARK: - User

public struct User: Decodable, Hashable, Encodable, Sendable {
    public let cliente: Cliente
    
    enum CodingKeys: String, CodingKey {
        case cliente = "cliente"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cliente = try container.decode(Cliente.self, forKey: .cliente)
    }
    
    public init(cliente: Cliente) {
        self.cliente = cliente
    }
}
