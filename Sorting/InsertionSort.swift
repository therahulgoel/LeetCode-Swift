//
//  InsertionSort.swift
//  iOSPOC
//
//  Created by Rahul Goel on 11/10/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

/*
 Insertion Sort : Works the way we sort playing cards in our hands
 Time : O(n^2)
 */
func insertion_sortArray(arr:[Int])->[Int]{
    var results:[Int] = arr
    var j = 0
    for i in 1..<results.count {
        j = i-1
        while j >= 0 && results[i] < results[j] {
            j -= 1
        }
        let el = results[i]
        results.remove(at: i)
        results.insert(el, at: j+1)
    }
    return results
}
