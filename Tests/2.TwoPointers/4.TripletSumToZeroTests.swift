//
//  TripletSumToZeroTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import XCTest

class TripletSumToZeroTests: XCTestCase {

    func test() {
        var arr = [-3, 0, 1, 2, -1, 1, -2]
        let result = TripletSumToZero.searchTriplets(arr: &arr)
        XCTAssertEqual(result, [[-3, 1, 2], [-2, 0, 2], [-2, 1, 1], [-1, 0, 1]])
    }

}
