//
//  router.swift
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

enum Router {
    private static let urlApi = ""
    case datos
    case banner

    private var url: URL {
        return URL(string: Router.urlApi)!
    }

    private var path: String {
        switch self {
            case .datos: return ""
            case .banner: return ""
        }
    }

    private var httpsMethod: String {
        switch self {
            case .datos: return ""
            case .banner: return ""
        }
    }

    private var parameters: Data? {
        switch self {
            case .datos: return nil
            case .banner: return nil
        }
    }

    func urlRequest() -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = httpsMethod
        return request
    }
}
