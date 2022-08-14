//
//  3.Permutations.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 04/02/2022.
//

import Foundation

class Permutations {

    // Time complexity is O(N * N!)
    static func findPermutations(nums: [Int]) -> [[Int]] {

        var result: [[Int]] = []
        var permutations: [[Int]] = []
        permutations.append([])

        for num in nums {
            let n = permutations.count
            for i in 0..<n {
                var oldPermutation = permutations.removeFirst()

                for j in 0...oldPermutation.count {
                    var newPermutation: [Int] = oldPermutation //[j]
                    newPermutation.insert(num, at: j)
                    if j != oldPermutation.count {
                        permutations.append(newPermutation)
                    } else {
                        result.append(newPermutation)
                    }
                }
            }
        }

        return result
    }

    static func findPermutationsBacktracking(_ nums: inout [Int]) -> [[Int]] {
        var result: [[Int]] = []
        backtrack(&nums, &result, 0)
        return result
    }

    static private func backtrack(_ nums: inout [Int], _ output: inout [[Int]], _ startFrom: Int) {
        guard startFrom != nums.count else {
            output.append(nums)
            return
        }
        for i in startFrom..<nums.count {
            nums.swapAt(startFrom, i)
            backtrack(&nums, &output, startFrom + 1)
            nums.swapAt(startFrom, i)
        }
    }

    static func findPermutationsBacktrackingWithDuplicates(_ nums: inout [Int]) -> [[Int]] {

        var counter: [Int: Int] = [:]
        for num in nums {
            if counter[num] != nil {
                counter[num]! += 1
            }
            counter[num] = 1
        }
        var comb: [Int] = []
        var output: [[Int]] = []
        backtrackForDuplicates(&comb, n: nums.count, &output, &counter)
        return output
    }

    static func backtrackForDuplicates(_ comb: inout [Int], n: Int, _ output: inout [[Int]], _ counter: inout [Int: Int]) {
        guard comb.count != n else {
            output.append(comb)
            return
        }

        for (key, value) in counter {
            guard value != 0 else {
                continue
            }
            comb.append(key)
            counter[key]! -= 1
            backtrackForDuplicates(&comb, n: n, &output, &counter)
            comb.removeLast()
            counter[key] = value
        }
    }

}
