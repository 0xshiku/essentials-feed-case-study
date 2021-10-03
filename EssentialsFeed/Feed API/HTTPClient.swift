//
//  HTTPClient.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 01/10/2021.
//

import Foundation

public enum HTTPClientResult {
    case success(HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
