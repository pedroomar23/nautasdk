//
//  nautaUrl.swift
//  NautaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

enum EndpointUrl {
    static let urlApi = "https://www.nauta.cu:5002"
    
    case login
    case captcha
    case users
    case register
    
    var path: String {
        switch self {
        case .login: return ""
        case .captcha: return ""
        case .users: return ""
        case .register: return ""
        }
    }
    
    var url: URL {
        return URL(string: EndpointUrl.urlApi + path)!
    }
}
