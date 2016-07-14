//
//  Bank.swift
//  TDDbyE
//
//  Created by David Greene on 7/14/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Bank {
    private var rates = [Pair: Int]()
    
    func reduce(source:Expression, to:String) -> Money {
        return source.reduce(self, to: to)
    }
    
    func rate(from:String, to:String) -> Int {
        if (from == to) { return 1 }
        let result = rates[Pair(from: from, to: to)]
        return (result == nil) ? 0 : result!
    }
    
    func addRate(from:String, to:String, rate:Int) {
        rates[Pair(from: from, to: to)] = Int(rate)
    }
}