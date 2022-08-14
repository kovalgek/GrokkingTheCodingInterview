//
//  2.RemoveDuplicates.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 29/01/2022.
//

import Foundation

/// Remove all duplicate number instances from it in-place, such that each element appears only once.
class RemoveDuplicates {
    
    static func remove(arr: inout [Int]) {

        var slowIdx = 0
        for fastIdx in 1..<arr.count {
            // Continue if elements equal in order to interate further
            if arr[slowIdx] == arr[fastIdx] {
                continue
            // Here we cover two cases
            // One when copy in the same element
            // Another when we skiped some equal element and copy
            } else {
                slowIdx += 1
                arr[slowIdx] = arr[fastIdx]
            }
        }
        arr.removeSubrange(slowIdx+1..<arr.count)
    }

    static func remove(arr: inout [Int], key: Int) {

        var slowIdx = 0
        for fastIdx in 0..<arr.count {
            // Continue if elements equal in order to interate further
            if key == arr[fastIdx] {
                continue
            } else {
                arr[slowIdx] = arr[fastIdx]
                slowIdx += 1
            }
        }
    }
}
