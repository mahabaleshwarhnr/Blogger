//
//  BlogPostViewModelTests.swift
//  BloggerTests
//
//  Created by Mahabaleshwar Hegde on 25/03/23.
//

import XCTest
import Factory
import Cuckoo
import Combine
@testable import Blogger

final class BlogPostViewModelTests: XCTestCase {

    private var viewModel: BlogListViewModel!
    private var mockRepository: MockBlogPostsRepository!
    var blog: BlogPost!
    private var cancellables: Set<AnyCancellable> = []

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        Container.shared.setupMocks()
        mockRepository = MockBlogPostsRepository()
        Container.shared.blogPostRepository.register {
            self.mockRepository
        }
        viewModel = BlogListViewModel()

        blog  = BlogPost(id: "Hello", title: "", body: "", userId: "")
        let publisher = Just([blog!])
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()

        stub(mockRepository) { proxy in
            when(proxy.fetchBlogPosts()).thenReturn(publisher)
        }
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        cancellables.removeAll()
        clearInvocations(mockRepository)
    }

    func testShouldFetchBlogPosts() {
        viewModel.fetchBlogPosts()
        verify(mockRepository).fetchBlogPosts()
    }

    func testShouldBlogPostsFetchSucesss() {
        viewModel.fetchBlogPosts()
        XCTAssertEqual(viewModel.state, .success(data: [blog]))
    }
    
    func testShouldViewModelInitialStateIdle() {
        XCTAssertEqual(viewModel.state, .idle)
    }
    
    func testShouldBlogPostsFetchError() {
        let error = BlogPostError.unknownError as Error
        let publisher = Fail(outputType: [BlogPost].self, failure: error)
            .eraseToAnyPublisher()
        stub(mockRepository) { proxy in
            when(proxy.fetchBlogPosts()).thenReturn(publisher)
        }
        viewModel.fetchBlogPosts()
        XCTAssertEqual(viewModel.state, .error(message: error.localizedDescription))
    }
}


enum BlogPostError: Error {
    case unknownError
    
    var localizedDescription: String {
        "Unknown Error Occurred"
    }
}

