//
//  MaxSumSubArrayOfSizeK.swift
//  Tests
//
//  Created by Anton Kovalchuk on 03/11/2021.
//

import XCTest

class MaxSumSubArrayOfSizeKTests: XCTestCase {

    func test() {
        let result1 = MaxSumSubArrayOfSizeK.findMaxSumSubArray(k: 3, arr: [2, 1, 5, 1, 3, 2])
        XCTAssertEqual(result1, 9)

        let result2 = MaxSumSubArrayOfSizeK.findMaxSumSubArray(k: 2, arr: [2, 3, 4, 1, 5])
        XCTAssertEqual(result2, 7)
    }

}
