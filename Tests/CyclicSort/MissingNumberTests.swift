//
//  MissingNumberTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 07/03/2022.
//

import XCTest

class MissingNumberTests: XCTestCase {

    func test() {
        let missingNumber = MissingNumber()
        var nums = [4, 0, 3, 1]
        let res = missingNumber.findMissingNumber(nums: &nums)
        print(nums)
        XCTAssertEqual(res, 2)
    }

}
