//
//  FeedItem.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 19/09/2021.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
