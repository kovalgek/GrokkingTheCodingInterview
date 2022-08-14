//
//  4.PalindromicLinkedList.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 23/02/2022.
//

import Foundation

class PalindromicLinkedList {

    class ListNode {
        var value = 0
        var next: ListNode?

        init(value: Int) {
            self.value = value
        }
    }

    func isPalindrome(head: ListNode?) -> Bool {

        /// find middle
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        var headFirstHalf = head
        var headSecondHalf = reverse(slow)
        var copyHeadSecondHalf = headSecondHalf

        while headFirstHalf != nil && headSecondHalf != nil {
            if headFirstHalf != headSecondHalf {
                break
            }
            headFirstHalf = headFirstHalf?.next
            headSecondHalf = headSecondHalf?.next
        }

        reverse(copyHeadSecondHalf)

        return headFirstHalf == nil || headSecondHalf == nil
    }

    func reverse(_ node: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var currentNode = node
        while currentNode != nil {
            var next = currentNode?.next
            currentNode?.next = prev
            prev = currentNode
            currentNode = next
        }
        return prev
    }
}
