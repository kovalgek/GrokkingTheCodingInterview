//
//  InsertIntervalTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 02/03/2022.
//

import XCTest

class InsertIntervalTests: XCTestCase {

    func test() {
        let insertInterval = InsertInterval()
        let intervals = [
            InsertInterval.Interval(start: 1, end: 3),
            InsertInterval.Interval(start: 5, end: 7),
            InsertInterval.Interval(start: 8, end: 12)
        ]
        let result = insertInterval.insert(intervals: intervals, newInterval: InsertInterval.Interval(start: 4, end: 6))
        XCTAssertEqual(result[0], InsertInterval.Interval(start: 1, end: 3))
        XCTAssertEqual(result[1], InsertInterval.Interval(start: 4, end: 7))
        XCTAssertEqual(result[2], InsertInterval.Interval(start: 8, end: 12))
    }

}
