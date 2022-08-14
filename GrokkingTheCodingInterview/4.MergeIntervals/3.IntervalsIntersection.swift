//
//  3.IntervalsIntersection.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 02/03/2022.
//

import Foundation

class IntervalsIntersection {

    struct Interval: Equatable {
        var start: Int
        var end: Int
    }

    func merge(arr1: [Interval], arr2: [Interval]) -> [Interval] {
        var result: [Interval] = []

        var i = 0
        var j = 0

        while i < arr1.count && j < arr2.count {
            if arr1[i].start >= arr2[j].start && arr1[i].start <= arr2[j].end ||
                arr2[j].start >= arr1[i].start && arr2[j].start <= arr1[i].end {
                result.append(max(arr1[i].start, arr2[j].start), min(arr1[i].end, arr2[j].end))
            }
            if arr1[i].end  < arr2[j].end {
                i+=1
            } else {
                j+=1
            }
        }

        return result
    }


}
