//
//  ReverseInteger.swift
//  iOSPOC
//
//  Created by Rahul Goel  - @therahulgoel on 01/01/20.
//  Copyright © 2020 Rahul Goel  - @therahulgoel. All rights reserved.
//

import Foundation

/*
    https://leetcode.com/problems/reverse-integer/
    Given a 32-bit signed integer, reverse digits of an integer.
*/

    func reverseString(_ s: inout [Character]) {
        var index = 0
        let length = s.count
        var tmp:Character
        while  index < length/2{
            tmp = s[index]
            s[index] = s[length - index - 1]
            s[length - index - 1] = tmp
            index = index + 1
        }
    }
    
     func reverse(_ x: Int) -> Int {
        var isNegative:Bool = false
        var y:Int = x
        if x < 0{
            isNegative = true
            y = -x
        }
        var str:[Character] = Array("\(y)")  // First Int to String Then to Array of Character
        reverseString(&str)
        let strRev = String(str)  //Again Back from Character Array to String
        
        if let strRev1 = Int(strRev){
            if isNegative {
                if (-strRev1 < -(Int(pow(Double(2), Double(31))))) {
                    return 0
                }else{
                    return -strRev1
                }
            }else{
                if (strRev1 > Int(pow(Double(2), Double(31)) - 1)) {
                    return 0
                }else{
                    return strRev1
                }
            }

        }
        return  0
    }
