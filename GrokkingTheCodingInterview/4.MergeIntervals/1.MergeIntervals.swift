//
//  1.MergeIntervals.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 26/02/2022.
//

import Foundation

class MergeIntervals {

    struct Interval: Equatable {
        var start: Int
        var end: Int
    }

    func merge(intervals: [Interval]) -> [Interval] {
        guard intervals.count >= 2 else {
            return intervals
        }

        var mergedIntervals: [Interval] = []
        let sortedIntervals = intervals.sorted { $0.start < $1.start }

        var start = sortedIntervals.first!.start
        var end = sortedIntervals.first!.end

        for intervalIndex in 1..<sortedIntervals.count {
            if sortedIntervals[intervalIndex].start <= end {
                end = max(end, sortedIntervals[intervalIndex].end)
            } else {
                mergedIntervals.append(Interval(start: start, end: end))
                start = sortedIntervals[intervalIndex].start
                end = sortedIntervals[intervalIndex].end
            }
        }
        mergedIntervals.append(Interval(start: start, end: end))
        return mergedIntervals
    }
}
