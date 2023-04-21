// MARK: - Mocks generated from file: Blogger/APIClient.swift at 2023-03-25 08:02:13 +0000

//
//  APIClient.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import Combine
import Foundation






public class MockAPIClient: APIClient, Cuckoo.ProtocolMock {
    
    public typealias MocksType = APIClient
    
    public typealias Stubbing = __StubbingProxy_APIClient
    public typealias Verification = __VerificationProxy_APIClient

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: APIClient?

    public func enableDefaultImplementation(_ stub: APIClient) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    
    
    
    public required init(urlSession: URLSession) {
        
    }
    
    

    
    
    
    
    public func fetch<T>(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable {
        
    return cuckoo_manager.call(
    """
    fetch(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable
    """,
            parameters: (urlRequest, transformableType),
            escapingParameters: (urlRequest, transformableType),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetch(urlRequest: urlRequest, transformableType: transformableType))
        
    }
    
    

    public struct __StubbingProxy_APIClient: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        public init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T>(urlRequest: M1, transformableType: M2) -> Cuckoo.ProtocolStubFunction<(URLRequest, T.Type), AnyPublisher<T.Target, Error>> where M1.MatchedType == URLRequest, M2.MatchedType == T.Type, T: DomainTransformable {
            let matchers: [Cuckoo.ParameterMatcher<(URLRequest, T.Type)>] = [wrap(matchable: urlRequest) { $0.0 }, wrap(matchable: transformableType) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockAPIClient.self, method:
    """
    fetch(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable
    """, parameterMatchers: matchers))
        }
        
        
    }

    public struct __VerificationProxy_APIClient: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T>(urlRequest: M1, transformableType: M2) -> Cuckoo.__DoNotUse<(URLRequest, T.Type), AnyPublisher<T.Target, Error>> where M1.MatchedType == URLRequest, M2.MatchedType == T.Type, T: DomainTransformable {
            let matchers: [Cuckoo.ParameterMatcher<(URLRequest, T.Type)>] = [wrap(matchable: urlRequest) { $0.0 }, wrap(matchable: transformableType) { $0.1 }]
            return cuckoo_manager.verify(
    """
    fetch(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


public class APIClientStub: APIClient {
    

    
    
    public required init(urlSession: URLSession) {
        
    }
    
    

    
    
    
    
    public func fetch<T>(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable  {
        return DefaultValueRegistry.defaultValue(for: (AnyPublisher<T.Target, Error>).self)
    }
    
    
}










public class MockRESTAPIClient: RESTAPIClient, Cuckoo.ClassMock {
    
    public typealias MocksType = RESTAPIClient
    
    public typealias Stubbing = __StubbingProxy_RESTAPIClient
    public typealias Verification = __VerificationProxy_RESTAPIClient

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: RESTAPIClient?

    public func enableDefaultImplementation(_ stub: RESTAPIClient) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
    public override func fetch<T>(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable {
        
    return cuckoo_manager.call(
    """
    fetch(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable
    """,
            parameters: (urlRequest, transformableType),
            escapingParameters: (urlRequest, transformableType),
            superclassCall:
                
                super.fetch(urlRequest: urlRequest, transformableType: transformableType)
                ,
            defaultCall: __defaultImplStub!.fetch(urlRequest: urlRequest, transformableType: transformableType))
        
    }
    
    

    public struct __StubbingProxy_RESTAPIClient: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        public init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T>(urlRequest: M1, transformableType: M2) -> Cuckoo.ClassStubFunction<(URLRequest, T.Type), AnyPublisher<T.Target, Error>> where M1.MatchedType == URLRequest, M2.MatchedType == T.Type, T: DomainTransformable {
            let matchers: [Cuckoo.ParameterMatcher<(URLRequest, T.Type)>] = [wrap(matchable: urlRequest) { $0.0 }, wrap(matchable: transformableType) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockRESTAPIClient.self, method:
    """
    fetch(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable
    """, parameterMatchers: matchers))
        }
        
        
    }

    public struct __VerificationProxy_RESTAPIClient: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
        public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, T>(urlRequest: M1, transformableType: M2) -> Cuckoo.__DoNotUse<(URLRequest, T.Type), AnyPublisher<T.Target, Error>> where M1.MatchedType == URLRequest, M2.MatchedType == T.Type, T: DomainTransformable {
            let matchers: [Cuckoo.ParameterMatcher<(URLRequest, T.Type)>] = [wrap(matchable: urlRequest) { $0.0 }, wrap(matchable: transformableType) { $0.1 }]
            return cuckoo_manager.verify(
    """
    fetch(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


public class RESTAPIClientStub: RESTAPIClient {
    

    

    
    
    
    
    public override func fetch<T>(urlRequest: URLRequest, transformableType: T.Type) -> AnyPublisher<T.Target, Error> where T: DomainTransformable  {
        return DefaultValueRegistry.defaultValue(for: (AnyPublisher<T.Target, Error>).self)
    }
    
    
}





// MARK: - Mocks generated from file: Blogger/AppDelegate.swift at 2023-03-25 08:02:13 +0000

//
//  AppDelegate.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import UIKit






 class MockAppDelegate: AppDelegate, Cuckoo.ClassMock {
    
     typealias MocksType = AppDelegate
    
     typealias Stubbing = __StubbingProxy_AppDelegate
     typealias Verification = __VerificationProxy_AppDelegate

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: AppDelegate?

     func enableDefaultImplementation(_ stub: AppDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
    return cuckoo_manager.call(
    """
    application(_: UIApplication, didFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    """,
            parameters: (application, launchOptions),
            escapingParameters: (application, launchOptions),
            superclassCall:
                
                super.application(application, didFinishLaunchingWithOptions: launchOptions)
                ,
            defaultCall: __defaultImplStub!.application(application, didFinishLaunchingWithOptions: launchOptions))
        
    }
    
    
    
    
    
     override func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
    return cuckoo_manager.call(
    """
    application(_: UIApplication, configurationForConnecting: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
    """,
            parameters: (application, connectingSceneSession, options),
            escapingParameters: (application, connectingSceneSession, options),
            superclassCall:
                
                super.application(application, configurationForConnecting: connectingSceneSession, options: options)
                ,
            defaultCall: __defaultImplStub!.application(application, configurationForConnecting: connectingSceneSession, options: options))
        
    }
    
    
    
    
    
     override func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)  {
        
    return cuckoo_manager.call(
    """
    application(_: UIApplication, didDiscardSceneSessions: Set<UISceneSession>)
    """,
            parameters: (application, sceneSessions),
            escapingParameters: (application, sceneSessions),
            superclassCall:
                
                super.application(application, didDiscardSceneSessions: sceneSessions)
                ,
            defaultCall: __defaultImplStub!.application(application, didDiscardSceneSessions: sceneSessions))
        
    }
    
    

     struct __StubbingProxy_AppDelegate: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func application<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(_ application: M1, didFinishLaunchingWithOptions launchOptions: M2) -> Cuckoo.ClassStubFunction<(UIApplication, [UIApplication.LaunchOptionsKey: Any]?), Bool> where M1.MatchedType == UIApplication, M2.OptionalMatchedType == [UIApplication.LaunchOptionsKey: Any] {
            let matchers: [Cuckoo.ParameterMatcher<(UIApplication, [UIApplication.LaunchOptionsKey: Any]?)>] = [wrap(matchable: application) { $0.0 }, wrap(matchable: launchOptions) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockAppDelegate.self, method:
    """
    application(_: UIApplication, didFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func application<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ application: M1, configurationForConnecting connectingSceneSession: M2, options: M3) -> Cuckoo.ClassStubFunction<(UIApplication, UISceneSession, UIScene.ConnectionOptions), UISceneConfiguration> where M1.MatchedType == UIApplication, M2.MatchedType == UISceneSession, M3.MatchedType == UIScene.ConnectionOptions {
            let matchers: [Cuckoo.ParameterMatcher<(UIApplication, UISceneSession, UIScene.ConnectionOptions)>] = [wrap(matchable: application) { $0.0 }, wrap(matchable: connectingSceneSession) { $0.1 }, wrap(matchable: options) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockAppDelegate.self, method:
    """
    application(_: UIApplication, configurationForConnecting: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func application<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ application: M1, didDiscardSceneSessions sceneSessions: M2) -> Cuckoo.ClassStubNoReturnFunction<(UIApplication, Set<UISceneSession>)> where M1.MatchedType == UIApplication, M2.MatchedType == Set<UISceneSession> {
            let matchers: [Cuckoo.ParameterMatcher<(UIApplication, Set<UISceneSession>)>] = [wrap(matchable: application) { $0.0 }, wrap(matchable: sceneSessions) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockAppDelegate.self, method:
    """
    application(_: UIApplication, didDiscardSceneSessions: Set<UISceneSession>)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_AppDelegate: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func application<M1: Cuckoo.Matchable, M2: Cuckoo.OptionalMatchable>(_ application: M1, didFinishLaunchingWithOptions launchOptions: M2) -> Cuckoo.__DoNotUse<(UIApplication, [UIApplication.LaunchOptionsKey: Any]?), Bool> where M1.MatchedType == UIApplication, M2.OptionalMatchedType == [UIApplication.LaunchOptionsKey: Any] {
            let matchers: [Cuckoo.ParameterMatcher<(UIApplication, [UIApplication.LaunchOptionsKey: Any]?)>] = [wrap(matchable: application) { $0.0 }, wrap(matchable: launchOptions) { $0.1 }]
            return cuckoo_manager.verify(
    """
    application(_: UIApplication, didFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func application<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ application: M1, configurationForConnecting connectingSceneSession: M2, options: M3) -> Cuckoo.__DoNotUse<(UIApplication, UISceneSession, UIScene.ConnectionOptions), UISceneConfiguration> where M1.MatchedType == UIApplication, M2.MatchedType == UISceneSession, M3.MatchedType == UIScene.ConnectionOptions {
            let matchers: [Cuckoo.ParameterMatcher<(UIApplication, UISceneSession, UIScene.ConnectionOptions)>] = [wrap(matchable: application) { $0.0 }, wrap(matchable: connectingSceneSession) { $0.1 }, wrap(matchable: options) { $0.2 }]
            return cuckoo_manager.verify(
    """
    application(_: UIApplication, configurationForConnecting: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func application<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ application: M1, didDiscardSceneSessions sceneSessions: M2) -> Cuckoo.__DoNotUse<(UIApplication, Set<UISceneSession>), Void> where M1.MatchedType == UIApplication, M2.MatchedType == Set<UISceneSession> {
            let matchers: [Cuckoo.ParameterMatcher<(UIApplication, Set<UISceneSession>)>] = [wrap(matchable: application) { $0.0 }, wrap(matchable: sceneSessions) { $0.1 }]
            return cuckoo_manager.verify(
    """
    application(_: UIApplication, didDiscardSceneSessions: Set<UISceneSession>)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class AppDelegateStub: AppDelegate {
    

    

    
    
    
    
     override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
    
    
    
    
     override func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration  {
        return DefaultValueRegistry.defaultValue(for: (UISceneConfiguration).self)
    }
    
    
    
    
    
     override func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: Blogger/BlogListViewController.swift at 2023-03-25 08:02:13 +0000

//
//  ViewController.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import UIKit






 class MockBlogListViewController: BlogListViewController, Cuckoo.ClassMock {
    
     typealias MocksType = BlogListViewController
    
     typealias Stubbing = __StubbingProxy_BlogListViewController
     typealias Verification = __VerificationProxy_BlogListViewController

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: BlogListViewController?

     func enableDefaultImplementation(_ stub: BlogListViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    
     override var tableView: UITableView! {
        get {
            return cuckoo_manager.getter("tableView",
                superclassCall:
                    
                    super.tableView
                    ,
                defaultCall: __defaultImplStub!.tableView)
        }
        
        set {
            cuckoo_manager.setter("tableView",
                value: newValue,
                superclassCall:
                    
                    super.tableView = newValue
                    ,
                defaultCall: __defaultImplStub!.tableView = newValue)
        }
        
    }
    
    

    

    
    
    
    
     override func viewDidLoad()  {
        
    return cuckoo_manager.call(
    """
    viewDidLoad()
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.viewDidLoad()
                ,
            defaultCall: __defaultImplStub!.viewDidLoad())
        
    }
    
    

     struct __StubbingProxy_BlogListViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        var tableView: Cuckoo.ClassToBeStubbedOptionalProperty<MockBlogListViewController, UITableView> {
            return .init(manager: cuckoo_manager, name: "tableView")
        }
        
        
        
        
        
        func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockBlogListViewController.self, method:
    """
    viewDidLoad()
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_BlogListViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
        
        
        var tableView: Cuckoo.VerifyOptionalProperty<UITableView> {
            return .init(manager: cuckoo_manager, name: "tableView", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
    
        
        
        
        @discardableResult
        func viewDidLoad() -> Cuckoo.__DoNotUse<(), Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    viewDidLoad()
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class BlogListViewControllerStub: BlogListViewController {
    
    
    
    
     override var tableView: UITableView! {
        get {
            return DefaultValueRegistry.defaultValue(for: (UITableView?).self)
        }
        
        set { }
        
    }
    
    

    

    
    
    
    
     override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: Blogger/BlogListViewModel.swift at 2023-03-25 08:02:13 +0000

//
//  BlogListViewModel.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import Foundation






 class MockBlogListViewModel: BlogListViewModel, Cuckoo.ClassMock {
    
     typealias MocksType = BlogListViewModel
    
     typealias Stubbing = __StubbingProxy_BlogListViewModel
     typealias Verification = __VerificationProxy_BlogListViewModel

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: BlogListViewModel?

     func enableDefaultImplementation(_ stub: BlogListViewModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    
     override var state: ViewModelState<[BlogPost]> {
        get {
            return cuckoo_manager.getter("state",
                superclassCall:
                    
                    super.state
                    ,
                defaultCall: __defaultImplStub!.state)
        }
        
        set {
            cuckoo_manager.setter("state",
                value: newValue,
                superclassCall:
                    
                    super.state = newValue
                    ,
                defaultCall: __defaultImplStub!.state = newValue)
        }
        
    }
    
    

    

    

     struct __StubbingProxy_BlogListViewModel: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        var state: Cuckoo.ClassToBeStubbedProperty<MockBlogListViewModel, ViewModelState<[BlogPost]>> {
            return .init(manager: cuckoo_manager, name: "state")
        }
        
        
        
    }

     struct __VerificationProxy_BlogListViewModel: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
        
        
        var state: Cuckoo.VerifyProperty<ViewModelState<[BlogPost]>> {
            return .init(manager: cuckoo_manager, name: "state", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
    
        
    }
}


 class BlogListViewModelStub: BlogListViewModel {
    
    
    
    
     override var state: ViewModelState<[BlogPost]> {
        get {
            return DefaultValueRegistry.defaultValue(for: (ViewModelState<[BlogPost]>).self)
        }
        
        set { }
        
    }
    
    

    

    
}





// MARK: - Mocks generated from file: Blogger/BlogPost.swift at 2023-03-25 08:02:13 +0000

//
//  BlogPost.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import Foundation

// MARK: - Mocks generated from file: Blogger/BlogPostDTO.swift at 2023-03-25 08:02:13 +0000

//
//  BlogPostDTO.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 23/03/23.
//

import Cuckoo

import Foundation

// MARK: - Mocks generated from file: Blogger/BlogPostDataTransformer.swift at 2023-03-25 08:02:13 +0000

//
//  BlogPostDataTransformer.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 25/03/23.
//

import Cuckoo

import Foundation

// MARK: - Mocks generated from file: Blogger/BlogPostTableViewCell.swift at 2023-03-25 08:02:13 +0000

//
//  BlogPostTableViewCell.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import UIKit






 class MockBlogPostTableViewCell: BlogPostTableViewCell, Cuckoo.ClassMock {
    
     typealias MocksType = BlogPostTableViewCell
    
     typealias Stubbing = __StubbingProxy_BlogPostTableViewCell
     typealias Verification = __VerificationProxy_BlogPostTableViewCell

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: BlogPostTableViewCell?

     func enableDefaultImplementation(_ stub: BlogPostTableViewCell) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func awakeFromNib()  {
        
    return cuckoo_manager.call(
    """
    awakeFromNib()
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.awakeFromNib()
                ,
            defaultCall: __defaultImplStub!.awakeFromNib())
        
    }
    
    
    
    
    
     override func setSelected(_ selected: Bool, animated: Bool)  {
        
    return cuckoo_manager.call(
    """
    setSelected(_: Bool, animated: Bool)
    """,
            parameters: (selected, animated),
            escapingParameters: (selected, animated),
            superclassCall:
                
                super.setSelected(selected, animated: animated)
                ,
            defaultCall: __defaultImplStub!.setSelected(selected, animated: animated))
        
    }
    
    

     struct __StubbingProxy_BlogPostTableViewCell: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func awakeFromNib() -> Cuckoo.ClassStubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockBlogPostTableViewCell.self, method:
    """
    awakeFromNib()
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func setSelected<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ selected: M1, animated: M2) -> Cuckoo.ClassStubNoReturnFunction<(Bool, Bool)> where M1.MatchedType == Bool, M2.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<(Bool, Bool)>] = [wrap(matchable: selected) { $0.0 }, wrap(matchable: animated) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub(for: MockBlogPostTableViewCell.self, method:
    """
    setSelected(_: Bool, animated: Bool)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_BlogPostTableViewCell: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func awakeFromNib() -> Cuckoo.__DoNotUse<(), Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    awakeFromNib()
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func setSelected<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ selected: M1, animated: M2) -> Cuckoo.__DoNotUse<(Bool, Bool), Void> where M1.MatchedType == Bool, M2.MatchedType == Bool {
            let matchers: [Cuckoo.ParameterMatcher<(Bool, Bool)>] = [wrap(matchable: selected) { $0.0 }, wrap(matchable: animated) { $0.1 }]
            return cuckoo_manager.verify(
    """
    setSelected(_: Bool, animated: Bool)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class BlogPostTableViewCellStub: BlogPostTableViewCell {
    

    

    
    
    
    
     override func awakeFromNib()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func setSelected(_ selected: Bool, animated: Bool)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: Blogger/BlogPostsFetchUseCase.swift at 2023-03-25 08:02:13 +0000

//
//  BlogPostsFetchUseCase.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 25/03/23.
//

import Cuckoo

import Combine
import Foundation






 class MockUseCase<Repository>: UseCase, Cuckoo.ProtocolMock {
    
     typealias MocksType = DefaultImplCaller<Repository>
    
     typealias Stubbing = __StubbingProxy_UseCase
     typealias Verification = __VerificationProxy_UseCase

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
     class DefaultImplCaller<Repository>: UseCase {
        private let reference: Any
    
        
        
        init<_CUCKOO$$GENERIC: UseCase>(from defaultImpl: UnsafeMutablePointer<_CUCKOO$$GENERIC>, keeping reference: @escaping @autoclosure () -> Any?) where _CUCKOO$$GENERIC.Repository == Repository {
            self.reference = reference
    
            
            
        }
        
        /// MARK:- ignored required initializers
         required init(respository: Repository) {
            fatalError("`DefaultImplCaller` class is only used for calling default implementation and can't be initialized on its own.")
        }
        
    
        
    }

    private var __defaultImplStub: DefaultImplCaller<Repository>?

     func enableDefaultImplementation<_CUCKOO$$GENERIC: UseCase>(_ stub: _CUCKOO$$GENERIC) where _CUCKOO$$GENERIC.Repository == Repository {
        var mutableStub = stub
        __defaultImplStub = DefaultImplCaller(from: &mutableStub, keeping: mutableStub)
        cuckoo_manager.enableDefaultStubImplementation()
    }

     func enableDefaultImplementation<_CUCKOO$$GENERIC: UseCase>(mutating stub: UnsafeMutablePointer<_CUCKOO$$GENERIC>) where _CUCKOO$$GENERIC.Repository == Repository {
        __defaultImplStub = DefaultImplCaller(from: stub, keeping: nil)
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    
    
    
     required init(respository: Repository) {
        
    }
    
    

    

     struct __StubbingProxy_UseCase: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }

     struct __VerificationProxy_UseCase: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
    }
}


 class UseCaseStub<Repository>: UseCase {
    

    
    
     required init(respository: Repository) {
        
    }
    
    

    
}





// MARK: - Mocks generated from file: Blogger/BlogPostsRepositoryImpl.swift at 2023-03-25 08:02:13 +0000

//
//  BlogPostsRepository.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

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





// MARK: - Mocks generated from file: Blogger/SceneDelegate.swift at 2023-03-25 08:02:13 +0000

//
//  SceneDelegate.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import UIKit






 class MockSceneDelegate: SceneDelegate, Cuckoo.ClassMock {
    
     typealias MocksType = SceneDelegate
    
     typealias Stubbing = __StubbingProxy_SceneDelegate
     typealias Verification = __VerificationProxy_SceneDelegate

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: SceneDelegate?

     func enableDefaultImplementation(_ stub: SceneDelegate) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    
     override var window: UIWindow? {
        get {
            return cuckoo_manager.getter("window",
                superclassCall:
                    
                    super.window
                    ,
                defaultCall: __defaultImplStub!.window)
        }
        
        set {
            cuckoo_manager.setter("window",
                value: newValue,
                superclassCall:
                    
                    super.window = newValue
                    ,
                defaultCall: __defaultImplStub!.window = newValue)
        }
        
    }
    
    

    

    
    
    
    
     override func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)  {
        
    return cuckoo_manager.call(
    """
    scene(_: UIScene, willConnectTo: UISceneSession, options: UIScene.ConnectionOptions)
    """,
            parameters: (scene, session, connectionOptions),
            escapingParameters: (scene, session, connectionOptions),
            superclassCall:
                
                super.scene(scene, willConnectTo: session, options: connectionOptions)
                ,
            defaultCall: __defaultImplStub!.scene(scene, willConnectTo: session, options: connectionOptions))
        
    }
    
    
    
    
    
     override func sceneDidDisconnect(_ scene: UIScene)  {
        
    return cuckoo_manager.call(
    """
    sceneDidDisconnect(_: UIScene)
    """,
            parameters: (scene),
            escapingParameters: (scene),
            superclassCall:
                
                super.sceneDidDisconnect(scene)
                ,
            defaultCall: __defaultImplStub!.sceneDidDisconnect(scene))
        
    }
    
    
    
    
    
     override func sceneDidBecomeActive(_ scene: UIScene)  {
        
    return cuckoo_manager.call(
    """
    sceneDidBecomeActive(_: UIScene)
    """,
            parameters: (scene),
            escapingParameters: (scene),
            superclassCall:
                
                super.sceneDidBecomeActive(scene)
                ,
            defaultCall: __defaultImplStub!.sceneDidBecomeActive(scene))
        
    }
    
    
    
    
    
     override func sceneWillResignActive(_ scene: UIScene)  {
        
    return cuckoo_manager.call(
    """
    sceneWillResignActive(_: UIScene)
    """,
            parameters: (scene),
            escapingParameters: (scene),
            superclassCall:
                
                super.sceneWillResignActive(scene)
                ,
            defaultCall: __defaultImplStub!.sceneWillResignActive(scene))
        
    }
    
    
    
    
    
     override func sceneWillEnterForeground(_ scene: UIScene)  {
        
    return cuckoo_manager.call(
    """
    sceneWillEnterForeground(_: UIScene)
    """,
            parameters: (scene),
            escapingParameters: (scene),
            superclassCall:
                
                super.sceneWillEnterForeground(scene)
                ,
            defaultCall: __defaultImplStub!.sceneWillEnterForeground(scene))
        
    }
    
    
    
    
    
     override func sceneDidEnterBackground(_ scene: UIScene)  {
        
    return cuckoo_manager.call(
    """
    sceneDidEnterBackground(_: UIScene)
    """,
            parameters: (scene),
            escapingParameters: (scene),
            superclassCall:
                
                super.sceneDidEnterBackground(scene)
                ,
            defaultCall: __defaultImplStub!.sceneDidEnterBackground(scene))
        
    }
    
    

     struct __StubbingProxy_SceneDelegate: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        var window: Cuckoo.ClassToBeStubbedOptionalProperty<MockSceneDelegate, UIWindow> {
            return .init(manager: cuckoo_manager, name: "window")
        }
        
        
        
        
        
        func scene<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ scene: M1, willConnectTo session: M2, options connectionOptions: M3) -> Cuckoo.ClassStubNoReturnFunction<(UIScene, UISceneSession, UIScene.ConnectionOptions)> where M1.MatchedType == UIScene, M2.MatchedType == UISceneSession, M3.MatchedType == UIScene.ConnectionOptions {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene, UISceneSession, UIScene.ConnectionOptions)>] = [wrap(matchable: scene) { $0.0 }, wrap(matchable: session) { $0.1 }, wrap(matchable: connectionOptions) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockSceneDelegate.self, method:
    """
    scene(_: UIScene, willConnectTo: UISceneSession, options: UIScene.ConnectionOptions)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func sceneDidDisconnect<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.ClassStubNoReturnFunction<(UIScene)> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockSceneDelegate.self, method:
    """
    sceneDidDisconnect(_: UIScene)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func sceneDidBecomeActive<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.ClassStubNoReturnFunction<(UIScene)> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockSceneDelegate.self, method:
    """
    sceneDidBecomeActive(_: UIScene)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func sceneWillResignActive<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.ClassStubNoReturnFunction<(UIScene)> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockSceneDelegate.self, method:
    """
    sceneWillResignActive(_: UIScene)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func sceneWillEnterForeground<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.ClassStubNoReturnFunction<(UIScene)> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockSceneDelegate.self, method:
    """
    sceneWillEnterForeground(_: UIScene)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func sceneDidEnterBackground<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.ClassStubNoReturnFunction<(UIScene)> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockSceneDelegate.self, method:
    """
    sceneDidEnterBackground(_: UIScene)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_SceneDelegate: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
        
        
        var window: Cuckoo.VerifyOptionalProperty<UIWindow> {
            return .init(manager: cuckoo_manager, name: "window", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
    
        
        
        
        @discardableResult
        func scene<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ scene: M1, willConnectTo session: M2, options connectionOptions: M3) -> Cuckoo.__DoNotUse<(UIScene, UISceneSession, UIScene.ConnectionOptions), Void> where M1.MatchedType == UIScene, M2.MatchedType == UISceneSession, M3.MatchedType == UIScene.ConnectionOptions {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene, UISceneSession, UIScene.ConnectionOptions)>] = [wrap(matchable: scene) { $0.0 }, wrap(matchable: session) { $0.1 }, wrap(matchable: connectionOptions) { $0.2 }]
            return cuckoo_manager.verify(
    """
    scene(_: UIScene, willConnectTo: UISceneSession, options: UIScene.ConnectionOptions)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func sceneDidDisconnect<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.__DoNotUse<(UIScene), Void> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return cuckoo_manager.verify(
    """
    sceneDidDisconnect(_: UIScene)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func sceneDidBecomeActive<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.__DoNotUse<(UIScene), Void> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return cuckoo_manager.verify(
    """
    sceneDidBecomeActive(_: UIScene)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func sceneWillResignActive<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.__DoNotUse<(UIScene), Void> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return cuckoo_manager.verify(
    """
    sceneWillResignActive(_: UIScene)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func sceneWillEnterForeground<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.__DoNotUse<(UIScene), Void> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return cuckoo_manager.verify(
    """
    sceneWillEnterForeground(_: UIScene)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func sceneDidEnterBackground<M1: Cuckoo.Matchable>(_ scene: M1) -> Cuckoo.__DoNotUse<(UIScene), Void> where M1.MatchedType == UIScene {
            let matchers: [Cuckoo.ParameterMatcher<(UIScene)>] = [wrap(matchable: scene) { $0 }]
            return cuckoo_manager.verify(
    """
    sceneDidEnterBackground(_: UIScene)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class SceneDelegateStub: SceneDelegate {
    
    
    
    
     override var window: UIWindow? {
        get {
            return DefaultValueRegistry.defaultValue(for: (UIWindow?).self)
        }
        
        set { }
        
    }
    
    

    

    
    
    
    
     override func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func sceneDidDisconnect(_ scene: UIScene)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func sceneDidBecomeActive(_ scene: UIScene)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func sceneWillResignActive(_ scene: UIScene)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func sceneWillEnterForeground(_ scene: UIScene)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func sceneDidEnterBackground(_ scene: UIScene)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}





// MARK: - Mocks generated from file: Blogger/Transformer.swift at 2023-03-25 08:02:13 +0000

//
//  Transformer.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 23/03/23.
//

import Cuckoo

import Foundation






public class MockTransformable<Target, Source: Decodable>: Transformable, Cuckoo.ProtocolMock {
    
    public typealias MocksType = DefaultImplCaller<Target, Source>
    
    public typealias Stubbing = __StubbingProxy_Transformable
    public typealias Verification = __VerificationProxy_Transformable

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    public class DefaultImplCaller<Target, Source: Decodable>: Transformable {
        private let reference: Any
    
        
        
        init<_CUCKOO$$GENERIC: Transformable>(from defaultImpl: UnsafeMutablePointer<_CUCKOO$$GENERIC>, keeping reference: @escaping @autoclosure () -> Any?) where _CUCKOO$$GENERIC.Target == Target, _CUCKOO$$GENERIC.Source == Source {
            self.reference = reference
    
            
            
        }
        
        
    
        
    }

    private var __defaultImplStub: DefaultImplCaller<Target, Source>?

    public func enableDefaultImplementation<_CUCKOO$$GENERIC: Transformable>(_ stub: _CUCKOO$$GENERIC) where _CUCKOO$$GENERIC.Target == Target, _CUCKOO$$GENERIC.Source == Source {
        var mutableStub = stub
        __defaultImplStub = DefaultImplCaller(from: &mutableStub, keeping: mutableStub)
        cuckoo_manager.enableDefaultStubImplementation()
    }

    public func enableDefaultImplementation<_CUCKOO$$GENERIC: Transformable>(mutating stub: UnsafeMutablePointer<_CUCKOO$$GENERIC>) where _CUCKOO$$GENERIC.Target == Target, _CUCKOO$$GENERIC.Source == Source {
        __defaultImplStub = DefaultImplCaller(from: stub, keeping: nil)
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

    public struct __StubbingProxy_Transformable: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        public init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }

    public struct __VerificationProxy_Transformable: Cuckoo.VerificationProxy {
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


public class TransformableStub<Target, Source: Decodable>: Transformable {
    

    

    
}










public class MockDomainTransformable: DomainTransformable, Cuckoo.ProtocolMock {
    
    public typealias MocksType = DomainTransformable
    
    public typealias Stubbing = __StubbingProxy_DomainTransformable
    public typealias Verification = __VerificationProxy_DomainTransformable

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: DomainTransformable?

    public func enableDefaultImplementation(_ stub: DomainTransformable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

    public struct __StubbingProxy_DomainTransformable: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        public init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }

    public struct __VerificationProxy_DomainTransformable: Cuckoo.VerificationProxy {
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


public class DomainTransformableStub: DomainTransformable {
    

    

    
}










public class MockDTOTransformable: DTOTransformable, Cuckoo.ProtocolMock {
    
    public typealias MocksType = DTOTransformable
    
    public typealias Stubbing = __StubbingProxy_DTOTransformable
    public typealias Verification = __VerificationProxy_DTOTransformable

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: DTOTransformable?

    public func enableDefaultImplementation(_ stub: DTOTransformable) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    

    public struct __StubbingProxy_DTOTransformable: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
        public init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
    }

    public struct __VerificationProxy_DTOTransformable: Cuckoo.VerificationProxy {
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


public class DTOTransformableStub: DTOTransformable {
    

    

    
}





// MARK: - Mocks generated from file: Blogger/ViewModelState.swift at 2023-03-25 08:02:13 +0000

//
//  ViewModelState.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo

import Foundation
