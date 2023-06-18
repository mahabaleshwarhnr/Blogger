//
//  BloggerUITests.swift
//  BloggerUITests
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import XCTest
import MockServer
import WiremockClient

final class BloggerUITests: XCTestCase {

    private var blogPostListStub: BlogPostListStub!
    var app: XCUIApplication!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["uitesting"]
        blogPostListStub = BlogPostListStub()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        try WiremockClient.resetAllScenarios()
    }
    
    func test_02ShouldDisplayBlogList() throws {
        blogPostListStub.successResponse()
        app.launch()
        let cell = app.tables["blogPostTableView"].cells.firstMatch
        XCTAssertTrue(cell.waitForExistence(timeout: 10.0))
    }
    
    func test_01ShouldDisplayErrorWhenBlogListFailed() throws {
        blogPostListStub.errorResponse()
        let label = app.staticTexts["errorLabel"]
        XCTAssertTrue(label.waitForExistence(timeout: 10.0))
        XCTAssertEqual(label.label, "Something went wrong try again.")
    }
    
    func test_03ShouldNavigateToBlogDetailsOnTapOfAnyBlog() throws {
        blogPostListStub.emptyResponse()
        let label = app.staticTexts["emptyLabel"]
        XCTAssertTrue(label.waitForExistence(timeout: 10.0))
        XCTAssertEqual(label.label, "Something went wrong try again.")
    }
}


extension WiremockClient {
    
}
