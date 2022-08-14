//
//  TripletSumCloseToTargetTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import XCTest

class TripletSumCloseToTargetTests: XCTestCase {

    func test() {
        var arr = [-2, 0, 1, 2]
        let res1 = TripletSumCloseToTarget.searchTriplet(arr: &arr, targetSum: 2)
        XCTAssertEqual(res1, 1)
    }
    
}
