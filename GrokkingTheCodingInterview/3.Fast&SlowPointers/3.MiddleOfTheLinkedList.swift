//
//  MiddleOfTheLinkedList.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 23/02/2022.
//

import Foundation

class MiddleOfTheLinkedList {
    class ListNode {
        var value = 0
        var next: ListNode?

        init(value: Int) {
            self.value = value
        }
    }

    func findMiddle(head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
}
