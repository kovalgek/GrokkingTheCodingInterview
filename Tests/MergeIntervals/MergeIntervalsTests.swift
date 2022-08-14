//
//  MergeIntervalsTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 26/02/2022.
//

import XCTest

class MergeIntervalsTests: XCTestCase {

    func test() {
        let mergeIntervals = MergeIntervals()
        let intervals = [
            MergeIntervals.Interval(start: 1, end: 4),
            MergeIntervals.Interval(start: 2, end: 5),
            MergeIntervals.Interval(start: 7, end: 9)
        ]
        let result = mergeIntervals.merge(intervals: intervals)
        XCTAssertEqual(result[0], MergeIntervals.Interval(start: 1, end: 5))
        XCTAssertEqual(result[1], MergeIntervals.Interval(start: 7, end: 9))
    }

}
