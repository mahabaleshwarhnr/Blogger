//
//  BlogPostDTO.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 23/03/23.
//

import Foundation

struct BlogPostDTO: Decodable {
    
    let id: Int
    let title: String
    let body: String
    let userId: Int
}
