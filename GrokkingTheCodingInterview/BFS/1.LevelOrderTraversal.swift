//
//  LevelOrderTraversal.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 12/01/2022.
//

import Foundation

class LevelOrderTraversal {
    class TreeNode {
        var val: Int
        var left: TreeNode?
        var right: TreeNode?
        init(val: Int) {
            self.val = val
        }
    }

    var root: TreeNode?

    func traverse(root: TreeNode?) -> [[Int]] {

        guard let root = root else {
            return
        }

        var result: [[Int]] = []
        var queue: [TreeNode] = []
        queue.append(root)

        while !queue.isEmpty {

            var levelCount = queue.count
            var tempResult: [Int] = []

            while levelCount > 0 {

                let node = queue.removeFirst()

                tempResult.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }

                levelCount -= 1
            }

            result.append(tempResult)
        }
    }
}
