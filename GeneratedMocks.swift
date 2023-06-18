// MARK: - Mocks generated from file: Blogger/BlogDetailViewController.swift at 2023-06-16 15:15:59 +0000

//
//  BlogDetailViewController.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 05/04/23.
//

import Cuckoo
@testable import Blogger

import UIKit






 class MockBlogDetailViewController: BlogDetailViewController, Cuckoo.ClassMock {
    
     typealias MocksType = BlogDetailViewController
    
     typealias Stubbing = __StubbingProxy_BlogDetailViewController
     typealias Verification = __VerificationProxy_BlogDetailViewController

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: BlogDetailViewController?

     func enableDefaultImplementation(_ stub: BlogDetailViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    
     override var blog: BlogPost? {
        get {
            return cuckoo_manager.getter("blog",
                superclassCall:
                    
                    super.blog
                    ,
                defaultCall: __defaultImplStub!.blog)
        }
        
        set {
            cuckoo_manager.setter("blog",
                value: newValue,
                superclassCall:
                    
                    super.blog = newValue
                    ,
                defaultCall: __defaultImplStub!.blog = newValue)
        }
        
    }
    
    

    

    

     struct __StubbingProxy_BlogDetailViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        var blog: Cuckoo.ClassToBeStubbedOptionalProperty<MockBlogDetailViewController, BlogPost> {
            return .init(manager: cuckoo_manager, name: "blog")
        }
        
        
        
    }

     struct __VerificationProxy_BlogDetailViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
        
        
        var blog: Cuckoo.VerifyOptionalProperty<BlogPost> {
            return .init(manager: cuckoo_manager, name: "blog", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
    
        
    }
}


 class BlogDetailViewControllerStub: BlogDetailViewController {
    
    
    
    
     override var blog: BlogPost? {
        get {
            return DefaultValueRegistry.defaultValue(for: (BlogPost?).self)
        }
        
        set { }
        
    }
    
    

    

    
}





// MARK: - Mocks generated from file: Blogger/ViewController.swift at 2023-06-16 15:15:59 +0000

//
//  ViewController.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Cuckoo
@testable import Blogger

import UIKit






 class MockViewController: ViewController, Cuckoo.ClassMock {
    
     typealias MocksType = ViewController
    
     typealias Stubbing = __StubbingProxy_ViewController
     typealias Verification = __VerificationProxy_ViewController

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: ViewController?

     func enableDefaultImplementation(_ stub: ViewController) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
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
    
    

     struct __StubbingProxy_ViewController: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func viewDidLoad() -> Cuckoo.ClassStubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockViewController.self, method:
    """
    viewDidLoad()
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_ViewController: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
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


 class ViewControllerStub: ViewController {
    

    

    
    
    
    
     override func viewDidLoad()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}




