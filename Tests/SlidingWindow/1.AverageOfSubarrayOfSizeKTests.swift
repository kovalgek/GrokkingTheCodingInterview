//
//  Tests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 01/11/2021.
//

import XCTest

class AverageOfSubarrayOfSizeKTests: XCTestCase {

    func test() {
        let arr = [1, 3, 2, 6, -1, 4, 1, 8, 2]
        let result = AverageOfSubarrayOfSizeK.findAverages(k: 5, arr: arr)
        XCTAssertEqual(result, [2.2, 2.8, 2.4, 3.6, 2.8])
    }
}
