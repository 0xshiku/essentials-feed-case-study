//
//  FeedImageDataStoreSpy.swift
//  EssentialsFeedTests
//
//  Created by Chico Pereira on 25/01/2022.
//

import Foundation
import EssentialsFeed

class FeedImageDataStoreSpy: FeedImageDataStore {
    public enum Message: Equatable {
        case insert(data: Data, for: URL)
        case retrieve(dataFor: URL)
    }
    
    private var completions = [(FeedImageDataStore.RetrievalResult) -> Void]()
    
    private(set) var receivedMessages = [Message]()
    
    func insert(_ data: Data, for url: URL, completion: @escaping (FeedImageDataStore.InsertionResult) -> Void) {
        receivedMessages.append(.insert(data: data, for: url))
    }
    
    func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.RetrievalResult) -> Void) {
        receivedMessages.append(.retrieve(dataFor: url))
        completions.append(completion)
    }
    
    func completeRetrieval(with error: Error, at index: Int = 0) {
        completions[index](.failure(error))
    }
    
    func completeRetrieval(with data: Data?, at index: Int = 0) {
        completions[index](.success(data))
    }
}
