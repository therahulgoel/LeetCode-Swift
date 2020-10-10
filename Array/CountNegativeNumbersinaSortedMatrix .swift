//
//  CountNegativeNumbersinaSortedMatrix .swift
//  iOSPOC
//
//  Created by Rahul Goel  - @therahulgoel on 15/04/20.
//  Copyright © 2020 Rahul Goel  - @therahulgoel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/

func countNegatives(_ grid: [[Int]]) -> Int {
    var count = 0
    for row in grid {
        let arr = row.reversed()
        for ele in arr{
            if ele < 0{
                count += 1
            }
        }
    }
    return count
}

