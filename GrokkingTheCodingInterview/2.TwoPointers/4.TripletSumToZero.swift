//
//  4.TripletSumToZero.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import Foundation

/// Given an array of unsorted numbers, find all unique triplets in it that add up to zero.
class TripletSumToZero {

    static func searchTriplets(arr: inout [Int]) -> [[Int]] {

        var triplets: [[Int]] = []
        arr.sort()
        for i in 0..<arr.count - 2 {
            // skip same element to avoid duplicate triplets
            if i > 0 && arr[i] == arr[i-1] {
                continue
            }
            searchPair(arr: arr,
                       targetSum: -arr[i],
                       _left: i+1,
                       triplets: &triplets)
        }
        return triplets
    }

    static private func searchPair(arr: [Int],
                                   targetSum: Int,
                                   _left: Int,
                                   triplets: inout [[Int]]) {
        var left = _left
        var right = arr.count - 1
        while left < right {
            let sum = arr[left] + arr[right]
            if sum > targetSum {
                right -= 1
            } else if sum < targetSum {
                left += 1
            } else {  // found the triplet
                triplets.append([-targetSum, arr[left], arr[right]])
                left += 1
                right -= 1
                while left < right && arr[left] == arr[left - 1] {
                    left += 1   // skip same element to avoid duplicate triplets
                }
                while left < right && arr[right] == arr[right + 1] {
                    right -= 1  // skip same element to avoid duplicate triplets
                }
            }
        }
    }
}
