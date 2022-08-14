//
//  MissingNumber.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 07/03/2022.
//

import Foundation

class MissingNumber {
    func findMissingNumber(nums: inout [Int]) -> Int {
        var i = 0
        while i < nums.count {
            if nums[i] < nums.count && nums[i] != nums[nums[i]] {
                nums.swapAt(i, nums[i])
            } else {
                i += 1
            }
        }

        for i in 0..<nums.count {
            if nums[i] != i {
                return i
            }
        }

        return nums.count
    }
}
