//
//  FeedLoader.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 19/09/2021.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
