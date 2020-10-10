//
//  DesignBrowserHistory.swift
//  iOSPOC
//
//  Created by Rahul Goel  - @therahulgoel on 03/10/20.
//  Copyright © 2020 Rahul Goel  - @therahulgoel. All rights reserved.
//

import Foundation

//https://leetcode.com/problems/design-browser-history/

class BrowserHistory {

    var history:[String] = [String]()
    var current = 0
    
    init(_ homepage: String) {
        history = [homepage]
        current = 0
    }
    
    func visit(_ url: String) {
        if current == history.count - 1{
            history.append(url)
        }else{
            //Remove all forward history
            history.removeSubrange(current + 1...history.count - 1)
            history.append(url)
        }
        current += 1
    }
    
    func back(_ steps: Int) -> String {
        let diff = current - steps
        if diff >= 0{
            current = diff
            return history[diff]
        }else{
            current = 0
            return history[0]
        }
    }
    
    func forward(_ steps: Int) -> String {
        let sum = current + steps
        if sum >= history.count{
            current = history.count - 1
            return history.last ?? ""
        }else{
            current = sum
            return history[sum]
        }
    }
}

/*
        
"kttzxgh.com"

 "esgriv.com"  curr
 
 */
