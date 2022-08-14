//
//  2.SubsetsWithDuplicates.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 04/02/2022.
//

import Foundation

class SubsetsWithDuplicates {
    
    // Time complexity is O(N * 2^N)
    static func findSubsets(nums: inout [Int]) -> [[Int]] {
        nums.sort()

        var result: [[Int]] = []
        result.append([])
        var startIdx = 0
        var endIdx = 0

        for i in 0..<nums.count {

            if i > 0 && nums[i] == nums[i-1] {
                startIdx = endIdx + 1
            } else {
                startIdx = 0
            }
            endIdx = result.count - 1
            for j in startIdx...endIdx {
                var set = result[j]
                set.append(nums[i])
                result.append(set)
            }
        }

        return result
    }
}
