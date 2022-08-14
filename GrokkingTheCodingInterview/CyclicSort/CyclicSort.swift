//
//  CyclicSort.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 06/03/2022.
//

import Foundation

class CyclicSort {
    func sort(nums: inout [Int]) {
        var i = 0
        while i < nums.count {
            let j = nums[i] - 1
            if nums[i] != nums[j] {
                nums.swapAt(i, j)
            } else {
                i += 1
            }
        }
    }
}
