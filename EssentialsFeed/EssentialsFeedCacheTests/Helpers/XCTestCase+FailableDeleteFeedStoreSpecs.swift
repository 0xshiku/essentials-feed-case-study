//
//  XCTestCase+FailableDeleteFeedStoreSpecs.swift
//  EssentialsFeedCacheTests
//
//  Created by Chico Pereira on 25/04/2022.
//

import XCTest
import EssentialsFeedCache

 extension FailableDeleteFeedStoreSpecs where Self: XCTestCase {
     func assertThatDeleteDeliversErrorOnDeletionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
         let deletionError = deleteCache(from: sut)

         XCTAssertNotNil(deletionError, "Expected cache deletion to fail", file: file, line: line)
     }

     func assertThatDeleteHasNoSideEffectsOnDeletionError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
         deleteCache(from: sut)

         expect(sut, toRetrieve: .success(.none), file: file, line: line)
     }
 }
