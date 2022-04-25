//
//  XCTestCase+FailableRetrieveFeedStoreSpecs.swift
//  EssentialsFeedCacheTests
//
//  Created by Chico Pereira on 25/04/2022.
//

import XCTest
import EssentialsFeedCache

extension FailableRetrieveFeedStoreSpecs where Self: XCTestCase {
     func assertThatRetrieveDeliversFailureOnRetrievalError(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
         expect(sut, toRetrieve: .failure(anyNSError()), file: file, line: line)
     }

     func assertThatRetrieveHasNoSideEffectsOnFailure(on sut: FeedStore, file: StaticString = #file, line: UInt = #line) {
         expect(sut, toRetrieveTwice: .failure(anyNSError()), file: file, line: line)
     }
 }
