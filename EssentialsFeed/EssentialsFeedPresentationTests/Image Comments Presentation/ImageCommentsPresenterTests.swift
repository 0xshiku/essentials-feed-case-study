//
//  ImageCommentsPresenterTests.swift
//  EssentialsFeedPresentationTests
//
//  Created by Chico Pereira on 31/05/2022.
//

import XCTest
import EssentialsFeedPresentation
import EssentialsFeed

class ImageCommentsPresenterTests: XCTestCase {
    func test_title_isLocalized() {
        XCTAssertEqual(ImageCommentsPresenter.title, localized("IMAGE_COMMENTS_VIEW_TITLE"))
    }
    
    func test_map_createsViewModels() {
        let now = Date()
        let comments = [
            ImageComment(id: UUID(), message: "a message", createdAt: now.adding(minutes: -5), username: "a username"),
            ImageComment(id: UUID(), message: "another message", createdAt: now.adding(days: -1), username: "another username")
        ]
        
        let viewModel = ImageCommentsPresenter.map(comments)
        
        XCTAssertEqual(viewModel.comments, [
            ImageCommentViewModel(message: "a message", date: "5 minutes ago", username: "a username"),
            ImageCommentViewModel(message: "another message", date: "1 day ago", username: "another username"),
        ])
    }
    
    // MARK: - Helper
    
    func localized(_ key: String, file: StaticString = #file, line: UInt = #line) -> String {
        let table = "ImageComments"
        let bundle = Bundle(for: FeedPresenter.self)
        let value = bundle.localizedString(forKey: key, value: nil, table: table)
        if value == key {
            XCTFail("Missing localized string for key: \(key) in table: \(table)", file: file, line: line)
        }
        return value
    }
}

extension Date {
    func adding(minutes: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .minute, value: minutes, to: self)!
    }
    
    func adding(days: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
}
