//
//  ViewModelState.swift
//  Blogger
//
//  Created by Mahabaleshwar Hegde on 22/03/23.
//

import Foundation


enum ViewModelState<T> {
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
}
