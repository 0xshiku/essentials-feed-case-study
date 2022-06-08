//
//  ImageCommentsSnapshotTests.swift
//  EssentialsFeediOSTests
//
//  Created by Chico Pereira on 05/06/2022.
//

import XCTest
import EssentialsFeedPresentation
import EssentialsFeediOS
@testable import EssentialsFeed

class ImageCommentsSnapshotTests: XCTestCase {
    
    func test_listWithComments() {
        let sut = makeSUT()
        
        sut.display(comments())
        
        assert(snapshot: sut.snapshot(for: .iPhone13(style: .light)), named: "IMAGE_COMMENTS_light")
        assert(snapshot: sut.snapshot(for: .iPhone13(style: .dark)), named: "IMAGE_COMMENTS_dark")
    }
    
    //MARK: - Helpers
    
    private func makeSUT() -> ListViewController {
        let bundle = Bundle(for: ListViewController.self)
        let storyboard = UIStoryboard(name: "ImageComments", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController() as! ListViewController
        controller.loadViewIfNeeded()
        controller.tableView.showsVerticalScrollIndicator = false
        controller.tableView.showsHorizontalScrollIndicator = false
        return controller
    }
    
    private func comments() -> [CellController] {
        commentsControllers().map { CellController($0) }
    }
    
    private func commentsControllers() -> [ImageCommentCellController] {
        return [
            ImageCommentCellController(
                model: ImageCommentViewModel(
                    message: "The East Side Gallery is an open-air gallery in Berlin. It consists of a series of murals painted directly on 1,316m long remnant of the Berlin Wall, located near the centre of Berlin, on Muhlenstrabe in Friedrichshain-Kreuzberg. The gallery has official status as Denkmal, or heritage-protected landmark.",
                    date: "1000 years ago",
                    username: "a long long long username"
                )
            ),
            ImageCommentCellController(
                model: ImageCommentViewModel(
                    message: "Garth Pier is a Grade II listed structure in Bangor, Gwynedd, North Wales.",
                    date: "10 days ago",
                    username: "a username"
                )
            ),
            ImageCommentCellController(
                model: ImageCommentViewModel(
                    message: "Nice",
                    date: "1 hour ago",
                    username: "a."
                )
            ),
        ]
    }
    
}
