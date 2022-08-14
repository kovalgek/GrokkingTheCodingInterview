//
//  1.PairWithTurgetSum.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 29/01/2022.
//

import Foundation

/// Given an array of sorted numbers and a target sum, find a pair in the array whose sum is equal to the given target.
class PairWithTurgetSum {
    static func search(arr: [Int], targetSum: Int) -> [Int] {

        var left = 0
        var right = arr.count - 1

        while left <= right {
            let sum = arr[left] + arr[right]
            if sum < targetSum {
                left += 1
            } else if sum > targetSum {
                right -= 1
            } else {
                return [left, right]
            }
        }
        return [-1, -1]
    }
    
    static func searchAlternative(arr: [Int], targetSum: Int) -> [Int] {
        
        var nums: [Int : Int] = [:]
        for idx in 0..<arr.count {
            if let searchIdx = nums[targetSum - arr[idx]] {
                return [searchIdx, idx]
            } else {
                nums[arr[idx]] = idx
            }
        }
        return [-1,-1]
    }
}
