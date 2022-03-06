//
//  FeedLoaderStub.swift
//  EssentialsAppTests
//
//  Created by Chico Pereira on 06/03/2022.
//

import Foundation
import EssentialsFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
