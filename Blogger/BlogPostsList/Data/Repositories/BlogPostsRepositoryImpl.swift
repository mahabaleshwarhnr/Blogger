//
//  BlogPostsRepository.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import UIKit
import Combine

protocol BlogPostsRepository {
    func fetchBlogPosts() -> AnyPublisher<[BlogPost], Error>
}


open class APIService {
    
    public let apiClient: APIClient
    
    public init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
}

class BlogPostsRepositoryImpl: APIService, BlogPostsRepository {
    
    func fetchBlogPosts() -> AnyPublisher<[BlogPost], Error> {
        let request = BlogPostListRequest()
        return self.apiClient.fetch(request: request, transformableType: BlogPostDataTransformer.self)
    }
}
