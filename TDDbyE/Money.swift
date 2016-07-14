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

    init(amount:Int) {
        self.amount = amount
    }
    
    // Abstract implementation
    func times(multiplier:Int) -> Money! {
        return nil
    }
    
    static func dollar(amount:Int) -> Dollar {
        return Dollar(amount: amount)
    }
    
    static func franc(amount:Int) -> Franc {
        return Franc(amount: amount)
    }
}

func ==(lhs: Money, rhs: Money) -> Bool {
    return
        lhs.amount == rhs.amount &&
        Mirror(reflecting: lhs).subjectType == Mirror(reflecting: rhs).subjectType
}