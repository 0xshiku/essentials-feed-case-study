//
//  RemoteFeedLoader.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 01/10/2021.
//

import Foundation
import EssentialsFeed

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
