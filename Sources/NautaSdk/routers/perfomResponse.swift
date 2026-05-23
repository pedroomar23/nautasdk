//
//  performResponse.swift
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
import os.log

class Network: @unchecked Sendable {
    /// - Singlenton Patron
    static let shared = Network()
    /// - Log Debug
    private let logger = Logger()
    /// - URLSesion Protocol 
    private let session: URLSession = {
        let delegate = SesionDelegate.shared
        let configuration = URLSessionConfiguration.default
        configuration.httpCookieStorage = HTTPCookieStorage.shared
        configuration.timeoutIntervalForRequest = 10
        return URLSession(configuration: configuration, delegate: delegate, delegateQueue: nil)
    }()
    
    func sendResponse<T: Codable>(router: NautaRouter, type: T.Type, completion: @escaping (Result<T, Error>) -> Void) async {
        do {
            let (data, response) = try await session.data(for: router.urlRequest())
            
            if let httpResponse = response as? HTTPURLResponse {
                logger.debug("✅ DEBUG: STATUS CODE RESPONSE \(httpResponse.statusCode)")
                
                if let jsonData = String(data: data, encoding: .utf8) {
                    logger.debug("✅ DEBUG: SERVER RESPONSE \(jsonData)")
                } else {
                    logger.error("❌ DEBUG: SERVER FAILURE RESPONSE")
                }
                
                switch httpResponse.statusCode {
                case 200:
                    let t = try JSONDecoder().decode(T.self, from: data)
                    print("✅ DEBUG: JSON RESPONSE SUCCESS \(t)")
                    completion(.success(t))
                case 400:
                    logger.error("❌ DEBUG: SERVER FAILURE RESPONSE \(NetWorkError.statusCode(code: httpResponse.statusCode))")
                    completion(.failure(NetWorkError.statusCode(code: httpResponse.statusCode)))
                default:
                    logger.error("❌ DEBUG: SERVER FAILURE RESPONSE \(NetWorkError.statusCode(code: httpResponse.statusCode))")
                    completion(.failure(NetWorkError.statusCode(code: httpResponse.statusCode)))
                }
            } else {
                logger.error("❌ DEBUG: SERVER FAILURE RESPONSE")
            }
        } catch {
            completion(.failure(error))
        }
    }
}
