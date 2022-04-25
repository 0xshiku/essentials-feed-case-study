//
//  RemoteFeedItem.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 06/11/2021.
//

import Foundation

 struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
