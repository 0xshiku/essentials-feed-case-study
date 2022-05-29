//
//  XCTestCase+MemoryLeakTrackingHelper.swift
//  EssentialsFeedAPIEndToEndTests
//
//  Created by Chico Pereira on 28/05/2022.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential Memory Leak", file: file, line: line)
        }
    }
}
