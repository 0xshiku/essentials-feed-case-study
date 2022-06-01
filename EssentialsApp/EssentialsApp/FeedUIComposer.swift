//
//  FeedUIComposer.swift
//  EssentialsFeediOS
//
//  Created by Chico Pereira on 03/01/2022.
//

import UIKit
import Combine
import EssentialsFeed
import EssentialsFeedPresentation
import EssentialsFeediOS

public final class FeedUIComposer {
    
    private init() {}
    
    public static func feedComposedWith(feedLoader: @escaping () -> FeedLoader.Publisher, imageLoader: @escaping (URL) -> FeedImageDataLoader.Publisher) -> ListViewController {
        let presentationAdapter = LoadResourcePresentationAdapter<[FeedImage], FeedViewAdapter>(loader: feedLoader)
        
        let feedController = ListViewController.makeWith(delegate: presentationAdapter, title: FeedPresenter.title)
        presentationAdapter.presenter = LoadResourcePresenter(
            resourceView: FeedViewAdapter(controller: feedController, imageLoader: imageLoader ),
            loadingView: WeakRefVirtualProxy(feedController),
            errorView: WeakRefVirtualProxy(feedController),
            mapper: FeedPresenter.map)
        
        return feedController
    }
    
}

private extension ListViewController {
    static func makeWith(delegate: FeedViewControllerDelegate, title: String) -> ListViewController {
        let bundle = Bundle(for: ListViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let feedController = storyboard.instantiateInitialViewController() as! ListViewController
        feedController.delegate = delegate
        feedController.title = FeedPresenter.title
        return feedController
    }
}
