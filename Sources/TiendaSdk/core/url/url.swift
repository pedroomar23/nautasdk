//
//  url.swift
//  EtecsaSdk
//
//  Created by Pedro Omar  on 2/13/26.
//

import Foundation

enum EndpointUrl {
    static let urlApi = "https://tienda.etecsa.cu"
    
    case banner
    
    var path: String {
        switch self {
        case .banner: return ""
        }
    }
    
    var url: URL {
        return URL(string: EndpointUrl.urlApi + path)!
    }
}
