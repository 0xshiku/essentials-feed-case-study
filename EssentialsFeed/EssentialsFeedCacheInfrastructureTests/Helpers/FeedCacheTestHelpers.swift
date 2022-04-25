//
//  FeedCacheTestHelpers.swift
//  EssentialsFeedCacheInfrastructureTests
//
//  Created by Chico Pereira on 25/04/2022.
//

import Foundation
import EssentialsFeed
import EssentialsFeedCache

func uniqueImage() -> FeedImage {
    return FeedImage(id: UUID(), description: "any", location: "any", url: anyURL())
}

func uniqueImageFeed() -> (models: [FeedImage], local: [LocalFeedImage]) {
    let models = [uniqueImage(), uniqueImage()]
    let local = models.map { LocalFeedImage(id: $0.id, description: $0.description, location: $0.location, url: $0.url)}
    return (models, local)
}
