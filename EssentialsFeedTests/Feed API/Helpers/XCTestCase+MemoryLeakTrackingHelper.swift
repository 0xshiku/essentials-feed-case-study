//
//  XCTestCase+MemoryLeakTrackingHelper.swift
//  EssentialsFeedTests
//
//  Created by Chico Pereira on 20/10/2021.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential Memory Leak", file: file, line: line)
        }
    }
}
