//
//  FeedLoader.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 19/09/2021.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
