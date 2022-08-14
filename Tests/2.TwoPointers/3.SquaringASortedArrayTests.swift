//
//  SquaringASortedArrayTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import XCTest

class SquaringASortedArrayTests: XCTestCase {

    func test() {
        let result = SquaringASortedArray.makeSquares(arr: [-2, -1, 0, 2, 3])
        XCTAssertEqual(result, [0,1,4,4,9])
    }

}
