//
//  MaximumCPULoadTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 06/03/2022.
//

import XCTest

class MaximumCPULoadTests: XCTestCase {

    func test() {
        let maximumCPULoad = MaximumCPULoad()
        let jobs = [
            MaximumCPULoad.Job(start: 1, end: 4, cpuLoad: 3),
            MaximumCPULoad.Job(start: 2, end: 5, cpuLoad: 4),
            MaximumCPULoad.Job(start: 7, end: 9, cpuLoad: 6),
        ]
        let res = maximumCPULoad.findMaxCPULoad(jobs: jobs)
        XCTAssertEqual(res, 7)
    }

}
