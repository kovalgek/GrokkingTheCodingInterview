//
//  LinkedListCycleTests.swift
//  Tests
//
//  Created by Anton Kovalchuk on 22/02/2022.
//

import XCTest

class LinkedListCycleTests: XCTestCase {

    func test() {
        let head = LinkedListCycle.ListNode(value: 1)
        head.next = LinkedListCycle.ListNode(value: 2)
        head.next?.next = LinkedListCycle.ListNode(value: 3)
        head.next?.next?.next = LinkedListCycle.ListNode(value: 4)
        head.next?.next?.next?.next = LinkedListCycle.ListNode(value: 5)
        head.next?.next?.next?.next?.next = LinkedListCycle.ListNode(value: 6)
        let result1 = LinkedListCycle.hasCycle(head: head)
        XCTAssertFalse(result1)

        head.next?.next?.next?.next?.next?.next = head.next?.next;
        let result2 = LinkedListCycle.hasCycle(head: head)
        XCTAssertTrue(result2)
    }

}
