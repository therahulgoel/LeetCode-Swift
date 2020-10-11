//
//  BubbleSort.swift
//  iOSPOC
//
//  Created by Rahul Goel on 11/10/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 Bubble Sort :
 In Every Pass one Element will be its right position or Bubble Out - Time O(n*n)
 */
func bubble_sortArray(_ nums: [Int]) -> [Int] {
    var arr1 = nums
    var swpaped:Bool = false
    var i = 0, j = 0
    
    while i < arr1.count - 1 {
        
        swpaped = false
        j = 0
        
        while j < arr1.count - 1 - i {
            
            //Swap The Numbers
            if arr1[j] > arr1[j+1] {
                let tmp = arr1[j]
                arr1[j] = arr1[j+1]
                arr1[j+1] = tmp
                swpaped = true
            }
            j = j + 1
        }
        
        //If Inner loop Does'nt swap not even once, Break No Need to go on
        if swpaped == false {
            break
        }
        
        i = i + 1
    }
    return arr1
}

