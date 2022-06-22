//
//  FeedImageDataLoader.swift
//  EssentialsFeediOS
//
//  Created by Chico Pereira on 02/01/2022.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
