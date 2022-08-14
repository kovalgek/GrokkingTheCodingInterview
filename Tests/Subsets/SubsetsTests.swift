//
//  SubsetsTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 04/02/2022.
//

import XCTest

class SubsetsTests: XCTestCase {

    func test() {
        let result = Subsets.findSubsets([1, 5, 3])
        XCTAssertEqual(result, [[], [1], [5], [1, 5], [3], [1, 3], [5, 3], [1, 5, 3]])
    }
}
