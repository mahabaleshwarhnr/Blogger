//
//  BlogPostStubs.swift
//  
//
//  Created by Mahabaleshwar Hegde on 08/04/23.
//

import Foundation
import OHHTTPStubs
import OHHTTPStubsSwift

public struct ErrorResponse {
    public let statusCode: Int
    public let error: Error?
    
    init(statusCode: Int, error: Error?) {
        self.error = error
        self.statusCode = statusCode
    }
}

public extension ErrorResponse {
    static let `default`: ErrorResponse = ErrorResponse(statusCode: 500, error: nil)
}

public protocol NetworkStub {
    var successResponseFileName: String { get }
    var errorResponseFileName: String { get }
    var emptyResponseFileName: String { get }
    var endPoint: String { get }
    
    func successResponse()
    func emptyResponse()
    func errorResponse(_ error: ErrorResponse)
}

extension NetworkStub {
    func filePath(_ fileName: String) -> String {
        OHPathForFileInBundle(fileName, Bundle.module)!
    }
}

public extension NetworkStub {
    func emptyResponse() {
        stub(condition: isPath(endPoint)) { _ in
          return fixture(filePath: filePath(emptyResponseFileName), headers: nil)
        }
    }
    func errorResponse(_ error: ErrorResponse = .default) {
        stub(condition: isPath(endPoint)) { _ in
            return fixture(filePath: filePath(errorResponseFileName), status: Int32(error.statusCode), headers: nil)
        }
    }
    
    func successResponse() {
        stub(condition: isPath(endPoint)) { _ in
          return fixture(filePath: filePath(successResponseFileName), headers: nil)
        }
    }
}

public struct BlogPostListStub: NetworkStub {
    public let successResponseFileName: String = "post-list.json"
    public let errorResponseFileName: String = "common-error.json"
    public let emptyResponseFileName: String = "post-list-empty.json"
    
    public let endPoint = "/posts"
    
    public init() {}
}
