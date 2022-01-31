//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialsAppTests
//
//  Created by Chico Pereira on 31/01/2022.
//

import XCTest

extension XCTestCase {
     func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
         addTeardownBlock { [weak instance] in
             XCTAssertNil(instance, "Instance should have been deallocated. Potential memory leak.", file: file, line: line)
         }
     }
 }
