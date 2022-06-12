//
//  CommentsUIComposer.swift
//  EssentialsApp
//
//  Created by Chico Pereira on 12/06/2022.
//

import UIKit
import Combine
import EssentialsFeed
import EssentialsFeedPresentation
import EssentialsFeediOS

public final class CommentsUIComposer {
    
    private init() {}
    
    public static func commentsComposedWith(commentsLoader: @escaping () -> FeedLoader.Publisher) -> ListViewController {
        let presentationAdapter = LoadResourcePresentationAdapter<[FeedImage], FeedViewAdapter>(loader: commentsLoader)
        
        let feedController = makeWith(title: ImageCommentsPresenter.title)
        feedController.onRefresh = presentationAdapter.loadResource
        presentationAdapter.presenter = LoadResourcePresenter(
            resourceView: FeedViewAdapter(controller: feedController, imageLoader: {_ in Empty<Data, Error>().eraseToAnyPublisher()}),
            loadingView: WeakRefVirtualProxy(feedController),
            errorView: WeakRefVirtualProxy(feedController),
            mapper: FeedPresenter.map)
        
        return feedController
    }
    
    private static func makeWith(title: String) -> ListViewController {
        let bundle = Bundle(for: ListViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let feedController = storyboard.instantiateInitialViewController() as! ListViewController
        feedController.title = title
        return feedController
    }
    
}

