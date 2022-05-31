//
//  FeedImagePresenter.swift
//  EssentialsFeed
//
//  Created by Chico Pereira on 23/01/2022.
//

import Foundation
import EssentialsFeed

public final class FeedImagePresenter {
    
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location
        )
    }
}
