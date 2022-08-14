//
//  CircularArrayLoopTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 25/02/2022.
//

import XCTest

class CircularArrayLoopTests: XCTestCase {

    func test() {
        let circularArrayLoop = CircularArrayLoop()
        XCTAssertTrue(circularArrayLoop.loopExists(arr: [1, 2, -1, 2, 2]))
        XCTAssertTrue(circularArrayLoop.loopExists(arr: [2, 2, -1, 2 ]))
        XCTAssertFalse(circularArrayLoop.loopExists(arr: [2, 1, -1, -2]))
    }

}
