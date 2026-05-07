//
//  captcha.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

// MARK: - Captcha

public struct Captcha: Decodable, Hashable, Encodable, Sendable {
    public let text: String
    public let data: String
    
    enum CodingKeys: String, CodingKey {
        case text, data
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.text = try container.decode(String.self, forKey: .text)
        self.data = try container.decode(String.self, forKey: .data)
    }
    
    public init(text: String, data: String) {
        self.text = text
        self.data = data
    }
}
