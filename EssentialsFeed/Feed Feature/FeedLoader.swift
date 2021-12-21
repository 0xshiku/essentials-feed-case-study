//
//  FeedLoader.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 19/09/2021.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
