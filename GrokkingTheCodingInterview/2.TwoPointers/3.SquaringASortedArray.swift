//
//  3.SquaringASortedArray.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 30/01/2022.
//

import Foundation

/// Given a sorted array, create a new array containing squares of all the numbers of the input array in the sorted order.
class SquaringASortedArray {
    static func makeSquares(arr: [Int]) -> [Int] {

        var leftIdx = 0
        var rightIdx = arr.count - 1

        var result: [Int] = Array(repeating: 0, count: arr.count)
        var resultIdx = arr.count - 1

        while leftIdx <= rightIdx {
            let leftSquare = arr[leftIdx] * arr[leftIdx]
            let rightSqaure = arr[rightIdx] * arr[rightIdx]
            if leftSquare > rightSqaure {
                result[resultIdx] = leftSquare
                leftIdx += 1
            } else {
                result[resultIdx] = rightSqaure
                rightIdx -= 1
            }
            resultIdx -= 1
        }

        return result
    }
}
