//
//  6.TripletWithSmallerSum.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import Foundation

/// Given an array arr of unsorted numbers and a target sum, count all triplets in it such that arr[i] + arr[j] + arr[k] < target
/// where i, j, and k are three different indices. Write a function to return the count of such triplets.
class TripletWithSmallerSum {
    static func searchTriplets(arr: inout [Int], target: Int) -> Int {
        arr.sort()
        var count = 0
        for i in 0..<arr.count - 2 {
            count += searchPair(arr: arr, targetSum: target - arr[i], first: i)
        }
        return count
    }
    static private func searchPair(arr: [Int], targetSum: Int, first: Int) -> Int {
        var left = first + 1
        var right = arr.count - 1
        var count = 0
        while left < right {
            if arr[left] + arr[right] < targetSum {
                count += right - left
                left += 1
            } else {
                right -= 1
            }
        }
        return count
    }
}
