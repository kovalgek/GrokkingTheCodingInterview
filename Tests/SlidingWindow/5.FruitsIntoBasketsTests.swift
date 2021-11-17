//
//  FruitsIntoBasketsTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 06/11/2021.
//

import XCTest

class FruitsIntoBasketsTests: XCTestCase {

    func test() {
        let res = FruitsIntoBaskets.findLength(arr: "ABCAC")
        XCTAssertEqual(res, 3)
    }
}
