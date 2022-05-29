//
//  SharedLocalizationStringsTests.swift
//  EssentialsFeedPresentationTests
//
//  Created by Chico Pereira on 29/05/2022.
//

import EssentialsFeedPresentation
import XCTest

class SharedLocalizationTests: XCTestCase {

    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
        
    // MARK: - Helpers
    
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }

}
