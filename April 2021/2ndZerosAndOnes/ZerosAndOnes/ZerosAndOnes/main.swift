//
//  main.swift
//  ZerosAndOnes
//
//  Created by Nalin iOS Developer on 02/04/21.
//

/// `Zeros and Ones`
import Foundation

class Solution {
    // MARK: - findMaxForm
    func findMaxForm(_ strs: [String], _ m: Int, _ n: Int) -> Int {
        var m_n_Matrix = [[Int]]()
        var temArray = [Int]()
        for _ in 0...n{
            temArray.append(0)
        }
        for _ in 0...m{
            m_n_Matrix.append(temArray)
        }
        for str in strs{
            let zerosAndOnes = getCountOfZerosAndOnes(str)
            var zero = m
            while zero >= zerosAndOnes[0] {
                var once = n
                while once >= zerosAndOnes[1] {
                    m_n_Matrix[zero][once] = max(m_n_Matrix[zero-zerosAndOnes[0]][once-zerosAndOnes[1]] + 1, m_n_Matrix[zero][once])
                    once -= 1
                }
                zero -= 1
            }
        }
        return m_n_Matrix[m][n]
    }
    
    // MARK: - getCountOfZerosAndOnes
    func getCountOfZerosAndOnes(_ str: String) -> [Int] {
        var zeros = 0
        var onces = 0
        for char in str {
            if char == "0" {
                zeros += 1
            } else {
                onces += 1
            }
        }
        /// `Zeros on 0th index`
        /// `Ones on 1st Index`
        return [zeros,onces]
    }
}
