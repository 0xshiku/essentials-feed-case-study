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
    public let canLoadMore: ((@escaping LoadMoreCompletion) -> Void)?
    
    public init(items: [Item], canLoadMore: ((@escaping LoadMoreCompletion) -> Void)? = nil) {
        self.items = items
        self.canLoadMore = canLoadMore
    }
}
