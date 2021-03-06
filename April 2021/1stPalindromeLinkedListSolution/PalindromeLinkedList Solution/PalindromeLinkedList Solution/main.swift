//
//  main.swift
//  PalindromeLinkedList Solution
//
//  Created by Nalin iOS Developer on 01/04/21.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil { return false }
        var currentNode = head
        var headString = String()
        var reverString = String()
        while currentNode != nil {
            headString = headString + "\(currentNode!.val)"
            reverString = "\(currentNode!.val)" + reverString
            currentNode = currentNode!.next
        }
        return headString == reverString
    }
}

