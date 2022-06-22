//
//  FeedImageDataStore.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 25/01/2022.
//

import Foundation

 public protocol FeedImageDataStore {
     func insert(_ data: Data, for url: URL) throws
     func retrieve(dataForURL url: URL) throws -> Data?
 }
