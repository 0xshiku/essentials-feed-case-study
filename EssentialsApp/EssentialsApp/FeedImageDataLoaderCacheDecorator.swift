//
//  FeedImageDataLoaderCacheDecorator.swift
//  EssentialsApp
//
//  Created by Chico Pereira on 12/03/2022.
//

import Foundation

class FeedImageDataLoaderCacheDecorator: FeedImageDataLoader {
    
    private let decoratee: FeedImageDataLoader
    private let cache: FeedImageDataCache
    
    init(decoratee: FeedImageDataLoader, cache: FeedImageDataCache) {
        self.decoratee = decoratee
        self.cache = cache
    }
    
    func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
        return decoratee.loadImageData(from: url) { [weak self] result in
            completion(result.map { data in
                self?.cache.save(data, for: url) { _ in }
                return data
            })
        }
        
    }
    
}
