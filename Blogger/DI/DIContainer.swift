//
//  DIContainer.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 29/03/23.
//

import Factory
import CombineSchedulers
import UIKit

extension Container {
    var blogPostRepository: Factory<BlogPostsRepository> { self { BlogPostsRepositoryImpl(apiClient: self.apiClient()) } }
}

extension Container {
    
    var blogListViewModel: Factory<BlogListViewModel> {
        Factory(self) {
            BlogListViewModel()
        }
    }
}

extension Container {
    var apiClient: Factory<APIClient> {
        self {
            RESTAPIClient(url: URL(string: "https://jsonplaceholder.typicode.com/")!)
        }
    }
}

extension Container {
    var mainScheduler: Factory<AnyScheduler<DispatchQueue.SchedulerTimeType, DispatchQueue.SchedulerOptions>> {
        Factory(self) {
            .main
        }
    }
}

extension Container {
    
    func setupMocks() {
        apiClient.register {
            RESTAPIClient(url: URL(string: "http://localhost:8080/")!)
        }
        
        mainScheduler.register {
            .immediate
        }
    }
}


