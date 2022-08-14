//
//  2.HappyNumber.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 23/02/2022.
//

import Foundation

class HappyNumber {
    func find(num: Int) -> Bool {
        var slow = num
        var fast = num
        repeat {
            slow = findSquareSum(num: slow)
            fast = findSquareSum(num: findSquareSum(num: fast))
        } while slow != fast

        return slow == 1
    }

    func findSquareSum(num: Int) -> Int {
        var tempNum = num
        var result = 0
        while tempNum > 0 {
            let digit = tempNum % 10
            result += digit * digit
            tempNum /= 10
        }
        return result
    }
}
