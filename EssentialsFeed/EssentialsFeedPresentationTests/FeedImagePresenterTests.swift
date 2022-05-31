//
//  FeedImagePresenterTests.swift
//  EssentialsFeedTests
//
//  Created by Chico Pereira on 23/01/2022.
//

import XCTest
import EssentialsFeed
import EssentialsFeedPresentation

class FeedImagePresenterTests: XCTestCase {
    
    func test_map_createsViewModel() {
        let image = uniqueImage()
        
        let viewModel = FeedImagePresenter.map(image)
        
        XCTAssertEqual(viewModel.description, image.description)
        XCTAssertEqual(viewModel.location, image.location)
    }
}
