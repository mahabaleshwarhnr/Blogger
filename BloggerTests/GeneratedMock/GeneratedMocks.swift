// MARK: - Mocks generated from file: Blogger/BlogPostsList/Data/DTO/BlogPostDTO.swift at 2023-06-17 05:16:19 +0000

//
//  BlogPostDTO.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 23/03/23.
//

import Cuckoo
@testable import Blogger

import Foundation

// MARK: - Mocks generated from file: Blogger/BlogPostsList/Data/Mapping/BlogPostDataTransformer.swift at 2023-06-17 05:16:19 +0000

//
//  BlogPostDataTransformer.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 25/03/23.
//

import Cuckoo
@testable import Blogger

import Foundation

// MARK: - Mocks generated from file: Blogger/BlogPostsList/Data/Repositories/BlogPostsRepositoryImpl.swift at 2023-06-17 05:16:19 +0000

//
//  BlogPostsRepository.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo
@testable import Blogger

import Combine
import UIKit






 class MockBlogPostsRepository: BlogPostsRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = BlogPostsRepository
    
     typealias Stubbing = __StubbingProxy_BlogPostsRepository
     typealias Verification = __VerificationProxy_BlogPostsRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: BlogPostsRepository?

     func enableDefaultImplementation(_ stub: BlogPostsRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func fetchBlogPosts() -> AnyPublisher<[BlogPost], Error> {
        
    return cuckoo_manager.call(
    """
    fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchBlogPosts())
        
    }
    
    

     struct __StubbingProxy_BlogPostsRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetchBlogPosts() -> Cuckoo.ProtocolStubFunction<(), AnyPublisher<[BlogPost], Error>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockBlogPostsRepository.self, method:
    """
    fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_BlogPostsRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetchBlogPosts() -> Cuckoo.__DoNotUse<(), AnyPublisher<[BlogPost], Error>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class BlogPostsRepositoryStub: BlogPostsRepository {
    

    

    
    
    
    
     func fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>  {
        return DefaultValueRegistry.defaultValue(for: (AnyPublisher<[BlogPost], Error>).self)
    }
    
    
}










public class MockAPIService: APIService, Cuckoo.ClassMock {
    
    public typealias MocksType = APIService
    
    public typealias Stubbing = __StubbingProxy_APIService
    public typealias Verification = __VerificationProxy_APIService

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: APIService?

    public func enableDefaultImplementation(_ stub: APIService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

    public struct __StubbingProxy_APIService: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        public init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }

    public struct __VerificationProxy_APIService: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
    }
}


public class APIServiceStub: APIService {
    

    

    
}










 class MockBlogPostsRepositoryImpl: BlogPostsRepositoryImpl, Cuckoo.ClassMock {
    
     typealias MocksType = BlogPostsRepositoryImpl
    
     typealias Stubbing = __StubbingProxy_BlogPostsRepositoryImpl
     typealias Verification = __VerificationProxy_BlogPostsRepositoryImpl

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: BlogPostsRepositoryImpl?

     func enableDefaultImplementation(_ stub: BlogPostsRepositoryImpl) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func fetchBlogPosts() -> AnyPublisher<[BlogPost], Error> {
        
    return cuckoo_manager.call(
    """
    fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.fetchBlogPosts()
                ,
            defaultCall: __defaultImplStub!.fetchBlogPosts())
        
    }
    
    

     struct __StubbingProxy_BlogPostsRepositoryImpl: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetchBlogPosts() -> Cuckoo.ClassStubFunction<(), AnyPublisher<[BlogPost], Error>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockBlogPostsRepositoryImpl.self, method:
    """
    fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_BlogPostsRepositoryImpl: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetchBlogPosts() -> Cuckoo.__DoNotUse<(), AnyPublisher<[BlogPost], Error>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class BlogPostsRepositoryImplStub: BlogPostsRepositoryImpl {
    

    

    
    
    
    
     override func fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>  {
        return DefaultValueRegistry.defaultValue(for: (AnyPublisher<[BlogPost], Error>).self)
    }
    
    
}





// MARK: - Mocks generated from file: Blogger/BlogPostsList/Data/Requests/BlogPostListRequest.swift at 2023-06-17 05:16:19 +0000

//
//  BlogPostListRequest.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 30/03/23.
//

import Cuckoo
@testable import Blogger

import Foundation
