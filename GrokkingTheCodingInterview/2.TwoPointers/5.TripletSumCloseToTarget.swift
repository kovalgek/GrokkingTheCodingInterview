//
//  5.TripletSumCloseToTarget.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import Foundation

/// Given an array of unsorted numbers and a target number, find a triplet in the array whose sum is as close to the target number as possible, return the sum of the triplet.
/// If there are more than one such triplet, return the sum of the triplet with the smallest sum.
class TripletSumCloseToTarget {

    static func searchTriplet(arr: inout [Int], targetSum: Int) -> Int {
        arr.sort()
        var smallestDiff = Int.max
        for i in 0..<arr.count - 2 {
            var left = i + 1
            var right = arr.count - 1
            while left < right {
                let targetDiff = targetSum - arr[i] - arr[left] - arr[right]
                if targetDiff == 0 {
                    return targetSum
                }

                if abs(targetDiff) < abs(smallestDiff) ||
                    (abs(targetDiff) == abs(smallestDiff) && targetDiff > smallestDiff) {
                    smallestDiff = targetDiff
                }

                if targetDiff > 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return smallestDiff
    }
}
