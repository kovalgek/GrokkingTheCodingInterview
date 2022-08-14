//
//  DutchFlag.swift
//  Tests
//
//  Created by Anton Kovalchuk on 14/08/2022.
//

import XCTest

class DutchFlagTests: XCTestCase {

    func test() {
        var arr1 = [1, 0, 2, 1, 0]
        DutchFlag.sort(arr: &arr1)
        XCTAssertEqual(arr1, [0, 0, 1, 1, 2])
        
        var arr2 = [2, 2, 0, 1, 2, 0]
        DutchFlag.sort(arr: &arr2)
        XCTAssertEqual(arr2,[0, 0, 1, 2, 2, 2,])
    }

}
