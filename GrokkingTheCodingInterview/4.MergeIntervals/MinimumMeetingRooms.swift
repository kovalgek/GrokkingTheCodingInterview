//
//  MinimumMeetingRooms.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 05/03/2022.
//

import Foundation

class MinimumMeetingRooms {

    struct Meeting: Equatable {
        var start: Int
        var end: Int
    }

    class PriorityQueue {

        private var meetings: [Meeting] = []

        func offer(_ meeting: Meeting) {
            meetings.append(meeting)
            meetings.sort { $0.end < $1.end }
        }

        func peek() -> Meeting {
            meetings.first!
        }

        func poll() {
            meetings.removeFirst()
        }

        var isEmpty: Bool {
            get {
                return size == 0
            }
        }

        var size: Int {
            get {
                meetings.count
            }
        }
    }

    func findMinimumMeetingRooms(meetings: [Meeting]) -> Int {

        guard !meetings.isEmpty else {
            return 0
        }

        let meetings = meetings.sorted { $0.start < $1.start }

        var minRooms = 0
        let minHeap = PriorityQueue()

        for meeting in meetings {

            // remove all meetings that have ended
            while !minHeap.isEmpty && meeting.start >= minHeap.peek().end  {
                minHeap.poll()
            }

            // add the current meeting into the minHeap
            minHeap.offer(meeting)

            // all active meeting are in the minHeap, so we need rooms for all of them.
            minRooms = max(minRooms, minHeap.size)
        }

        return minRooms
    }
}
