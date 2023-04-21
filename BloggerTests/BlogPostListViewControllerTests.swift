//
//  BlogPostListViewControllerTests.swift
//  BloggerTests
//
//  Created by Mahabaleshwar Hegde on 27/03/23.
//

import XCTest
import KIF
import Combine
import Factory
import CombineSchedulers
import MockServer
@testable import Blogger

final class BlogPostListViewControllerTests: KIFTestCase {
    
    private var mockBlogRepository: BlogPostsRepository!
    private let blogPostListStub = BlogPostListStub()
    
    override func beforeAll() {
        super.beforeAll()
        Container.shared.setupMocks()
    }

    func test_02ShouldDisplayBlogList() throws {
        blogPostListStub.successResponse()
        let tableView = tester().waitForView(withAccessibilityIdentifier: "blogPostTableView") as! UITableView
        let cell = tester().waitForCell(at: IndexPath(row: 0, section: 0), inTableViewWithAccessibilityIdentifier: "blogPostTableView", at: .top)
        let contentConfiguration = cell!.contentConfiguration as? UIListContentConfiguration
        XCTAssertEqual(tableView.numberOfSections, 1)
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 100)
        XCTAssertEqual(contentConfiguration?.text, "Hello World")
        XCTAssertNotNil(contentConfiguration?.secondaryText, "Lorem")
    }
    
    func test_01ShouldDisplayErrorWhenBlogListFailed() throws {
        blogPostListStub.errorResponse()
        _ = tester().waitForView(withAccessibilityIdentifier: "blogPostTableView")
        let errorLabel = tester().waitForView(withAccessibilityIdentifier: "errorLabel") as! UILabel
        XCTAssertEqual(errorLabel.text, "Something went wrong try again.")
    }
    
    func test_03ShouldNavigateToBlogDetailsOnTapOfAnyBlog() throws {
        blogPostListStub.successResponse()
        let _ = tester().waitForCell(at: IndexPath(row: 0, section: 0), inTableViewWithAccessibilityIdentifier: "blogPostTableView", at: .top)
        tester().tapRow(at: IndexPath(row: 0, section: 0), inTableViewWithAccessibilityIdentifier: "blogPostTableView")
    }
}

extension XCTestCase {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }

    func system(file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
        return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
    }
}

struct MockResponse<T, E: Error> {
    let body: T?
    let error: E?
}


