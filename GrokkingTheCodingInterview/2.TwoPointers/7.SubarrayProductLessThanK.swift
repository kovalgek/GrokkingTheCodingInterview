//
//  7.SubarrayProductLessThanK.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import Foundation

/// Given an array with positive numbers and a positive target number, find all of its contiguous subarrays whose product is less than the target number.
class SubarrayProductLessThanK {
    static func findSubarrays(arr: [Int], target: Int) -> [[Int]] {
        var subarrays: [[Int]] = []
        var left = 0
        var product = 1
        for right in 0..<arr.count {
            product *= arr[right]
            while product >= target && left < arr.count {
                product /= arr[left]
                left += 1
            }
            var temp: [Int] = []
            for i in stride(from: right, through: left, by: -1) {
                temp.insert(arr[i], at: 0)
                subarrays.append(temp)
            }
        }
        return subarrays
    }
}
