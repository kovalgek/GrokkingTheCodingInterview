//
//  4.LongestSubstringKDistinct.swift
//  GrokkinPatterns
//
//  Created by Anton Kovalchuk on 29/10/2021.
//

import Foundation

class LongestSubstringKDistinct {

    static func findLength(str: String, k: Int) -> Int {


        var windowStart = 0

        var resString = ""
        var hash: [Character : Int] = [:]

        for windowEnd in 0..<str.count {

            let ch = str[str.index(str.startIndex, offsetBy: windowEnd)]

            if hash[ch] != nil {
                hash[ch]! += 1
            } else {
                hash[ch] = 1
            }

            resString.append(str[str.index(str.startIndex, offsetBy: windowEnd)])



        }

        return 0
    }
}
