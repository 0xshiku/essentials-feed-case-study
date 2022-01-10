//
//  FeedImageViewModel.swift
//  EssentialsFeediOS
//
//  Created by Chico Pereira on 05/01/2022.
//

import Foundation
import EssentialsFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
