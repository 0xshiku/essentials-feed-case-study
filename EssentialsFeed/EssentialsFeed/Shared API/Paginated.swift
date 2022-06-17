//
//  Paginated.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 15/06/2022.
//

import Foundation

public struct Paginated<Item> {
    
    public typealias LoadMoreCompletion = (Result<Self, Error>) -> Void
    
    public let items: [Item]
    public let loadMore: ((@escaping LoadMoreCompletion) -> Void)?
    
    public init(items: [Item], loadMore: ((@escaping LoadMoreCompletion) -> Void)? = nil) {
        self.items = items
        self.loadMore = loadMore
    }
}
