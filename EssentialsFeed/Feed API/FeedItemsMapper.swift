//
//  FeedItemsMapper.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 09/10/2021.
//

import Foundation

 class FeedItemsMapper {
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }
    
    private static var OK_200: Int { return 200 }
    
     static func map(_ data: Data, from response: HTTPURLResponse) throws -> [RemoteFeedItem] {
         
         guard response.isOK, let root = try?
                JSONDecoder().decode(Root.self, from: data) else {
                    throw RemoteFeedLoader.Error.invalidData
                }
        return root.items
    }
}
