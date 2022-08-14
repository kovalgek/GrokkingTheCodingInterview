//
//  AllMissingNumbers.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 07/03/2022.
//

import Foundation

class AllMissingNumbers {
    func findNumbers(nums: inout [Int]) -> [Int] {
        var i = 0
        while i < nums.count {
            if nums[i] != nums[nums[i] - 1] {
                nums.swapAt(i, nums[i] - 1)
            } else {
                i += 1
            }
        }

        var missingNumbers: [Int] = []
        for i in 0..<nums.count {
            if nums[i] != i + 1 {
                missingNumbers.append(i + 1)
            }
        }

        return missingNumbers
    }
}
