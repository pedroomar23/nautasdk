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
    public let token: String
    public let resultado: String
    
    enum CodingKeys: String, CodingKey {
        case user = "user"
        case token = "token"
        case resultado = "resultado"
    }
    
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.user = try container.decode(User.self, forKey: .user)
        self.token = try container.decode(String.self, forKey: .token)
        self.resultado = try container.decode(String.self, forKey: .resultado)
    }
    
    public init(user: User, token: String, resultado: String) {
        self.user = user
        self.token = token
        self.resultado = resultado
    }
}

