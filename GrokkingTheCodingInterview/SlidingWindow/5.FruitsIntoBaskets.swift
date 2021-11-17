//
//  5.FruitsIntoBaskets.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 06/11/2021.
//

import Foundation

/*
 Given an array of characters where each character represents a fruit tree, you are given two baskets,
 and your goal is to put maximum number of fruits in each basket.
 The only restriction is that each basket can have only one type of fruit.
 You can start with any tree, but you can’t skip a tree once you have started. You will pick one fruit from each tree until you cannot,
 i.e., you will stop when you have to pick from a third fruit type.
*/
class FruitsIntoBaskets {

    static func findLength(arr: String) -> Int {

        var characterFrequency: [Character: Int] = [:]
        var windowStart = 0
        var maxLenght = 0

        for windowEnd in 0..<arr.count {

            let rightCharacter = arr[arr.index(arr.startIndex, offsetBy: windowEnd)]

            characterFrequency[rightCharacter, default: 0] += 1

            while characterFrequency.count > 2 {

                let leftCharacter = arr[arr.index(arr.startIndex, offsetBy: windowStart)]
                characterFrequency[leftCharacter, default: 0] -= 1
                if characterFrequency[leftCharacter]! == 0 {
                    characterFrequency.removeValue(forKey: leftCharacter)
                }
                windowStart += 1
            }

            maxLenght = max(maxLenght, windowEnd - windowStart + 1)
        }

        return maxLenght
    }
}
