//
//  CyclicSortTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 06/03/2022.
//

import XCTest

class CyclicSortTests: XCTestCase {

    func test() {
        let cyclicSort = CyclicSort()
        var arr = [3, 1, 5, 4, 2]
        cyclicSort.sort(nums: &arr)
        XCTAssertEqual(arr, [1,2,3,4,5])
    }
}
