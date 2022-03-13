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
        
        XCTAssertEqual(app.cells.count, 22)
        XCTAssertEqual(app.cells.firstMatch.images.count, 0)
    }
}
