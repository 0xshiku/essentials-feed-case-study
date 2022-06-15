//
//  LoadMoreCellController.swift
//  EssentialsFeediOS
//
//  Created by Chico Pereira on 14/06/2022.
//

import UIKit
import EssentialsFeed
import EssentialsFeedPresentation

public class LoadMoreCellController: NSObject, UITableViewDataSource {
    
    private let cell = LoadMoreCell()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cell
    }
    
}

extension LoadMoreCellController: ResourceLoadingView, ResourceErrorView {
    
    public func display(_ viewModel: ResourceErrorViewModel) {
        cell.message = viewModel.message
    }
    
    public func display(_ viewModel: ResourceLoadingViewModel) {
        cell.isLoading = viewModel.isLoading
    }
}
