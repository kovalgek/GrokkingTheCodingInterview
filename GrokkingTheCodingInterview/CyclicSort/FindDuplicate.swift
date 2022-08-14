//
//  FindDuplicate.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 07/03/2022.
//

import Foundation

class FindDuplicate {
    func findNumber(nums: inout [Int]) -> Int {
        var i = 0
        while i < nums.count {
            if nums[i] != i + 1 {
                if nums[i] != nums[nums[i] - 1] {
                    nums.swapAt(i, nums[i] - 1)
                } else {
                    return nums[i]
                }
            } else {
                i += 1
            }
        }
    }
}
