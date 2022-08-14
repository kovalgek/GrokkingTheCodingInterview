//
//  MaximumCPULoad.swift
//  GrokkingTheCodingInterview
//
//  Created by Anton Kovalchuk on 06/03/2022.
//

import Foundation

class MaximumCPULoad {

    struct Job {
        var start: Int
        var end: Int
        var cpuLoad: Int
    }

    class PriorityQueue<T> {

        private var queue: [T] = []
        private let condition: (T, T) -> Bool

        init(condition: @escaping (T, T) -> Bool) {
            self.condition = condition
        }

        func offer(_ item: T) {
            queue.append(item)
            queue.sort { left, right in
                condition(left, right)
            }
        }

        func peek() -> T {
            queue.first!
        }

        func poll() -> T {
            queue.removeFirst()
        }

        var isEmpty: Bool {
            get {
                return size == 0
            }
        }

        var size: Int {
            get {
                queue.count
            }
        }
    }

    func findMaxCPULoad(jobs: [Job]) -> Int {

        var minHeap = PriorityQueue<Job> { $0.start < $1.start }
        var maxCPULoad = 0
        var currentCPULoad = 0

        for job in jobs {

            while !minHeap.isEmpty && job.start > minHeap.peek().end {
                currentCPULoad -= minHeap.poll().cpuLoad
            }

            minHeap.offer(job)
            currentCPULoad += job.cpuLoad

            maxCPULoad = max(maxCPULoad, currentCPULoad)
        }

        return maxCPULoad
    }
}
