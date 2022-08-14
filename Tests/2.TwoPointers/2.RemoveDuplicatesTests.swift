//
//  RemoveDuplicatesTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 29/01/2022.
//

import XCTest

class RemoveDuplicatesTests: XCTestCase {

    func test() {
        var arr = [2,3,3,3,6,9,9]
        RemoveDuplicates.remove(arr: &arr)
        XCTAssertEqual(arr, [2,3,6,9])
    }
}
