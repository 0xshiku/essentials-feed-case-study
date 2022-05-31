//
//  FeedErrorViewModel.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 22/01/2022.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    public static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }
    
    public static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
    
    public init(message: String?) {
        self.message = message
    }
}
