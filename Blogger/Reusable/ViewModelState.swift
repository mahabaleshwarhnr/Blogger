//
//  ViewModelState.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Foundation


enum ViewModelState<T: Equatable>: Equatable {
    case idle
    case loading
    case error(message: String)
    case success(data: T)
    
    var data: T? {
        guard case .success(let data) = self else {
            return nil
        }
        return data
    }
    
    static func == (lhs: ViewModelState<T>, rhs: ViewModelState<T>) -> Bool {
        switch(lhs, rhs) {
        case (.loading, .loading):
            return true
        case (.error(message: let lhsMessage), .error(message: let rhsMessage)):
            return lhsMessage == rhsMessage
        case (.success(data: let lhsData), .success(data: let rhsData)):
             return lhsData == rhsData
        case (.idle, .idle):
            return true
        default:
            return false
        }
    }
}
