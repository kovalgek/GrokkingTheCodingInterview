//
//  MinSizeSubArraySum.swift
//  GrokkinPatterns
//
//  Created by Anton Kovalchuk on 29/10/2021.
//

import Foundation

/// Given an array of positive numbers and a positive number ‘S,’ find the length of the smallest contiguous subarray whose sum is greater than or equal to ‘S’. Return 0 if no such subarray exists.
class MinSizeSubArraySum {
    static func findMinSubArray(s: Int, arr: [Int]) -> Int {

        var windowSum = 0
        var minLenght = Int.max
        var windowStart = 0

        for windowEnd in 0..<arr.count {

            windowSum += arr[windowEnd]

            while windowSum >= s {
                minLenght = min(minLenght, windowEnd - windowStart + 1)
                windowSum -= arr[windowStart]
                windowStart += 1
            }
        }

        return minLenght == Int.max ? 0 : minLenght
    }
}
