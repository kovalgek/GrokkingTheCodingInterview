//
//  1.Subsets.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 04/02/2022.
//

import Foundation

class Subsets {
    // Time complexity is O(N * 2^N)
    static func findSubsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []

        result.append([])

        for num in nums {
            let n = result.count

            for i in 0..<n {
                var copySet = result[i]
                copySet.append(num)
                result.append(copySet)
            }
        }

        return result
    }
}
