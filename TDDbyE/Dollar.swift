//
//  Dollar.swift
//  TDDbyE
//
//  Created by David Greene on 7/13/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Dollar {
    var amount: Int
    
    init(amount:Int) {
        self.amount = amount
    }
    
    func times(multiplier:Int) -> Dollar {
        return Dollar(amount: amount * multiplier)
    }
    
    func equals(object:AnyObject) -> Bool {
        let dollar = object as! Dollar
        return amount == dollar.amount
    }
}