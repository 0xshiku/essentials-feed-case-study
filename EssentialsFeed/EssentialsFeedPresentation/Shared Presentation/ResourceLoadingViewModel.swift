//
//  FeedLoadingViewModel.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 22/01/2022.
//

import Foundation

public struct ResourceLoadingViewModel {
    public let isLoading: Bool
    
    public init(isLoading: Bool) {
        self.isLoading = isLoading
    }
}
