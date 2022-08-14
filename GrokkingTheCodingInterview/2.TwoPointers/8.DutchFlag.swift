//
//  8.DutchFlag.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 14/08/2022.
//

import Foundation

/// Given an array containing 0s, 1s and 2s, sort the array in-place. You should treat numbers of the array as objects, hence, we can’t count 0s, 1s, and 2s to recreate the array.
class DutchFlag {
    static func sort(arr: inout [Int]) {
        
        var i = 0
        var low = 0
        var high = arr.count - 1
        
        while i <= high {
            if arr[i] == 0 {
                arr.swapAt(i, low)
                i += 1
                low += 1
            } else if arr[i] == 1 {
                i += 1
            } else {
                arr.swapAt(i , high)
                high -= 1
            }
        }
    }
}
