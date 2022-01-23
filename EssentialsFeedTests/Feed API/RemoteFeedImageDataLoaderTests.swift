//
//  RemoteFeedImageDataLoaderTests.swift
//  EssentialsFeedTests
//
//  Created by Chico Pereira on 23/01/2022.
//

import XCTest
import EssentialsFeed

class RemoteFeedImageDataLoader {
    init (client: Any) {
        
    }
}

class RemoteFeedImageDataLoaderTests: XCTestCase {
    
    func test_init_doesNotPerformAnyURLRequest() {
        let (_, client) = makeSUT()
        
        XCTAssertTrue(client.requestedURLs.isEmpty)
    }
    
    // MARK: - Helpers
    
    private func makeSUT(url: URL = anyURL(), file: StaticString = #file, line: UInt = #line) -> (sut: RemoteFeedImageDataLoader, client: HTTPClientSpy) {
         let client = HTTPClientSpy()
         let sut = RemoteFeedImageDataLoader(client: client)
         trackForMemoryLeaks(sut, file: file, line: line)
         trackForMemoryLeaks(client, file: file, line: line)
         return (sut, client)
     }

     private class HTTPClientSpy {
         var requestedURLs = [URL]()
     }
}
