//
//  ConflictingAppointmentsTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 05/03/2022.
//

import XCTest

class ConflictingAppointmentsTests: XCTestCase {

    func test() {
        let conflictingAppointments = ConflictingAppointments()
        let intervals = [
            ConflictingAppointments.Interval(start: 2, end: 7),
            ConflictingAppointments.Interval(start: 3, end: 4),
            ConflictingAppointments.Interval(start: 5, end: 6),
        ]
        let result = conflictingAppointments.allConflictingAppointments(intervals)
        print(result)

        let result2 = conflictingAppointments.allConflictingAppointments2(intervals)
        print(result2)
    }

}
