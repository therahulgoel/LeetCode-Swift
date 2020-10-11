//
//  HeapSort.swift
//  iOSPOC
//
//  Created by Rahul Goel on 11/10/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

class HeapSort {
    var lastPos = -1
    func sortArray(_ nums: [Int]) -> [Int] {
        var arr = nums
        lastPos  = nums.count - 1
        //Create Heap out of it
        buildHeap(&arr)
        //Extract max n times
        for _ in 0..<nums.count{
            _ = extractMax(&arr)
        }
        return arr
    }
    
    //TIme : O(n)
    func buildHeap(_ arr: inout [Int]){
        //Start from the end of given array - Because all leaf nodes are alrady heapified
        let n = arr.count
        var i = n/2 - 1
        print(i)
        while i >= 0{
            topDownHeapify(&arr, i) //TO apply on every fuckin index
            i -= 1
        }
    }
    func topDownHeapify(_ arr:inout [Int], _ i:Int){
        let root = i
        let left = 2*i + 1
        let right = 2*i + 2
        var max = root
        let size = lastPos + 1
        if left < size && arr[max] < arr[left]   {
            max = left
        }
        if right < size && arr[max] < arr[right] {
            max = right
        }
        if max != root{
            arr.swapAt(max, root)
            topDownHeapify(&arr, max)
        }
    }
    func extractMax(_ arr: inout [Int])->Int{
        let max = arr[0]
        //Swap the last element to the root
        arr.swapAt(0, lastPos)
        lastPos -= 1
        topDownHeapify(&arr, 0) //Root needs to heapified
        return max
    }
}
