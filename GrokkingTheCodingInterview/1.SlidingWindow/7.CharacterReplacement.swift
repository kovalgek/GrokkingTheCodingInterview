    //
//  7.CharacterReplacement.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 18/11/2021.
//

import Foundation

class CharacterReplacement {

    static func hasAtMostTwoDistinctCharacters(_ characterFrequency: [Character: Int]) -> Bool {

        var numberOfOneSizeElements = 0
        for (_, frequency) in characterFrequency {
            if frequency == 1 {
                numberOfOneSizeElements += 1
            }
        }
        return numberOfOneSizeElements >= 2
    }

    static func findLength(str: String, k: Int) -> Int {

        var characterFrequency: [Character: Int] = [:]
        var windowStart = 0
        var maxLenght = 0

        for windowEnd in 0..<str.count {

            let characterRight = str[str.index(str.startIndex, offsetBy: windowEnd)]

            while characterFrequency.count > 3 && hasAtMostTwoDistinctCharacters(characterFrequency) {

                let characterLeft = str[str.index(str.startIndex, offsetBy: windowStart)]
                characterFrequency[characterLeft, default: 0] -= 1
                windowStart += 1
            }
            maxLenght = max(maxLenght, windowEnd - windowStart + 1)
            characterFrequency[characterRight, default: 0] += 1
        }

        return maxLenght
    }
}
