//
//  AverageOfSubarrayOfSizeK.swift
//  GrokkinPatterns
//
//  Created by Anton Kovalchuk on 29/10/2021.
//

import Foundation

/// Given an array, find the average of all contiguous subarrays of size ‘K’ in it.
class AverageOfSubarrayOfSizeK {

    static func findAverages(k: Int, arr: [Int]) -> [Double] {

        var windowStart = 0
        var windowSum = 0
        var result: [Double] = []

        for windowEnd in 0..<arr.count {

            windowSum += arr[windowEnd]

            if windowEnd >= k - 1 {

                result.append(Double(windowSum) / Double(k))
                windowSum -= arr[windowStart]
                windowStart += 1
            }
        }

        return result
    }
}
