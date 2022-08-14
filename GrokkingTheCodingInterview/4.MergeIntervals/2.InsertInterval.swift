//
//  2.InsertInterval.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 02/03/2022.
//

import Foundation

class InsertInterval {

    struct Interval: Equatable {
        var start: Int
        var end: Int
    }

    func insert(intervals: [Interval], newInterval: Interval) -> [Interval] {
        guard !intervals.isEmpty else {
            return intervals
        }

        var mergedIntervals: [Interval] = []

        var i = 0
        while i < intervals.count && intervals[i].end < newInterval.start {
            mergedIntervals.append(intervals[i])
            i+=1
        }

        var cNewInterval = newInterval
        while i < intervals.count && intervals[i].start <= cNewInterval.end {
            cNewInterval.start = min(cNewInterval.start, intervals[i].start)
            cNewInterval.end = max(cNewInterval.end, intervals[i].end)
            i+=1
        }
        mergedIntervals.append(cNewInterval)

        while i < intervals.count {
            mergedIntervals.append(intervals[i])
            i+=1
        }

        return mergedIntervals
    }
}
