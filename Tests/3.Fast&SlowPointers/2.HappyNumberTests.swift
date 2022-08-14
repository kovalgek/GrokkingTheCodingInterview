//
//  HappyNumberTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 23/02/2022.
//

import XCTest

class HappyNumberTests: XCTestCase {

    func test() {
        let happyNumber = HappyNumber()
        let result1 = happyNumber.find(num: 23)
        XCTAssertTrue(result1)

        let result2 = happyNumber.find(num: 12)
        XCTAssertFalse(result2)
    }

}
