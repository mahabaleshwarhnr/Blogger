//
//  BlogPostsFetchUseCase.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 25/03/23.
//

import Foundation
import Combine

protocol UseCase {
    associatedtype Repository
    init(respository: Repository)
}

struct BlogPostsFetchUseCase: UseCase {
    
    private let repository: BlogPostsRepository
    
    init(respository: BlogPostsRepository) {
        self.repository = respository
    }
    
    func invoke() -> AnyPublisher<[BlogPost], Error> {
        repository.fetchBlogPosts()
    }
}


