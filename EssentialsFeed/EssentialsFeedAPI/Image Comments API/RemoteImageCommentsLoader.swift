//
//  RemoteImageCommentsLoader.swift
//  EssentialsFeedAPI
//
//  Created by Chico Pereira on 12/05/2022.
//

import Foundation
import EssentialsFeed

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
