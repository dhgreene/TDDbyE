//
//  Money.swift
//  TDDbyE
//
//  Created by David Greene on 7/14/16.
//  Copyright © 2016 David Greene. All rights reserved.
//

import Foundation

class Money: Equatable {
    var amount: Int
    var currency: String

    init(amount:Int, currency:String) {
        self.amount = amount
        self.currency = currency
    }
    
    // Abstract implementation
    func times(multiplier:Int) -> Money! {
        return Money(amount: multiplier * amount, currency: currency)
    }
    
    static func dollar(amount:Int) -> Money {
        return Money(amount: amount, currency: "USD")
    }
    
    static func franc(amount:Int) -> Money {
        return Money(amount: amount, currency: "CHF")
    }
}

func ==(lhs: Money, rhs: Money) -> Bool {
    return
        lhs.amount == rhs.amount &&
        lhs.currency == rhs.currency
}