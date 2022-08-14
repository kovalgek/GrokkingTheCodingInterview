//
//  4.LongestSubstringKDistinct.swift
//  GrokkinPatterns
//
//  Created by Anton Kovalchuk on 29/10/2021.
//

import Foundation

/// Given a string, find the length of the longest substring in it with no more than K distinct characters.
class LongestSubstringKDistinct {

    static func findLength(str: String, k: Int) -> Int {

        var windowStart = 0
        var maxLenght = 0
        var charFrequencyMap: [Character : Int] = [:]

        for windowEnd in 0..<str.count {

            let rightCharacter = str[str.index(str.startIndex, offsetBy: windowEnd)]
            charFrequencyMap[rightCharacter, default: 0] += 1

            while charFrequencyMap.count > k {

                let leftChar = str[str.index(str.startIndex, offsetBy: windowStart)]

                charFrequencyMap[leftChar, default: 0] -= 1

                if charFrequencyMap[leftChar]! == 0 {
                    charFrequencyMap.removeValue(forKey: leftChar)
                }

                windowStart += 1
            }
            maxLenght = max(maxLenght, windowEnd - windowStart + 1)
        }

        return maxLenght
    }
}
