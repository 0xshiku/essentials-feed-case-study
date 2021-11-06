//
//  FeedStore.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 01/11/2021.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompletion = (Error?) -> Void
    typealias InsertionCompletion = (Error?) -> Void
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion)
    
    func insert(_ items: [LocalFeedItem], timestamp: Date, completion: @escaping InsertionCompletion)
}
