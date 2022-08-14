//
//  7.CharacterReplacementTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 18/11/2021.
//

import XCTest

class CharacterReplacementTests: XCTestCase {

    func test() {
        let res1 = CharacterReplacement.findLength(str: "aabccbb", k: 2)
        XCTAssertEqual(res1, 2)
    }

}
