//
//  Transformer.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 23/03/23.
//

import Foundation

public protocol Transformable {
    associatedtype Target
    associatedtype Source: Decodable
}

public protocol DomainTransformable: Transformable {
    static func transform(dto: Source) -> Target
}

public protocol DTOTransformable: Transformable {
    static func transform(domain: Target) -> Source
}
