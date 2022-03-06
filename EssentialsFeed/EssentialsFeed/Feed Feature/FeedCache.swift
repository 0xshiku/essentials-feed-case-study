//
//  FeedCache.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 06/03/2022.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
