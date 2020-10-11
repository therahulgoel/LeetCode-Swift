//
//  SelectionSort.swift
//  iOSPOC
//
//  Created by Rahul Goel on 11/10/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 Selection Sort :
 In Every iteration Selects Minimum and swap it with element starting from left and do it upto n times
 Time : O(n^2)
 */
func selection_sortArray(arr:[Int])->[Int]{
    var result:[Int] = arr
    var i = 0, j = 0, minIndex = 0
    while  i < result.count {
        
        //Find Minimum in every pass
        j = i
        minIndex = i
        while j < result.count {
            if result[minIndex] > result[j] {
                minIndex = j
            }
            j += 1
        }
        
        //Swap minIndex Element Starting from i one by one
        let tmp = result[i]
        result[i] = result[minIndex]
        result[minIndex] = tmp
        i += 1
    }
    
    return result
}
