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
}

func ==(lhs: Money, rhs: Money) -> Bool {
    return
        lhs.amount == rhs.amount &&
        Mirror(reflecting: lhs).subjectType == Mirror(reflecting: rhs).subjectType
}