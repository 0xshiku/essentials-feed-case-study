//
//  CoreDataFeedStore+FeedImageDataLoader.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 25/01/2022.
//

import Foundation

extension CoreDataFeedStore: FeedImageDataStore {

     public func insert(_ data: Data, for url: URL, completion: @escaping (FeedImageDataStore.InsertionResult) -> Void) {

     }

     public func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataStore.RetrievalResult) -> Void) {
         completion(.success(.none))
     }

 }
