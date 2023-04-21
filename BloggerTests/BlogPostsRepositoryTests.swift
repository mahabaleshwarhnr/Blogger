//
//  BlogPostsRepositoryTests.swift
//  BloggerTests
//
//  Created by Mahabaleshwar Hegde on 31/03/23.
//

import XCTest
import Combine
import Factory
@testable import Blogger

final class BlogPostsRepositoryTests: XCTestCase {

    private var sut: BlogPostsRepository!
    private var cancelBag = Set<AnyCancellable>()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let expectation = expectation(description: "fetch blog should be success")
        sut.fetchBlogPosts().sink { completion in
            if case .failure = completion {
                XCTFail()
            }
        } receiveValue: { value in
            XCTAssertEqual(value.count, 100)
            expectation.fulfill()
        }
        .store(in: &cancelBag)
        wait(for: [expectation], timeout: 1.0)

    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
