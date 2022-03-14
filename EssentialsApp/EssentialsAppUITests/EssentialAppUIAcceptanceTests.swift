//
//  EssentialAppUIAcceptanceTests.swift
//  EssentialsAppUITests
//
//  Created by Chico Pereira on 13/03/2022.
//

import XCTest

class EssentialAppUIAccentanceTests: XCTestCase {
    
    func test_onLaunch_displayRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()
        
        app.launch()
        
        let feedCells = app.cells.matching(identifier: "feed-image-cell")
        XCTAssertEqual(feedCells.count, 22)
        
        let firstImage = app.images.matching(identifier: "feed-image-view").firstMatch
        XCTAssertTrue(firstImage.exists)
    }
}
