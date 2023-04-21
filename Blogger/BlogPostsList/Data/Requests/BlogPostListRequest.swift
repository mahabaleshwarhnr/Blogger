//
//  BlogPostListRequest.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 30/03/23.
//

import Foundation

struct BlogPostListRequest: Request {
    var queryParams: [String : String]? = nil
    var httpMethod: HTTPMethod = .get
    var body: Encodable?
    var endPoint: String = "/posts"
}
