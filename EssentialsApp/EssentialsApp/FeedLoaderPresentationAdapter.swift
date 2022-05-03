//
//  FeedLoaderPresentationAdapter.swift
//  EssentialsApp
//
//  Created by Chico Pereira on 02/04/2022.
//

import UIKit
import Combine
import EssentialsFeed
import EssentialsFeedPresentation
import EssentialsFeediOS

final class FeedLoaderPresentationAdapter: FeedViewControllerDelegate {
    private let feedLoader: () -> FeedLoader.Publisher
    private var cancellable: Cancellable?
    var presenter: FeedPresenter?
    
    init(feedLoader: @escaping () -> FeedLoader.Publisher) {
        self.feedLoader = feedLoader
    }
    
    func didRequestFeedRefresh() {
        presenter?.didStartLoadingFeed()
        
        cancellable = feedLoader().sink(receiveCompletion: { [weak self] completion in
            switch completion {
            case .finished: break
            case let .failure(error):
                self?.presenter?.didFinishLoadingFeed(with: error)
            }
        }, receiveValue: { [weak self] feed in
            self?.presenter?.didFinishLoadingFeed(with: feed)
        })
        

    }
}
