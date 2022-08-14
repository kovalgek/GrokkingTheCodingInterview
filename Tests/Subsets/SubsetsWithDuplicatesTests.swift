//
//  SubsetsWithDuplicatesTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 04/02/2022.
//

import XCTest

class SubsetsWithDuplicatesTests: XCTestCase {

    func test() {
        var arr = [1,3,3,5]
        let result = SubsetsWithDuplicates.findSubsets(nums: &arr)
        XCTAssertEqual(result, [[], [1], [3], [1,3], [3,3], [1,3,3], [5], [1,5], [3,5], [1,3,5], [3,3,5], [1,3,3,5]])
    }
}
