//
//  RemoteFeedItem.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 06/11/2021.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
   internal let id: UUID
   internal let description: String?
   internal let location: String?
   internal let image: URL
}
