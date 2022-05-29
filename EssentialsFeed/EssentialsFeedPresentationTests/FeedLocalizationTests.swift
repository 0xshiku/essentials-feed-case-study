//
//  FeedLocalizationTests.swift
//  EssentialsFeediOSTests
//
//  Created by Chico Pereira on 16/01/2022.
//

import EssentialsFeedPresentation
import XCTest

class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)

        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
