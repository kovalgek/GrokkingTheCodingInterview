//
//  6.NoRepeatSubstring.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 06/11/2021.
//

import Foundation

/// Given a string, find the length of the longest substring, which has all distinct characters.
class NoRepeatSubstring {

    static func findLength(str: String) -> Int {

        var maxLenght = 0
        var windowStart = 0
        var charIndexMap: [Character: Int] = [:]

        for windowEnd in 0..<str.count {

            let rightCharacter = str[str.index(str.startIndex, offsetBy: windowEnd)]

            if let index = charIndexMap[rightCharacter] {
                windowStart = max(windowStart, index + 1)
            }
            charIndexMap[rightCharacter] = windowEnd
            maxLenght = max(maxLenght, windowEnd - windowStart + 1)
        }

        return maxLenght
    }
}
