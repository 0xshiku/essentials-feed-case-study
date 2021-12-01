//
//  CoreDataFeedStore.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 01/12/2021.
//

import Foundation

public class CoreDataFeedStore: FeedStore {
    
    public init() {}
    
    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }

    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
    

    
    
}
