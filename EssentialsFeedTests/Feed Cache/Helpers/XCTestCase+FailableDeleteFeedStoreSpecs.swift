//
//  XCTestCase+FailableDeleteFeedStoreSpecs.swift
//  EssentialsFeedTests
//
//  Created by Chico Pereira on 30/11/2021.
//

import XCTest
import EssentialsFeed

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
