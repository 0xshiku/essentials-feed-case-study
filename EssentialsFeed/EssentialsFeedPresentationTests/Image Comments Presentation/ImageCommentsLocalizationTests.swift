//
//  ImageCommentsLocalizationTests.swift
//  EssentialsFeedPresentationTests
//
//  Created by Chico Pereira on 31/05/2022.
//

import XCTest
import EssentialsFeedPresentation

class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
