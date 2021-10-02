//
//  HTTPClient.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 01/10/2021.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error?, HTTPURLResponse?) -> Void)
}
