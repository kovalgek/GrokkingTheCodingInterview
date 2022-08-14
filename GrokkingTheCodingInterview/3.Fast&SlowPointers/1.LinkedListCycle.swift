//
//  1.LinkedListCycle.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 22/02/2022.
//

import Foundation

class LinkedListCycle {

    class ListNode {
        var value = 0
        var next: ListNode?

        init(value: Int) {
            self.value = value
        }
    }

    static func hasCycle(head: ListNode?) -> Bool {

        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next

            if slow === fast {
                return true
            }
        }

        return false
    }

    static func findCycleLength(head: ListNode?) -> Int {
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next

            if slow === fast {
                return calculateLength(slow)
            }
        }

        return 0
    }

    static func calculateLength(_ slow: ListNode?) -> Int {
        var count = 0
        var currentNode: ListNode? = slow
        repeat {
            count += 1
            currentNode = currentNode?.next
        } while currentNode !== slow
        return count
    }

    static func findCycleStart(head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head

        var listLength = 0
        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next

            if slow === fast {
                listLength = calculateLength(slow)
            }
        }

        return findStart(head: head, listLength: listLength)
    }

    static func findStart(head: ListNode?, listLength: Int) -> ListNode? {
        var ptr1 = head
        var ptr2 = head

        var i = listLength
        while i > 0 {
            ptr2 = ptr2?.next
            i -= 1
        }

        while ptr1 !== ptr2 {
            ptr1 = ptr1?.next
            ptr2 = ptr2?.next
        }

        return ptr1
    }
}
