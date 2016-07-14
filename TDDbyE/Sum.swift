//
//  Sum.swift
//  TDDbyE
//
//  Created by David Greene on 7/14/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Sum : Expression {
    var augend:Money
    var addend:Money
    
    init(augend:Money, addend:Money){
        self.augend = augend
        self.addend = addend
    }
    
    func reduce(to:String) -> Money {
        let amount = augend.amount + addend.amount
        return Money(amount: amount, currency: to)
    }
}