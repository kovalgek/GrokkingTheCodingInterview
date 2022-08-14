//
//  MaxSumSubArrayOfSizeK.swift
//  GrokkinPatterns
//
//  Created by Anton Kovalchuk on 29/10/2021.
//

import Foundation

/// Given an array of positive numbers and a positive number ‘k,’ find the maximum sum of any contiguous subarray of size ‘k’.
class MaxSumSubArrayOfSizeK {

    static func findMaxSumSubArray(k: Int, arr: [Int]) -> Int {

        var windowStart = 0
        var windowSum = 0
        var maxSum = 0

        for windowEnd in 0..<arr.count {

            windowSum += arr[windowEnd]

            if windowEnd >= k - 1 {
                maxSum = max(maxSum, windowSum)
                windowSum -= arr[windowStart]
                windowStart += 1
            }
        }
        return maxSum
    }
}
