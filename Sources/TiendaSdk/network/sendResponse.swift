//
//  sendResponse.swift
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

class Response: @unchecked Sendable {
    static let shared = Response()
    let logger = Logger()
    let session: URLSession = {
      let configuration = URLSessionConfiguration.default
      configuration.httpCookieStorage = HTTPCookieStorage.shared
      configuration.timeoutIntervalForRequest = 10
      return URLSession(configuration: configuration)
    }()

    func sendResponse<T: Codable>(
        router: Router, type: T.Type, completion: @escaping (Result<T, Error>
    ) -> Void) async throws {
        do {
            let (data, response) = try await session.data(for: router.urlRequest())

            if let httpResponse = response as? HTTPURLResponse {
                self.logger.debug("✅ DEBUG: STATUS RESPONSE SUCCESS \(httpResponse.statusCode)")

                if let jsonData = String(data: data, encoding: .utf8) {
                    self.logger.debug("✅ DEBUG: SERVER RESPONSE \(jsonData)")
                } else {
                    self.logger.error("❌ DEBUG: SERVER RESPONSE FAILURE")
                }

                switch httpResponse.statusCode {
                    case 200:
                        let jsonResponse = try JSONDecoder().decode(T.self, from: data)
                        completion(.success(jsonResponse))
                    case 400:
                        completion(.failure(NSError(domain: "HTTPError", code: 400, userInfo: nil)))
                    case 500:
                        completion(.failure(NSError(domain: "HTTPError", code: 500, userInfo: nil)))
                    default:
                        completion(.failure(NSError(domain: "HTTPError", code: httpResponse.statusCode, userInfo: nil)))
                }
            }
        } catch {
            self.logger.error("❌ DEBUG: RESPONSE FAILRE \(error.localizedDescription)")
            completion(.failure(error))
        }
    }
}
