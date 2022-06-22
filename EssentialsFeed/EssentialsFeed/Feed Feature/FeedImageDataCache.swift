//
//  FeedImageDataCache.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 12/03/2022.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL) throws
}
