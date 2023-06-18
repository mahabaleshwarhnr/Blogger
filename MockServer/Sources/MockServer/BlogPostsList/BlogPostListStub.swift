//
//  BlogPostStubs.swift
//  
//
//  Created by Mahabaleshwar Hegde on 08/04/23.
//

import Foundation
import OHHTTPStubs
import OHHTTPStubsSwift
import WiremockClient

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
        let newState = "posts_empty"
        initialStub(scenarioState: newState)
        let stub = StubMapping.stubFor(requestMethod: .GET,
                                       urlMatchCondition: .urlPathEqualTo,
                                       url: endPoint)
            .inScenario("posts")
            .whenScenarioStateIs(newState)
            .willReturn(ResponseDefinition())
        try? WiremockClient.postMapping(stubMapping: stub)
    }
    func errorResponse(_ error: ErrorResponse = .default) {
        let stub = StubMapping.stubFor(requestMethod: .GET,
                                       urlMatchCondition: .urlPathEqualTo,
                                       url: endPoint)
            .inScenario("posts_error")
            .whenScenarioStateIs("Started")
            .willReturn(ResponseDefinition())
        try? WiremockClient.postMapping(stubMapping: stub)
    }
    
    func successResponse() {
        let stub = StubMapping.stubFor(requestMethod: .GET,
                                       urlMatchCondition: .urlPathEqualTo,
                                       url: endPoint)
            .inScenario("posts_success")
            .whenScenarioStateIs("Started")
            .willReturn(ResponseDefinition())
        try? WiremockClient.postMapping(stubMapping: stub)
    }
    
    private func initialStub(scenarioState: String) {
        let stub = StubMapping.stubFor(requestMethod: .GET,
                                       urlMatchCondition: .urlPathEqualTo,
                                       url: endPoint)
            .inScenario("posts")
            .whenScenarioStateIs("Started")
            .willReturn(ResponseDefinition())
            .willSetStateTo(scenarioState)
        try? WiremockClient.postMapping(stubMapping: stub)
    }
}

public struct BlogPostListStub: NetworkStub {
    public let successResponseFileName: String = "post-list.json"
    public let errorResponseFileName: String = "common-error.json"
    public let emptyResponseFileName: String = "post-list-empty.json"
    
    public let endPoint = "/posts"
    
    public init() {}
}
