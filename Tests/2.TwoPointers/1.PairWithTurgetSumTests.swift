//
//  1.PairWithTurgetSumTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 29/01/2022.
//

import XCTest

class PairWithTurgetSumTests: XCTestCase {
    func test() {
        let result1 = PairWithTurgetSum.search(arr: [1,2,3,4,6], targetSum: 6)
        XCTAssertEqual(result1, [1,3])
        let result2 = PairWithTurgetSum.search(arr: [2,5,9,11], targetSum: 11)
        XCTAssertEqual(result2, [0,2])
    }
}
