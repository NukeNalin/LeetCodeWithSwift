//
//  main.swift
//  DesignCircularQueue
//
//  Created by Nalin iOS Developer on 04/04/21.
//

import Foundation

/// `MyCircularQueue`
class MyCircularQueue {
    
    var queue: [Int] = []
    var length = 0
    var rear = 0
    var front = 0
    var numberOfElemnts = 0
    
    init(_ k: Int) {
        length = k
        for _ in 1...length {
            queue.append(-1)
        }
        print(queue)
    }
    
    func enQueue(_ value: Int) -> Bool {
        
        if isFull(){
            return false
        }
        if isEmpty() {
            rear = 0
            front = 0
            queue[rear] = value
            numberOfElemnts += 1
            return true
        }
        rear += 1
        if rear > (length-1) {
            rear = 0
        }
        numberOfElemnts += 1
        queue[rear] = value
        return true
    }
    
    func deQueue() -> Bool {
        if isEmpty() {
            return false
        }
        queue[front] = -1
        numberOfElemnts -= 1
        front += 1
        if front > (length-1) {
            front = 0
        }
        return true
    }
    
    func Front() -> Int {
        return queue[front]
    }
    
    func Rear() -> Int {
        return queue[rear]
    }
    
    func isEmpty() -> Bool {
       return numberOfElemnts == 0
    }
    
    func isFull() -> Bool {
        length == numberOfElemnts
    }
}
