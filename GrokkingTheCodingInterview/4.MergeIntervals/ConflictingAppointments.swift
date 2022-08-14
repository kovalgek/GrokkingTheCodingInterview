//
//  ConflictingAppointments.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 05/03/2022.
//

import Foundation

class ConflictingAppointments {

    struct Interval: Equatable {
        var start: Int
        var end: Int
    }

    func canAttendAllAppointments(intervals: [Interval]) -> Bool {

        guard intervals.count >= 2 else {
            return false
        }

        let intervals = intervals.sorted { $0.start < $1.start }

        for i in 1..<intervals.count {
            if intervals[i].start < intervals[i-1].end {
                return false
            }
        }

        return true
    }

    func allConflictingAppointments2(_ intervals: [Interval]) -> [[Interval]] {
        var conflictingAppointments: [[Interval]] = []

        let sortedIntervals = intervals.sorted {$0.start < $1.start}


        var buffer: [Interval] = []

        for i in 1..<sortedIntervals.count {
            if sortedIntervals[i].start < sortedIntervals[i-1].end {

                if buffer.isEmpty {
                    buffer.append(sortedIntervals[i-1])
                }
                buffer.append(sortedIntervals[i])
            } else {
                if !buffer.isEmpty {
                    conflictingAppointments.append(Array(buffer))
                    buffer = []
                }
            }
        }

        if !buffer.isEmpty {
            conflictingAppointments.append(Array(buffer))
        }


        return conflictingAppointments
    }

    func allConflictingAppointments3(_ intervals: [Interval]) -> [[Interval]] {
        var conflictingAppointments: [[Interval]] = []
        let sortedIntervals = intervals.sorted {$0.start < $1.start }
        var tempInterval = sortedIntervals.first!
        for i in 1..<sortedIntervals.count {
            if sortedIntervals[i].start < tempInterval.end {
                conflictingAppointments.append([tempInterval, sortedIntervals[i]])
                if tempInterval.end < sortedIntervals[i].end {
                    tempInterval = sortedIntervals[i]
                }
            } else {
                tempInterval = sortedIntervals[i]
            }
        }
        return conflictingAppointments
    }

    func allConflictingAppointments(_ intervals: [Interval]) -> [[Interval]] {
        var conflictingAppointments: [[Interval]] = []

        let sortedIntervals = intervals.sorted {$0.start < $1.start}
        var start = sortedIntervals.first!.start
        var end = sortedIntervals.first!.end

        var buffer: [Interval] = []

        for i in 1..<sortedIntervals.count {
            if sortedIntervals[i].start < end {
                end = max(end, sortedIntervals[i].end)

                if buffer.isEmpty {
                    buffer.append(Interval(start: start, end: end))
                }
                buffer.append(sortedIntervals[i])
            } else {
                if !buffer.isEmpty {
                    conflictingAppointments.append(Array(buffer))
                    buffer = []
                }

                start = sortedIntervals[i].start
                end = sortedIntervals[i].end
            }
        }

        if !buffer.isEmpty {
            conflictingAppointments.append(Array(buffer))
        }


        return conflictingAppointments
    }

}
