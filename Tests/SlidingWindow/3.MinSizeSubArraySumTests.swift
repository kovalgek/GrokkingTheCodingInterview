//
//  MinSizeSubArraySum.swift
//  Tests
//
//  Created by Anton Kovalchuk on 03/11/2021.
//

import XCTest

class MinSizeSubArraySumTests: XCTestCase {

    func test() {
        let minSum = MinSizeSubArraySum.findMinSubArray(s: 7, arr: [2, 1, 5, 2, 3, 2])
        XCTAssertEqual(minSum, 2)
    }
}
