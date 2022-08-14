//
//  MinimumMeetingRoomsTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 05/03/2022.
//

import XCTest

class MinimumMeetingRoomsTests: XCTestCase {

    func test() {
        let minimumMeetingRooms = MinimumMeetingRooms()
        let meetings1 = [
            MinimumMeetingRooms.Meeting(start: 4, end: 5),
            MinimumMeetingRooms.Meeting(start: 2, end: 3),
            MinimumMeetingRooms.Meeting(start: 2, end: 4),
            MinimumMeetingRooms.Meeting(start: 3, end: 5),
        ]
        let res1 = minimumMeetingRooms.findMinimumMeetingRooms(meetings: meetings1)
        XCTAssertEqual(res1, 2)

        let meetings2 = [
            MinimumMeetingRooms.Meeting(start: 1, end: 4),
            MinimumMeetingRooms.Meeting(start: 2, end: 5),
            MinimumMeetingRooms.Meeting(start: 7, end: 9),
        ]
        let res2 = minimumMeetingRooms.findMinimumMeetingRooms(meetings: meetings2)
        XCTAssertEqual(res2, 2)

        let meetings3 = [
            MinimumMeetingRooms.Meeting(start: 6, end: 7),
            MinimumMeetingRooms.Meeting(start: 2, end: 4),
            MinimumMeetingRooms.Meeting(start: 8, end: 12),
        ]
        let res3 = minimumMeetingRooms.findMinimumMeetingRooms(meetings: meetings3)
        XCTAssertEqual(res3, 1)
    }

}
