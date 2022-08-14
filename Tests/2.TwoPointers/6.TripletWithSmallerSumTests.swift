//
//  TripletWithSmallerSumTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import XCTest

class TripletWithSmallerSumTests: XCTestCase {

    func test() {
        var arr = [-1, 0, 2, 3]
        let res = TripletWithSmallerSum.searchTriplets(arr: &arr, target: 3)
        XCTAssertEqual(res, 2)
    }

}
