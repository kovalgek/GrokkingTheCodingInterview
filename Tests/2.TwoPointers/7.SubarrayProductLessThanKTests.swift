//
//  SubarrayProductLessThanKTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import XCTest

class SubarrayProductLessThanKTests: XCTestCase {

    func test() {
        let result = SubarrayProductLessThanK.findSubarrays(arr: [2, 5, 3, 10], target: 30)
        XCTAssertEqual(result, [[2], [5], [2, 5], [3], [5, 3], [10]])
    }

}
