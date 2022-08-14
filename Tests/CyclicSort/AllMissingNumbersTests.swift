//
//  AllMissingNumbersTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 07/03/2022.
//

import XCTest

class AllMissingNumbersTests: XCTestCase {

    func test() {
        let allMissingNumbers = AllMissingNumbers()
        var nums = [2, 3, 1, 8, 2, 3, 5, 1]
        let res = allMissingNumbers.findNumbers(nums: &nums)
        XCTAssertEqual(res, [4, 6, 7])
    }

}
