//
//  6.NoRepeatSubstringTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 18/11/2021.
//

import XCTest

class NoRepeatSubstringTests: XCTestCase {

    func test() {
        let res1 = NoRepeatSubstring.findLength(str: "aabccbb")
        XCTAssertEqual(res1, 3)

        let res2 = NoRepeatSubstring.findLength(str: "abbbb")
        XCTAssertEqual(res2, 2)

        let res3 = NoRepeatSubstring.findLength(str: "abccde")
        XCTAssertEqual(res3, 3)
    }
}
