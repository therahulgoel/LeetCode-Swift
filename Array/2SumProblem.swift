//
//  2SumProblem.swift
//  iOSPOC
//
//  Created by Rahul Goel on 14/12/20.
//  Copyright © 2020 Rahul Goel. All rights reserved.
//

import Foundation

func twoSum_(_ nums: [Int], _ target: Int) -> [Int] {
    var index = 0
    var map:[Int:Int] = [Int:Int]()
    
    while  index < nums.count{
        
        let diff = target - nums[index]
        if let inded = map[nums[index]]{
            return [inded,index]
        }else{
            map[diff] = index
        }
        index += 1
    }
    return []
}
