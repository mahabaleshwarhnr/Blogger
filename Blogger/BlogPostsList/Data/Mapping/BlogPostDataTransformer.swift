//
//  BlogPostDataTransformer.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 25/03/23.
//

import Foundation

struct BlogPostDataTransformer: DomainTransformable {
    typealias Target = [BlogPost]
    typealias Source = [BlogPostDTO]
    
    static func transform(dto: [BlogPostDTO]) -> [BlogPost] {
        dto.map {
            BlogPost(id: "\($0.id)", title: $0.title, body: $0.body, userId: "\($0.userId)")
        }
    }
}
