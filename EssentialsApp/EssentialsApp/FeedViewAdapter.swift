//
//  FeedViewAdapter.swift
//  EssentialsApp
//
//  Created by Chico Pereira on 02/04/2022.
//

import UIKit
import EssentialsFeed
import EssentialsFeedPresentation
import EssentialsFeediOS

final class FeedViewAdapter: ResourceView {
    private weak var controller: ListViewController?
    private let imageLoader: (URL) -> FeedImageDataLoader.Publisher
    private let selection: (FeedImage) -> Void
    
    init(controller: ListViewController, imageLoader: @escaping (URL) -> FeedImageDataLoader.Publisher, selection: @escaping (FeedImage) -> Void) {
        self.controller = controller
        self.imageLoader = imageLoader
        self.selection = selection
    }
    
    func display(_ viewModel: FeedViewModel) {
        controller?.display(viewModel.feed.map { model in
            let adapter = LoadResourcePresentationAdapter<Data, WeakRefVirtualProxy<FeedImageCellController>>(loader: { [imageLoader] in
                imageLoader(model.url)
            })
            let view = FeedImageCellController(
                viewModel: FeedImagePresenter.map(model),
                delegate: adapter,
                selection: { [selection] in
                    selection(model)
                    
                }
            )

             adapter.presenter = LoadResourcePresenter(
                 resourceView: WeakRefVirtualProxy(view),
                 loadingView: WeakRefVirtualProxy(view),
                 errorView: WeakRefVirtualProxy(view),
                 mapper: { data in
                     guard let image = UIImage(data: data) else {
                         throw InvalidImageData()
                     }
                     return image
                 })

            return CellController(id: model, view)
        })
    }
    
}

private struct InvalidImageData: Error {}
