//
//  XCTestCase+MemoryLeakTrackingHelper.swift
//  EssentialsFeedAPITests
//
//  Created by Chico Pereira on 24/04/2022.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential Memory Leak", file: file, line: line)
        }
    }
}
