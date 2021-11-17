//
//  LongestSubstringKDistinct.swift
//  Tests
//
//  Created by Anton Kovalchuk on 03/11/2021.
//

import XCTest

class LongestSubstringKDistinctTests: XCTestCase {

    func test() {
        let res = LongestSubstringKDistinct.findLength(str: "araaci", k: 2)
        XCTAssertEqual(res, 4)
    }
}
