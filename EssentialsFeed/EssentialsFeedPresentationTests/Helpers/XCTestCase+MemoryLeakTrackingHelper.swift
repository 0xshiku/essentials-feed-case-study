//
//  XCTestCase+MemoryLeakTrackingHelper.swift
//  EssentialsFeedPresentationTests
//
//  Created by Chico Pereira on 25/04/2022.
//

import Foundation
import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potential Memory Leak", file: file, line: line)
        }
    }
}
