//
//  5.RearrangeList.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 23/02/2022.
//

import Foundation

class RearrangeList {

    class ListNode {
        var value = 0
        var next: ListNode?

        init(value: Int) {
            self.value = value
        }
    }

    func reorder(head: ListNode?) {

        var slow = head
        var fast = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        var headOfFirstHalf = head
        var headOfSecondHalf = reverse(slow)

        while headOfFirstHalf != nil && headOfSecondHalf != nil {
            var nextFist = headOfFirstHalf?.next
            headOfFirstHalf?.next = headOfSecondHalf
            headOfFirstHalf = nextFist

            var nextSecond = headOfSecondHalf?.next
            headOfSecondHalf?.next = headOfFirstHalf
            headOfSecondHalf = nextSecond
        }

        if headOfFirstHalf != nil {
            headOfFirstHalf?.next = nil
        }
    }

    func reverse(node: ListNode?) {
        var prev: ListNode? = nil
        var currentNode = node
        while currentNode != nil {
            let next = currentNode?.next
            currentNode?.next = prev
            prev = currentNode
            currentNode = next
        }
    }
}
