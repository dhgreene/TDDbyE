//
//  Frank.swift
//  TDDbyE
//
//  Created by David Greene on 7/14/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Franc : Equatable {
    var amount: Int
    
    init(amount:Int) {
        self.amount = amount
    }
    
    func times(multiplier:Int) -> Franc {
        return Franc(amount: amount * multiplier)
    }
}

func ==(lhs: Franc, rhs: Franc) -> Bool {
    return lhs.amount == rhs.amount
}
