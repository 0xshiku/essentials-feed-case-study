//
//  ImageCommentCellController.swift
//  EssentialsFeediOS
//
//  Created by Chico Pereira on 05/06/2022.
//

import UIKit
import EssentialsFeedPresentation

public class ImageCommentCellController: CellController {
    private let model: ImageCommentViewModel
    
    public init(model: ImageCommentViewModel) {
        self.model = model
    }
    
    public func view(in tableView: UITableView) -> UITableViewCell {
        let cell: ImageCommentCell = tableView.dequeueReusableCell()
        cell.messageLabel.text = model.message
        cell.usernameLabel.text = model.username
        cell.dateLabel.text = model.date
        return cell
    }
    
    
}
