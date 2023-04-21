//
//  BlogPostViewModelTests.swift
//  BloggerTests
//
//  Created by Mahabaleshwar Hegde on 25/03/23.
//

import XCTest
import Factory
@testable import Blogger

final class BlogPostViewModelTests: XCTestCase {
    
    private var viewModel: BlogListViewModel!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testShouldBlogPostsSucesss() {
        viewModel.fetchBlogPosts()
    }
}


