//
//  main.swift
//  MinmumOpration
//
//  Created by Nalin iOS Developer on 06/04/21.
//

import Foundation
class Solution {
    func minOperations(_ n: Int) -> Int {
        var arr = [Int]()
        var midValue = 0
        var oprationCount = 0
        ///`Create Array`
        for i in 0..<n {
            midValue += ((2 * i) + 1)
            arr.append((2 * i) + 1)
        }
        /// `Get Mid Value `
        midValue = midValue/n
        for num in arr {
            if num > (midValue-1) {
                break
            }
            oprationCount += (midValue-num)
        }
        return oprationCount
    }
}

