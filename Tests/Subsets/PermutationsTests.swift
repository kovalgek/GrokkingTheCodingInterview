//
//  PermutationsTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 04/02/2022.
//

import XCTest

class PermutationsTests: XCTestCase {

    func test () {
        var nums = [1,2,3]
        let result = Permutations.findPermutationsBacktracking(&nums)
        print(result)
    }
}
