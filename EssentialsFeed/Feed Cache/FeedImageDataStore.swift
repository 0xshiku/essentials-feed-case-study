//
//  FeedImageDataStore.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 25/01/2022.
//

import Foundation

 public protocol FeedImageDataStore {
     typealias Result = Swift.Result<Data?, Error>

     func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
 }
