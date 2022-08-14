//
//  6.CycleInACircularArray.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 23/02/2022.
//

import Foundation

class CircularArrayLoop {
    func loopExists(arr: [Int]) -> Bool {
        for i in 0..<arr.count {
            let isForward = arr[i] >= 0
            var slow = i
            var fast = i

            repeat {
                slow = findNextIndex(arr: arr, isForward: isForward, currentIndex: slow)
                fast = findNextIndex(arr: arr, isForward: isForward, currentIndex: fast)
                if fast != -1 {
                    fast = findNextIndex(arr: arr, isForward: isForward, currentIndex: fast)
                }
            } while slow != -1 && fast != -1 && slow != fast

            if slow != -1 && slow == fast {
                return true
            }
        }
        return false
    }

    private func findNextIndex(arr: [Int], isForward: Bool, currentIndex: Int) -> Int {
        let direction = arr[currentIndex] >= 0
        if isForward != direction {
            return -1
        }

        var nextIndex = (currentIndex + arr[currentIndex]) % arr.count
        if nextIndex < 0 {
            nextIndex += arr.count
        }

        if currentIndex == nextIndex {
            return -1
        }

        return nextIndex
    }
}
